package services;

import java.util.List;

import entity.JobInfo;
import entity.User;

public interface UserDao {
	boolean userLogin(User user);

//	 ��ѯ��������Ϣ�����ض������
	public List<JobInfo> queryJobInfo(int pageSize, int page);

//	��ѯ��������Ϣ�����ض������
	public List<JobInfo> queryLawInfo(int pageSize, int page);
}
