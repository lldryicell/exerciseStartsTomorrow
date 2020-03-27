package team.project.est.dto;

public class UserVO {
	private String user_seq;
	private String user_id;
	private String user_pw;
	private String user_first_name;
	private String user_last_name;
	private String user_nick;
	private int user_age;
	private String user_gender;
	private String user_email;
	private boolean user_active;

	public UserVO(String user_seq, String user_id, String user_pw, String user_first_name, String user_last_name,
			String user_nick, int user_age, String user_gender, String user_email, boolean user_active) {
		super();
		this.user_seq = user_seq;
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_first_name = user_first_name;
		this.user_last_name = user_last_name;
		this.user_nick = user_nick;
		this.user_age = user_age;
		this.user_gender = user_gender;
		this.user_email = user_email;
		this.user_active = user_active;
	}

	public UserVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getUser_seq() {
		return user_seq;
	}

	public void setUser_seq(String user_seq) {
		this.user_seq = user_seq;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_first_name() {
		return user_first_name;
	}

	public void setUser_first_name(String user_first_name) {
		this.user_first_name = user_first_name;
	}

	public String getUser_last_name() {
		return user_last_name;
	}

	public void setUser_last_name(String user_last_name) {
		this.user_last_name = user_last_name;
	}

	public String getUser_nick() {
		return user_nick;
	}

	public void setUser_nick(String user_nick) {
		this.user_nick = user_nick;
	}

	public int getUser_age() {
		return user_age;
	}

	public void setUser_age(int user_age) {
		this.user_age = user_age;
	}

	public String getUser_gender() {
		return user_gender;
	}

	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public boolean getUser_active() {
		return user_active;
	}

	public void setUser_active(boolean user_active) {
		this.user_active = user_active;
	}

	@Override
	public String toString() {
		return "UserVO [user_seq=" + user_seq + ", user_id=" + user_id + ", user_pw=" + user_pw + ", user_first_name="
				+ user_first_name + ", user_last_name=" + user_last_name + ", user_nick=" + user_nick + ", user_age="
				+ user_age + ", user_gender=" + user_gender + ", user_email=" + user_email + ", user_active="
				+ user_active + "]";
	}

}
