package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import services.UserDao;
import services.impl.UserDaoImpl;

public class UserLawInfoAction extends SuperAction {
	public void findLawInfo() {
		HttpServletRequest request = ServletActionContext.getRequest();
		int pageSize = Integer.parseInt(request.getParameter("pageSize")) ;
		int page = Integer.parseInt(request.getParameter("page"));
		UserDao ud = new UserDaoImpl();
		List list = ud.queryLawInfo(pageSize, page);
//		System.out.println(list);
		if (list != null && list.size() > 0) {
			session.setAttribute("lawinfo_list", list);
		}
	}
}
