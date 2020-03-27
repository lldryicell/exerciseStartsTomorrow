package team.project.est.dto;

public class WorkVO {
	private String work_seq;
	private String user_id;
	private String work_start;
	private String work_end_date;
	private String work_inputed_date;
	private String work_alert_date;
	private String work_title;
	private double work_success_rate;
	private int work_priority;
	private boolean work_complete;

	public WorkVO(String work_seq, String user_id, String work_start, String work_end_date,
			String work_inputed_date, String work_alert_date, String work_title, double work_success_rate,
			int work_priority, boolean work_complete) {
		super();
		this.work_seq = work_seq;
		this.user_id = user_id;
		this.work_start = work_start;
		this.work_end_date = work_end_date;
		this.work_inputed_date = work_inputed_date;
		this.work_alert_date = work_alert_date;
		this.work_title = work_title;
		this.work_success_rate = work_success_rate;
		this.work_priority = work_priority;
		this.work_complete = work_complete;
	}

	public WorkVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getWork_seq() {
		return work_seq;
	}

	public void setWork_seq(String work_seq) {
		this.work_seq = work_seq;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getWork_start() {
		return work_start;
	}

	public void setWork_start(String work_start) {
		this.work_start = work_start;
	}

	public String getWork_end_date() {
		return work_end_date;
	}

	public void setWork_end_date(String work_end_date) {
		this.work_end_date = work_end_date;
	}

	public String getWork_inputed_date() {
		return work_inputed_date;
	}

	public void setWork_inputed_date(String work_inputed_date) {
		this.work_inputed_date = work_inputed_date;
	}

	public String getWork_alert_date() {
		return work_alert_date;
	}

	public void setWork_alert_date(String work_alert_date) {
		this.work_alert_date = work_alert_date;
	}

	public String getWork_title() {
		return work_title;
	}

	public void setWork_title(String work_title) {
		this.work_title = work_title;
	}

	public double getWork_success_rate() {
		return work_success_rate;
	}

	public void setWork_success_rate(double work_success_rate) {
		this.work_success_rate = work_success_rate;
	}

	public int getWork_priority() {
		return work_priority;
	}

	public void setWork_priority(int work_priority) {
		this.work_priority = work_priority;
	}

	public boolean isWork_complete() {
		return work_complete;
	}

	public void setWork_complete(boolean work_complete) {
		this.work_complete = work_complete;
	}

	@Override
	public String toString() {
		return "ProfileImageVo [work_seq=" + work_seq + ", user_id=" + user_id + ", work_start=" + work_start
				+ ", work_end_date=" + work_end_date + ", work_inputed_date=" + work_inputed_date + ", work_alert_date="
				+ work_alert_date + ", work_title=" + work_title + ", work_success_rate=" + work_success_rate
				+ ", work_priority=" + work_priority + ", work_complete=" + work_complete + "]";
	}

}
