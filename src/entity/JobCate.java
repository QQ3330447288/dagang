package entity;

public class JobCate {
	private int id;
	private String cataName;

	public JobCate() {
	}

	public JobCate(int id, String cataName) {
		super();
		this.id = id;
		this.cataName = cataName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCataName() {
		return cataName;
	}

	public void setCataName(String cataName) {
		this.cataName = cataName;
	}

}
