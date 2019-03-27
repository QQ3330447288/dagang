package entity;

import java.sql.Date;

public class JobApply {
	private int id;
	private String Applicant;
	private int sexId;
	private String applyjob;
	private String reason;
	private Date addtime;

	public JobApply() {
	}

	public JobApply(int id, String applicant, int sexId, String applyjob, String reason, Date addtime) {
		super();
		this.id = id;
		Applicant = applicant;
		this.sexId = sexId;
		this.applyjob = applyjob;
		this.reason = reason;
		this.addtime = addtime;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getApplicant() {
		return Applicant;
	}

	public void setApplicant(String applicant) {
		Applicant = applicant;
	}

	public int getSexId() {
		return sexId;
	}

	public void setSexId(int sexId) {
		this.sexId = sexId;
	}

	public String getApplyjob() {
		return applyjob;
	}

	public void setApplyjob(String applyjob) {
		this.applyjob = applyjob;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public Date getAddtime() {
		return addtime;
	}

	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}
}
