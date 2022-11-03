package com.youngtvjobs.ycc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//게시판 컨트롤러
@Controller
public class BoardController
{

	@RequestMapping("/board/noticeBoard")
	public String noticeBoard()
	{
		return "board/noticeBoard";
	}

	@RequestMapping("/board/eventBoard")
	public String eventBoard()
	{
		return "board/eventBoard";
	}

	@RequestMapping("/board/postEdit")
	public String postEdit()
	{
		return "board/postEdit";
	}

	@RequestMapping("/board/writePage")
	public String writePage()
	{
		return "board/writePage";
	}

	@RequestMapping("/board/postView")
	public String postView()
	{
		return "board/postView";
	}
	
	@RequestMapping("/board/inquiryhistory")
	public String inquiryHistory() {
		return "board/inquiryHistory";
	}

}
