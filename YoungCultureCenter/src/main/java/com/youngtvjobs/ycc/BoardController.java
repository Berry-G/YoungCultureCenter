package com.youngtvjobs.ycc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

	@RequestMapping("/board")
	@Controller
	public class BoardController {

		@RequestMapping("/noticeBoard")
		public String noticeBoard() {
			return "board/noticeBoard";
		}
		
		@RequestMapping("/eventBoard")
		public String eventBoard() {
			return "board/eventBoard";
		}
		
		@RequestMapping("/postEdite")
		public String postEdite() {
			return "board/postEdite";
		}
		
		@RequestMapping("/writePage")
		public String writePage() {
			return "board/writePage";
		}
	
	
}
