package entity;

import java.sql.Date;

public class LawInfo {
	private int id;
	private String title;
	private String law;
	private int law_id;
	private Date addtime;

	public LawInfo() {
	}

	public LawInfo(int id, String title, String law, int law_id, Date addtime) {
		super();
		this.id = id;
		this.title = title;
		this.law = law;
		this.law_id = law_id;
		this.addtime = addtime;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String gettitle() {
		return title;
	}

	public void settitle(String title) {
		this.title = title;
	}

	public String getLaw() {
		return law;
	}

	public void setLaw(String law) {
		this.law = law;
	}

	public int getLaw_id() {
		return law_id;
	}

	public void setLaw_id(int law_id) {
		this.law_id = law_id;
	}

	public Date getAddtime() {
		return addtime;
	}

	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}
}
