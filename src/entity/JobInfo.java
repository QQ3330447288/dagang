package entity;

public class JobInfo {
	private int id;
	private String jobname;
	private String requireInfo;
	private int cate_id;

	public JobInfo() {
	}

	public JobInfo(int id, String jobname, String requireInfo, int cate_id) {
		super();
		this.id = id;
		this.jobname = jobname;
		this.requireInfo = requireInfo;
		this.cate_id = cate_id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getJobname() {
		return jobname;
	}

	public void setJobname(String jobname) {
		this.jobname = jobname;
	}

	public String getRequireInfo() {
		return requireInfo;
	}

	public void setRequireInfo(String requireInfo) {
		this.requireInfo = requireInfo;
	}

	public int getCate_id() {
		return cate_id;
	}

	public void setCate_id(int cate_id) {
		this.cate_id = cate_id;
	}
}
