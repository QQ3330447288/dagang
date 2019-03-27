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
	 * �û���¼
	 * 
	 * @return Boolean
	 */
	public String login() {
		UserDao ud = new UserDaoImpl();
		if (ud.userLogin(user)) {
			// �̳���SuperAction��SuperAction����web���ö���
			session.setAttribute("loginUserName", user.getUsername());
			return SUCCESS;
		} else {
			return "failed";
		}
	}

	/**
	 * ��ӹ���������Ϣ
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
	 * ���Ͷ����Ϣ
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
	 * ע����¼
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
