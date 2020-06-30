package mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	@RequestMapping("test")
	public String fun(ModelMap mp) {
		System.out.println("test-----------------------------------");
		mp.addAttribute("city", "天津");
		return "testShow";
	}
}
