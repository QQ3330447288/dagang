package services.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import dao.MyHbernateSessionFactory;
import entity.Admin;
import entity.User;
import services.AdminDao;
import services.UserDao;
import utils.Md5;

public class AdminDaoImpl implements AdminDao {

	@Override
	public boolean userLogin(Admin admin) {
		// 创建事务对象
		Transaction tx = null;
		String hql = "";
		try {
			Session session = MyHbernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			hql = "from User where username=:username and password=:password";
			Query query = session.createQuery(hql);
			query.setParameter("username", admin.getUsername());
			query.setParameter("password", Md5.md5(admin.getPassword(), "Thanlon"));
			List list = query.list();
//			System.out.println(list);
//			提交事务
			tx.commit();
			if (list.size() > 0) {
				return true;
			} else {
				return false;
			}

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			if (tx != null) {
				tx = null;
			}
		}

	}

}
