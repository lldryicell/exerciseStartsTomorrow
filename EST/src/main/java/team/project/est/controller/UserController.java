package team.project.est.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import team.project.est.dto.UserVO;
import team.project.est.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService us;
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(UserVO user, HttpSession session, Model model) {
		UserVO result = us.searchUser(user);
		if (result == null) {//그런 유저 없습니다 떴을 때
			model.addAttribute("message", "login Failed");
			return "login";
		} else {//유저가 들어왔을 때
			session.setAttribute("user_seq", result.getUser_seq());
			session.setAttribute("user_id", result.getUser_id());
			session.setAttribute("user_first_name", result.getUser_first_name());
			session.setAttribute("user_last_name", result.getUser_last_name());
			session.setAttribute("user_nick", result.getUser_nick());
			session.setAttribute("user_age", result.getUser_age());
			session.setAttribute("user_gender", result.getUser_gender());
			session.setAttribute("user_email", result.getUser_email());
			return "redirect:indexPage";
		}
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session, Model model) {
		model.addAttribute("message", "logout Success");
		session.invalidate();
		return "login";
	}
	
	
}
