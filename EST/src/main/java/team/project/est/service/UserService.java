package team.project.est.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.project.est.dto.UserVO;
import team.project.est.repository.UserDAO;

@Service
public class UserService {

	@Autowired
	UserDAO ud;

	public UserVO searchUser(UserVO user) {
		// TODO Auto-generated method stub
		return ud.searchUser(user);
	}
	
	
}
