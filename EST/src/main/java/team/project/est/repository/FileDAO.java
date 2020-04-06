package team.project.est.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import team.project.est.dto.ProfileImageVO;

@Repository
public class FileDAO {

	@Autowired
	SqlSession session;

	public int inputProfilePhoto(ProfileImageVO img) {
		// TODO Auto-generated method stub
		int result = 0;
		FileMapper mapper = session.getMapper(FileMapper.class);
		
		try {
			result = mapper.uploadProfileImg(img);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return result;
	}

	public ProfileImageVO getProfileImage(String user_id) {
		// TODO Auto-generated method stub
		ProfileImageVO result = null;
		FileMapper mapper = session.getMapper(FileMapper.class);
		
		try {
			result = mapper.getProfileImage(user_id);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return result;
	}
	
	
}
