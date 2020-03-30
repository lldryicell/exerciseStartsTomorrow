package team.project.est;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "index";
	}
	
	@RequestMapping(value = "/indexPage", method = RequestMethod.GET)
	public String indexPage() {
		return "index";
	}
	
	@RequestMapping(value = "/loginPage", method = RequestMethod.GET)
	public String loginPage(HttpSession session) {
		session.invalidate();
		return "login";
	}
	
	@RequestMapping(value = "/signupPage", method = RequestMethod.GET)
	public String signupPage() {
		return "signup";
	}
	
}
