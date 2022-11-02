package com.youngtvjobs.ycc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//게시판 컨트롤러
@Controller
public class BoardController
{

	@RequestMapping("/board/notice")
	public String noticeBoard()
	{
		return "board/notice";
	}

	@RequestMapping("/board/event")
	public String eventBoard()
	{
		return "board/event";
	}

	@RequestMapping("/board/edit")
	public String postEdit()
	{
		return "board/edit";
	}

	@RequestMapping("/board/write")
	public String writePage()
	{
		return "board/write";
	}

	@RequestMapping("/board/post")
	public String postView()
	{
		return "board/post";
	}

}
