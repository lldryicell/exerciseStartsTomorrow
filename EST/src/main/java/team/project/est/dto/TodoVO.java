package team.project.est.dto;

public class TodoVO {
	private String todo_seq;
	private String work_seq;
	private String todo_memo;
	private boolean todo_is_complete;

	public TodoVO(String todo_seq, String work_seq, String todo_memo, boolean todo_is_complete) {
		super();
		this.todo_seq = todo_seq;
		this.work_seq = work_seq;
		this.todo_memo = todo_memo;
		this.todo_is_complete = todo_is_complete;
	}

	public TodoVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getTodo_seq() {
		return todo_seq;
	}

	public void setTodo_seq(String todo_seq) {
		this.todo_seq = todo_seq;
	}

	public String getWork_seq() {
		return work_seq;
	}

	public void setWork_seq(String work_seq) {
		this.work_seq = work_seq;
	}

	public String getTodo_memo() {
		return todo_memo;
	}

	public void setTodo_memo(String todo_memo) {
		this.todo_memo = todo_memo;
	}

	public boolean isTodo_is_complete() {
		return todo_is_complete;
	}

	public void setTodo_is_complete(boolean todo_is_complete) {
		this.todo_is_complete = todo_is_complete;
	}

	@Override
	public String toString() {
		return "TodoVO [todo_seq=" + todo_seq + ", work_seq=" + work_seq + ", todo_memo=" + todo_memo
				+ ", todo_is_complete=" + todo_is_complete + "]";
	}

}
