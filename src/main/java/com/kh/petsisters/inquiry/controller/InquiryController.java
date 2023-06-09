package com.kh.petsisters.inquiry.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.common.template.Pagination;
import com.kh.petsisters.inquiry.model.service.InquiryService;
import com.kh.petsisters.inquiry.model.vo.CSReply;
import com.kh.petsisters.inquiry.model.vo.Inquiry;
import com.kh.petsisters.member.model.vo.Member;

@Controller
public class InquiryController {
	
	@Autowired
	private InquiryService inquiryService;

	// 관리자용 1:1문의글 list
	@RequestMapping("all.in")
	public ModelAndView selectAdminInquiry(
			@RequestParam(value="cPage", defaultValue="1") int currentPage,
			ModelAndView mv,
			HttpSession session) {
		
		int userNo = ((Member)session.getAttribute("loginUser")).getUserNo();
		
		int listCount = inquiryService.selectAllCount();
		
		int pageLimit = 10;
		int boardLimit = 10;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		List<Inquiry> list = inquiryService.selectAdminInquiry(pi, userNo);
		
		mv.addObject("pi", pi)
		  .addObject("list", list)
		  .setViewName("inquiry/adminInquiryList");
		
		return mv;
	}
	
	// 1:1문의 리스트 조회	
	@RequestMapping("list.in")
	public ModelAndView selectList(
			@RequestParam(value="cPage", defaultValue="1") int currentPage,
			ModelAndView mv,
			HttpSession session) {
		
		int userNo = ((Member)session.getAttribute("loginUser")).getUserNo();
				
		int listCount = inquiryService.selectListCount(userNo);
		
		int pageLimit = 10;
		int boardLimit = 5;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		List<Inquiry> list = inquiryService.selectList(pi, userNo);
		
		mv.addObject("pi", pi)
		  .addObject("list", list)
		  .setViewName("inquiry/inquiryList");
		
		return mv;
	}
	
	// 1:1문의글 작성폼
	@RequestMapping("enrollForm.in")
	public String enrollForm() {
		
		return "inquiry/inquiryEnrollForm";
	}
		
	// 1:1문의 작성하기 
	@RequestMapping("insert.in")
	public String insertInquiry(Inquiry i, 
								MultipartFile upfile, 
								HttpSession session, 
								Model model) {
		
		if(!upfile.getOriginalFilename().equals("")) {
			
			String changeName = saveFile(upfile, session);
			i.setFilePath("/resources/upFiles/inquiry_upfiles/" + changeName);
			
		}
		
		System.out.println(i);
		
		int result = inquiryService.insertInquiry(i);
		
		if (result > 0) {
			
			session.setAttribute("message", "성공적으로 문의글을 등록했습니다.");
			return "redirect:/detail.in?inquiryNo=" + i.getInquiryNo();
			
		} else {
			
			model.addAttribute("errorMsg", "문의글 등록에 실패했습니다.");
			
			return "/common/errorPage";
		}
	}	
//	    try {
//	        if (upfile != null && !upfile.isEmpty()) {
//	            String filePath = session.getServletContext().getRealPath("/resources/upFiles/inquiry_upfiles/") + upfile.getOriginalFilename();
//	            upfile.transferTo(new File(filePath));
//	        }
//	    } catch (IOException e) {
//	        model.addAttribute("i", i);
//	        model.addAttribute("errorMsg", "업로드 실패");
//	        return "inquiry/inquiryEnrollForm";
//	    }
//	}
	
	// 1:1문의 상세 조회
	@RequestMapping("detail.in")
	public ModelAndView selectInquiry(ModelAndView mv, int inquiryNo) {
		
			Inquiry i = inquiryService.selectInquiry(inquiryNo);
			
			mv.addObject("i", i).setViewName("inquiry/inquiryDetail");
			
			// mv.addObject("errorMsg", "상세조회 실패").setViewName("notice/errorPage");
		
		return mv;
	}
	
	// 1:1문의 삭제
	@RequestMapping("delete.in")
	public String deleteInquiry(int inquiryNo, Model model, String filePath, HttpSession session) {
		
		int result = inquiryService.deleteInquiry(inquiryNo);
		
		if(result > 0) {
			
			session.setAttribute("message", "성공적으로 문의글을 삭제하였습니다.");
			
			Member loginUser = (Member) session.getAttribute("loginUser");
			
			if(loginUser.getUserNo() == 1) {
				return "redirect:/all.in?userNo=1&cPage=1";
			} else {
				return "redirect:/list.in?userNo=" + loginUser.getUserNo() + "&cPage=1";
			}
			
		} else {
			
			model.addAttribute("errorMsg", "문의글 삭제 실패");
			
			return "common/errorPage";
		}
	}
	
	// 댓글 리스트 조회 서비스 (Ajax)
	@ResponseBody
	@RequestMapping(value="rlist.in", produces="application/json; charset=UTF-8")
	public String ajaxSelectReplyList(int inquiryNo) {
		
		List<CSReply> list = inquiryService.selectReplyList(inquiryNo);

		return new Gson().toJson(list);
		
	}
	
	// 댓글 작성 서비스 (Ajax)
	@ResponseBody
	@RequestMapping(value="rinsert.in", produces="text/html; charset=UTF-8")
	public String ajaxInsertReply(CSReply r) {
		
		int result = inquiryService.insertReply(r);
		
		return (result > 0) ? "success" : "fail"; // 무조건 문자열 타입으로 응답데이터 리턴
	}
	
	// 첨부파일
	public String saveFile(MultipartFile upfile, HttpSession session) {
		
		String originName = upfile.getOriginalFilename();
		System.out.println(originName);
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		int ranNum = (int)(Math.random() * 90000 + 10000);
		
		String ext = originName.substring(originName.lastIndexOf("."));
		 
		String changeName = currentTime + ranNum + ext;
		
		String savePath = session.getServletContext().getRealPath("resources/upFiles/inquiry_upfiles/");
		
		try {
			upfile.transferTo(new File(savePath + changeName));
		} catch(IOException e) {
			e.printStackTrace();
		}
		
		return changeName;
	}
	
}
