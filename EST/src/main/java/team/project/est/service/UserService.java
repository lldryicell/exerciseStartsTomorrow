package team.project.est.service;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import team.project.est.dto.ProfileImageVO;
import team.project.est.dto.UserVO;
import team.project.est.repository.FileDAO;
import team.project.est.repository.UserDAO;
import team.project.est.util.Utility;

@Service
public class UserService {

	@Autowired
	UserDAO ud;
	
	@Autowired
	FileDAO fd;
	
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

	public int uploadProfilePhoto(UserVO user, MultipartHttpServletRequest request, MultipartFile uploadFile) {
		// TODO Auto-generated method stub
		int result = 0;
		
		String uploadPath = request.getSession().getServletContext().getRealPath("/");
		ProfileImageVO img = new ProfileImageVO();
		
		img.setUser_id(user.getUser_id());
		img.setImage_seq(util.createSeq("file"));
		img.setImage_save_name(util.createSeq("file")+uploadFile.getOriginalFilename());
		img.setImage_original_name(uploadFile.getOriginalFilename());
		
		try {
			uploadFile.transferTo(new File(uploadPath+"resources/assets/images/profile/"+img.getImage_save_name()));
			System.out.println("imgData : "+img);
			result = fd.iniputProfilePhoto(img);//왜 여기서 널포인트익셉션? ㅅㅂ
			System.out.println("result : "+result);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return result;
	}

	public ProfileImageVO getPImageInfo(String user_id) {
		// TODO Auto-generated method stub
		ProfileImageVO result = null;
		
		result = fd.getPImageInfo(user_id);
		
		return result;
	}
	
	
	
	

}
