package team.project.est.dto;

public class ProfileImageVO {
	private String image_seq;
	private String user_id;
	private String image_original_name;
	private String image_save_name;

	public ProfileImageVO(String image_seq, String user_id, String image_original_name, String image_save_name) {
		super();
		this.image_seq = image_seq;
		this.user_id = user_id;
		this.image_original_name = image_original_name;
		this.image_save_name = image_save_name;
	}

	public ProfileImageVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getImage_seq() {
		return image_seq;
	}

	public void setImage_seq(String image_seq) {
		this.image_seq = image_seq;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getImage_original_name() {
		return image_original_name;
	}

	public void setImage_original_name(String image_original_name) {
		this.image_original_name = image_original_name;
	}

	public String getImage_save_name() {
		return image_save_name;
	}

	public void setImage_save_name(String image_save_name) {
		this.image_save_name = image_save_name;
	}

	@Override
	public String toString() {
		return "ProfileImageVO [image_seq=" + image_seq + ", user_id=" + user_id + ", image_original_name="
				+ image_original_name + ", image_save_name=" + image_save_name + "]";
	}

}
