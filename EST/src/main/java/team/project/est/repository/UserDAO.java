package team.project.est.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import team.project.est.dto.UserVO;

@Repository
public class UserDAO {

	@Autowired
	SqlSession session;

	public UserVO searchUser(UserVO user) {
		// TODO Auto-generated method stub
		UserMapper mapper = session.getMapper(UserMapper.class);
		UserVO result = null;
		
		try {
			result = mapper.login(user);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return result;
	}

	public int signup(UserVO user) {
		// TODO Auto-generated method stub
		UserMapper mapper = session.getMapper(UserMapper.class);
		int result = 0;
		
		System.out.println(user);
		 
		try {
			result = mapper.signup(user);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return result;
	}
	
	
}
