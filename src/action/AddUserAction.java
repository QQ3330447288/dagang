package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import dao.BaseDao;
import utils.Md5;

public class AddUserAction extends ActionSupport {
	public void addUser() throws IOException {
		HttpServletRequest request = ServletActionContext.getRequest();
		String userName = request.getParameter("userName");
		String pwd = Md5.md5(request.getParameter("password"), "Thanlon");
//		System.out.println(pwd);
		String phone = request.getParameter("phone");
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
//		System.out.println(userName+phone+pwd);
		if (iSaddUser(userName, pwd, phone)) {
			out.print(1);
		} else {
			out.print(0);
		}
		out.flush();
		out.close();
	}

	private Boolean iSaddUser(String userName, String pwd, String phone) {
		String sql = "INSERT user(username,password,phone) VALUES(?,?,?)";
		List<Object> parames = new ArrayList<Object>();
		parames.add(userName);
		parames.add(pwd);
		parames.add(phone);
		BaseDao dao = new BaseDao();
		try {
			int count = dao.executeUpdate(sql, parames);
			return count > 0;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}
