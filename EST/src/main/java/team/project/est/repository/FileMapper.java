package team.project.est.repository;

import team.project.est.dto.ProfileImageVO;

public interface FileMapper {

	public int uploadProfileImg(ProfileImageVO img);

	public ProfileImageVO getProfileImage(String user_id);

}
