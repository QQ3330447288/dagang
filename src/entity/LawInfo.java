package entity;

import java.sql.Date;

public class LawInfo {
	private int id;
	private String author;
	private String law;
	private int law_id;
	private Date addtime;

	public LawInfo() {
	}

	public LawInfo(int id, String author, String law, int law_id, Date addtime) {
		super();
		this.id = id;
		this.author = author;
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

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
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
