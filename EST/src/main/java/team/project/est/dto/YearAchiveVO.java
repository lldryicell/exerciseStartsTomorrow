package team.project.est.dto;

public class YearAchiveVO {

	private String achive_seq;
	private String user_id;
	private String achive_title;
	private String achive_memo;
	private boolean achive_is_complete;
	private String achive_category;
	private String achive_exp_date;
	private String achive_alert_date;

	public YearAchiveVO(String achive_seq, String user_id, String achive_title, String achive_memo,
			boolean achive_is_complete, String achive_category, String achive_exp_date, String achive_alert_date) {
		super();
		this.achive_seq = achive_seq;
		this.user_id = user_id;
		this.achive_title = achive_title;
		this.achive_memo = achive_memo;
		this.achive_is_complete = achive_is_complete;
		this.achive_category = achive_category;
		this.achive_exp_date = achive_exp_date;
		this.achive_alert_date = achive_alert_date;
	}

	public YearAchiveVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getAchive_seq() {
		return achive_seq;
	}

	public void setAchive_seq(String achive_seq) {
		this.achive_seq = achive_seq;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getAchive_title() {
		return achive_title;
	}

	public void setAchive_title(String achive_title) {
		this.achive_title = achive_title;
	}

	public String getAchive_memo() {
		return achive_memo;
	}

	public void setAchive_memo(String achive_memo) {
		this.achive_memo = achive_memo;
	}

	public boolean isAchive_is_complete() {
		return achive_is_complete;
	}

	public void setAchive_is_complete(boolean achive_is_complete) {
		this.achive_is_complete = achive_is_complete;
	}

	public String getAchive_category() {
		return achive_category;
	}

	public void setAchive_category(String achive_category) {
		this.achive_category = achive_category;
	}

	public String getAchive_exp_date() {
		return achive_exp_date;
	}

	public void setAchive_exp_date(String achive_exp_date) {
		this.achive_exp_date = achive_exp_date;
	}

	public String getAchive_alert_date() {
		return achive_alert_date;
	}

	public void setAchive_alert_date(String achive_alert_date) {
		this.achive_alert_date = achive_alert_date;
	}

	@Override
	public String toString() {
		return "YearAchiveVO [achive_seq=" + achive_seq + ", user_id=" + user_id + ", achive_title=" + achive_title
				+ ", achive_memo=" + achive_memo + ", achive_is_complete=" + achive_is_complete + ", achive_category="
				+ achive_category + ", achive_exp_date=" + achive_exp_date + ", achive_alert_date=" + achive_alert_date
				+ "]";
	}

}
