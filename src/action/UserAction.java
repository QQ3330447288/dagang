package action;

import org.apache.struts2.interceptor.validation.SkipValidation;

import com.opensymphony.xwork2.ModelDriven;

import entity.User;
import services.UserDao;
import services.impl.UserDaoImpl;

public class UserAction extends SuperAction implements ModelDriven<User> {
	private User user = new User();

	/**
	 * 用户登录
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
	 * 注销登录
	 * @return String
	 */
	@SkipValidation
	public String logout() {
		if (session.getAttribute("loginUserName")!=null) 
			session.removeAttribute("loginUserName");
		return "logout_success";
	}

	@Override
	public User getModel() {
		return this.user;
	}
}
