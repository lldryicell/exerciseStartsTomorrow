package team.project.est.repository;

import team.project.est.dto.UserVO;

public interface UserMapper {

	public UserVO login(UserVO user);

	public int signup(UserVO user);

	public int updateUser(UserVO user);

}
