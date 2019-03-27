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
			// 继承了SuperAction，SuperAction中有web内置对象
			session.setAttribute("adminUserName", admin.getUsername());
			return SUCCESS;
		} else {
			return "failed";
		}
	}
	
	/**
	 * 注销登录
	 * @return String
	 */
	@SkipValidation
	public String logout() {
		if (session.getAttribute("adminUserName")!=null) 
			session.removeAttribute("adminUserName");
		return "logout_success";
	}
	
	/**
	 * 获取用户列表
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
	 * 查询投诉信息
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
	 * 添加工作分类
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
	 * 查询工作分类
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
	 * 添加招工信息
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
	 * 发布法律法规
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
	 * 查询工做申请列表
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
