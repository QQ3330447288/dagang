package services;

import java.util.List;

import entity.Admin;
import entity.Complaint;
import entity.JobCate;
import entity.JobInfo;
import entity.LawInfo;

public interface AdminDao {
	boolean userLogin(Admin admin);

	List<Complaint> queryAllComplaint(int pageSize, int page);

	Boolean addJobCate(JobCate jobCate);

	List<JobCate> queryJobCate(int pageSize, int page);

	Boolean addJobCate(JobInfo jobInfo);

	Boolean addLawInfo(LawInfo lawInfo);
	
	List<JobCate> queryApplyList(int pageSize, int page);
	
	

}
