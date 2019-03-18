package action;

import com.opensymphony.xwork2.ModelDriven;

import entity.User;
import services.UserDao;
import services.impl.UserDaoImpl;

public class UserAction extends SuperAction implements ModelDriven<User> {
	private User user = new User();

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

	@Override
	public User getModel() {
		return this.user;
	}
}
