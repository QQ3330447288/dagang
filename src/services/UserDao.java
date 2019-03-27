package services;

import java.util.List;

import entity.Complaint;
import entity.JobApply;
import entity.JobInfo;
import entity.User;

public interface UserDao {
	boolean userLogin(User user);

//	 查询工作表信息，返回多个对象
	public List<JobInfo> queryJobInfo(int pageSize, int page);

//	查询工作表信息，返回多个对象
	public List<JobInfo> queryLawInfo(int pageSize, int page);

	public List<User> queryUserInfo(int pageSize, int page);

	public boolean addConplaintInfo(Complaint complaint);
//
	public boolean addJobApplyInfo(JobApply jobApply);

}
