package com.youngtvjobs.ycc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class IndexController
{
	@RequestMapping("/")
	public String index()
	{
		return "index-1";
	}
	
	@RequestMapping("/map")
	public String map()
	{
		return "map_page/map";
	}

}
