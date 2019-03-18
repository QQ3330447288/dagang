package entity;

public class LawInfoCate {
	private int id;
	private String cate;

	public LawInfoCate() {
	}

	public LawInfoCate(int id, String cate) {
		this.id = id;
		this.cate = cate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCate() {
		return cate;
	}

	public void setCate(String cate) {
		this.cate = cate;
	}
}
