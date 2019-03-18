package entity;

import java.sql.Date;

public class JobApply {
	private int id;
	private int job_id;
	private String reason;
	private int user_id;
	private Date addtime;

	public JobApply() {
	}

	public JobApply(int id, int job_id, String reason, int user_id, Date addtime) {
		super();
		this.id = id;
		this.job_id = job_id;
		this.reason = reason;
		this.user_id = user_id;
		this.addtime = addtime;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getJob_id() {
		return job_id;
	}

	public void setJob_id(int job_id) {
		this.job_id = job_id;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public Date getAddtime() {
		return addtime;
	}

	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}
}
