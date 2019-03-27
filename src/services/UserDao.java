package services;

import java.util.List;

import entity.Complaint;
import entity.JobApply;
import entity.JobInfo;
import entity.User;

public interface UserDao {
	boolean userLogin(User user);

//	 ��ѯ��������Ϣ�����ض������
	public List<JobInfo> queryJobInfo(int pageSize, int page);

//	��ѯ��������Ϣ�����ض������
	public List<JobInfo> queryLawInfo(int pageSize, int page);

	public List<User> queryUserInfo(int pageSize, int page);

	public boolean addConplaintInfo(Complaint complaint);
//
	public boolean addJobApplyInfo(JobApply jobApply);

}
