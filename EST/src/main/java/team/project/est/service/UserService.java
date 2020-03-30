package team.project.est.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.project.est.dto.UserVO;
import team.project.est.repository.UserDAO;
import team.project.est.util.Utility;

@Service
public class UserService {

	@Autowired
	UserDAO ud;
	
	Utility util = new Utility();

	public UserVO searchUser(UserVO user) {
		// TODO Auto-generated method stub
		return ud.searchUser(user);
	}

	public int signup(UserVO user) {
		// TODO Auto-generated method stub
		String user_seq = util.createSeq("user");
		
		user.setUser_seq(user_seq);
		user.setUser_active(true);
		
		return ud.signup(user);
	}
	
	
	
	

}
