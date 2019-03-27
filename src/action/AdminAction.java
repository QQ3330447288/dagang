package action;

import java.util.List;

import javax.jws.soap.SOAPBinding.Use;

import org.apache.struts2.interceptor.validation.SkipValidation;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import entity.Admin;
import entity.Complaint;
import entity.JobApply;
import entity.JobCate;
import entity.JobInfo;
import entity.LawInfo;
import entity.User;
import services.AdminDao;
import services.UserDao;
import services.impl.AdminDaoImpl;
import services.impl.UserDaoImpl;

public class AdminAction extends SuperAction implements ModelDriven<Admin> {
	private Admin admin = new Admin();

	public String login() {
		AdminDao ad = new AdminDaoImpl();
		if (ad.userLogin(admin)) {
			// �̳���SuperAction��SuperAction����web���ö���
			session.setAttribute("adminUserName", admin.getUsername());
			return SUCCESS;
		} else {
			return "failed";
		}
	}
	
	/**
	 * ע����¼
	 * @return String
	 */
	@SkipValidation
	public String logout() {
		if (session.getAttribute("adminUserName")!=null) 
			session.removeAttribute("adminUserName");
		return "logout_success";
	}
	
	/**
	 * ��ȡ�û��б�
	 * @return
	 */
	public String userList() {
		int pageSize = Integer.parseInt(request.getParameter("pageSize")) ;
		int page = Integer.parseInt(request.getParameter("page"));
		UserDao uDao = new UserDaoImpl();
		List<User> list = uDao.queryUserInfo(pageSize, page);
		if (list != null && list.size() > 0) {
			session.setAttribute("user_list", list);
		}
		return "query_user_success";
	}
	
	/**
	 * ��ѯͶ����Ϣ
	 * @return
	 */
	public String queryAllComplaint() {
		int pageSize = Integer.parseInt(request.getParameter("pageSize")) ;
		int page = Integer.parseInt(request.getParameter("page"));
		AdminDao adminDao = new AdminDaoImpl();
		List<Complaint> list = adminDao.queryAllComplaint(pageSize, page);
		if (list != null && list.size() > 0) {
			session.setAttribute("complaint_list", list);
		}
		return "query_complaint_success";
	}
	
	/**
	 * ��ӹ�������
	 * 
	 * @return
	 * @throws Exception
	 */
	public String addJobCate() throws Exception {
		JobCate jobcate = new JobCate();
		jobcate.setCataName(request.getParameter("cataname"));
		AdminDao adminDao = new AdminDaoImpl();
		adminDao.addJobCate(jobcate);
		return "addjobcate_success";
	}
	
	/**
	 * ��ѯ��������
	 * @return
	 */
	public String queryJobCate() {
		int pageSize = Integer.parseInt(request.getParameter("pageSize")) ;
		int page = Integer.parseInt(request.getParameter("page"));
		AdminDao adminDao = new AdminDaoImpl();
		List<JobCate> list = adminDao.queryJobCate(pageSize, page);
		if (list != null && list.size() > 0) {
			session.setAttribute("jobcate_list", list);
		}
		return "query_jobcate_success";
	}
	
	/**
	 * ����й���Ϣ
	 * 
	 * @return
	 * @throws Exception
	 */
	public String addJobInfo() throws Exception {
		JobInfo jobInfo = new JobInfo();
		jobInfo.setJobname(request.getParameter("jobname"));
		jobInfo.setRequireInfo(request.getParameter("requireInfo"));
//		System.out.println(jobInfo);
		AdminDao adminDao = new AdminDaoImpl();
		adminDao.addJobCate(jobInfo);
		return "addJobInfo_success";
	}
	
	
	/**
	 * �������ɷ���
	 * 
	 * @return
	 * @throws Exception
	 */
	public String addLawInfo() throws Exception {
		LawInfo lawInfo = new LawInfo();
		lawInfo.settitle(request.getParameter("title"));
		lawInfo.setLaw(request.getParameter("law"));
		AdminDao adminDao = new AdminDaoImpl();
		adminDao.addLawInfo(lawInfo);
		return "addLawInfo_success";
	}
	/**
	 * ��ѯ���������б�
	 * @return
	 */
	public String queryJobApplyList() {
		int pageSize = Integer.parseInt(request.getParameter("pageSize")) ;
		int page = Integer.parseInt(request.getParameter("page"));
		AdminDao adminDao = new AdminDaoImpl();
		List<JobCate> list = adminDao.queryApplyList(pageSize, page);
		if (list != null && list.size() > 0) {
			session.setAttribute("jobApply_list", list);
		}
		return "query_jobApply_success";
	}
	
	
	@Override
	public Admin getModel() {
		// TODO Auto-generated method stub
		return this.admin;
	}

}
