package action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import entity.Admin;
import services.AdminDao;
import services.UserDao;
import services.impl.AdminDaoImpl;

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

	@Override
	public Admin getModel() {
		// TODO Auto-generated method stub
		return this.admin;
	}

}
