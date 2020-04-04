package team.project.est;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import team.project.est.dto.UserVO;


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
	
	@RequestMapping(value = "/chartPage", method = RequestMethod.GET)
	public String chartPage(UserVO user, RedirectAttributes redAtt) {
		System.out.println("home controller : "+user.getUser_id());
		redAtt.addFlashAttribute("data", user.getUser_id());
		return "redirect:/chart";
	}
	
}
