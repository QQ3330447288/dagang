package entity;

public class Complaint {
	private int id;
	private String complainant;
	private String complainObj;
	private String complainInfo;
	private String addtime;

	public Complaint() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Complaint(int id, String complainant, String complainObj, String complainInfo, String addtime) {
		super();
		this.id = id;
		this.complainant = complainant;
		this.complainObj = complainObj;
		this.complainInfo = complainInfo;
		this.addtime = addtime;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getComplainant() {
		return complainant;
	}

	public void setComplainant(String complainant) {
		this.complainant = complainant;
	}

	public String getComplainObj() {
		return complainObj;
	}

	public void setComplainObj(String complainObj) {
		this.complainObj = complainObj;
	}

	public String getComplainInfo() {
		return complainInfo;
	}

	public void setComplainInfo(String complainInfo) {
		this.complainInfo = complainInfo;
	}

	public String getAddtime() {
		return addtime;
	}

	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}

}
