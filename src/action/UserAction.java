package action;

import java.text.SimpleDateFormat;
import org.apache.struts2.interceptor.validation.SkipValidation;
import com.opensymphony.xwork2.ModelDriven;
import entity.Complaint;
import entity.JobApply;
import entity.User;
import services.UserDao;
import services.impl.UserDaoImpl;

public class UserAction extends SuperAction implements ModelDriven<User> {
	private User user = new User();

	/**
	 * 用户登录
	 * 
	 * @return Boolean
	 */
	public String login() {
		UserDao ud = new UserDaoImpl();
		if (ud.userLogin(user)) {
			// 继承了SuperAction，SuperAction中有web内置对象
			session.setAttribute("loginUserName", user.getUsername());
			return SUCCESS;
		} else {
			return "failed";
		}
	}

	/**
	 * 添加工作申请信息
	 * 
	 * @return
	 * @throws Exception
	 */
	public String addJobApply() throws Exception {
		JobApply jobApply = new JobApply();
		jobApply.setApplicant(request.getParameter("Applicant"));
		jobApply.setId(1);
		jobApply.setApplyjob(request.getParameter("applyjob"));
		jobApply.setReason(request.getParameter("reason"));
		UserDao uDao = new UserDaoImpl();
		uDao.addJobApplyInfo(jobApply);
		return "addApply_success";
	}

	/**
	 * 添加投诉信息
	 * 
	 * @return
	 * @throws Exception
	 */
	public String addConplaint() throws Exception {
		Complaint complaint = new Complaint();
		complaint.setComplainant(request.getParameter("complainant"));
		complaint.setComplainObj(request.getParameter("complainObj"));
		complaint.setComplainInfo(request.getParameter("complainInfo"));
		UserDao uDao = new UserDaoImpl();
		uDao.addConplaintInfo(complaint);
		return "add_complaint_success";
	}

	/**
	 * 注销登录
	 * 
	 * @return String
	 */
	@SkipValidation
	public String logout() {
		if (session.getAttribute("loginUserName") != null)
			session.removeAttribute("loginUserName");
		return "logout_success";
	}

	@Override
	public User getModel() {
		return this.user;
	}
}
