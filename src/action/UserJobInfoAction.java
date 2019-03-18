package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Transaction;

import com.opensymphony.xwork2.ActionSupport;

import entity.JobInfo;
import services.UserDao;
import services.impl.UserDaoImpl;

public class UserJobInfoAction extends SuperAction {
	public void findJobInfo() throws IOException {
		HttpServletRequest request = ServletActionContext.getRequest();
		int pageSize = Integer.parseInt(request.getParameter("pageSize")) ;
		int page = Integer.parseInt(request.getParameter("page"));
		UserDao ud = new UserDaoImpl();
//		ud.queryJobInfo(pageSize, page);
		List list = ud.queryJobInfo(pageSize, page);
//		System.out.println("返回到action中的list:"+list);
		if (list != null && list.size() > 0) {
			session.setAttribute("jobinfo_list", list);
		}
		
//		HttpServletResponse response = ServletActionContext.getResponse();
//		response.setContentType("text/html;charset=utf-8");
//		PrintWriter out = response.getWriter();
//		out.print(list);
//		out.flush();
//		out.close();
	}
}
