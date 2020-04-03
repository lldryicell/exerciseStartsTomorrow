package team.project.est.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

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
			//String profile_image_save_name = us.getPImageInfo(result.getUser_id()).getImage_save_name();
			
			session.setAttribute("user_seq", result.getUser_seq());
			session.setAttribute("user_id", result.getUser_id());
			session.setAttribute("user_first_name", result.getUser_first_name());
			session.setAttribute("user_last_name", result.getUser_last_name());
			session.setAttribute("user_nick", result.getUser_nick());
			session.setAttribute("user_age", result.getUser_age());
			session.setAttribute("user_gender", result.getUser_gender());
			session.setAttribute("user_email", result.getUser_email());
			//session.setAttribute("profile_image_save_name", profile_image_save_name);
			return "redirect:indexPage";
		}
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session, Model model) {
		model.addAttribute("message", "logout Success");
		session.invalidate();
		return "login";
	}
	
	@RequestMapping(value = "/signupNew", method = RequestMethod.POST)
	public String signupNew(UserVO user, Model model, MultipartHttpServletRequest request, MultipartFile uploadFile) {
		
		int result = us.signup(user);
		if (result==1&&us.uploadProfilePhoto(user, request, uploadFile)==1) {
			model.addAttribute("message", "Signup Success");
			return "login";
		} else {
			model.addAttribute("message", "Signup Failed. Try Agane!");
			return "signup";
		}
	}
	

	//----------------<JQuery>----------------//
	
	@RequestMapping(value = "/idChk", method = RequestMethod.POST)
	@ResponseBody
	public String loginCheck(UserVO user_id) {
		
		UserVO result = us.searchUser(user_id);
		
		if (result==null) {//입력한 아이디에 맞는 계정이 존재 하지 않을 경우
			return "available";
		} else {
			return "nonAvailable";
		}
	}
	
	
}
