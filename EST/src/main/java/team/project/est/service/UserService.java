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

		if(uploadFile != null) {
			String uploadPath = request.getSession().getServletContext().getRealPath("/");
			ProfileImageVO img = new ProfileImageVO();
			String seq = util.createSeq("file");
			
			img.setUser_id(user.getUser_id());
			img.setImage_seq(seq);
			img.setImage_save_name(seq+uploadFile.getOriginalFilename());
			img.setImage_original_name(uploadFile.getOriginalFilename());
			
			try {
				uploadFile.transferTo(new File(uploadPath+"resources/assets/images/profile/"+img.getImage_save_name()));
				result = fd.inputProfilePhoto(img);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		
		return result;
	}

	public ProfileImageVO getProfileImage(String user_id) {
		// TODO Auto-generated method stub
		ProfileImageVO result = null;
		
		result = fd.getProfileImage(user_id);
		
		return result;
	}

	public int updateUser(UserVO user) {
		// TODO Auto-generated method stub
		return ud.updateUser(user);
	}

	public int updateProfilePhoto(UserVO user, MultipartHttpServletRequest request, MultipartFile uploadFile) {
		// TODO Auto-generated method stub
		int result = 0;
		
		ProfileImageVO isExist = null;
		
		isExist = fd.getProfileImage(user.getUser_id());
		
		if (isExist!=null) {
			if(uploadFile != null) {
				String uploadPath = request.getSession().getServletContext().getRealPath("/");
				ProfileImageVO img = new ProfileImageVO();
				String seq = util.createSeq("file");
				
				img.setUser_id(user.getUser_id());
				img.setImage_seq(seq);
				img.setImage_save_name(seq+uploadFile.getOriginalFilename());
				img.setImage_original_name(uploadFile.getOriginalFilename());
				
				try {
					uploadFile.transferTo(new File(uploadPath+"resources/assets/images/profile/"+img.getImage_save_name()));
					result = fd.updateProfilePhoto(img); //update
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		} else {
			if(uploadFile != null) {
				String uploadPath = request.getSession().getServletContext().getRealPath("/");
				ProfileImageVO img = new ProfileImageVO();
				String seq = util.createSeq("file");
				
				img.setUser_id(user.getUser_id());
				img.setImage_seq(seq);
				img.setImage_save_name(seq+uploadFile.getOriginalFilename());
				img.setImage_original_name(uploadFile.getOriginalFilename());
				
				try {
					uploadFile.transferTo(new File(uploadPath+"resources/assets/images/profile/"+img.getImage_save_name()));
					result = fd.inputProfilePhoto(img); //insert
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		}
		
		
		return result;
	}
	
	
	
	

}
