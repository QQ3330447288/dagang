package services.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import dao.MyHbernateSessionFactory;
import entity.JobInfo;
import entity.User;
import services.UserDao;
import utils.Md5;

public class UserDaoImpl implements UserDao {

	@Override
	public boolean userLogin(User user) {
		// 创建事务对象
		Transaction tx = null;
		String hql = "";
		try {
			Session session = MyHbernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			hql = "from User where username=:username and password=:password";
			Query query = session.createQuery(hql);
			query.setParameter("username", user.getUsername());
			query.setParameter("password", Md5.md5(user.getPassword(), "Thanlon"));
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

	@Override
	public List<JobInfo> queryJobInfo(int pageSize, int page) {
//		System.out.println(pageSize);
//		System.out.println(page);	
		Transaction tx = null;
		List<JobInfo> list = null;
		String hql = "";
		try {
			Session session = MyHbernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			hql = "from JobInfo order by id asc";
			String hql1 = "select count(*) from JobInfo";
			Object count = session.createQuery(hql1).uniqueResult();
//			System.out.println(count);
			Query query = session.createQuery(hql).setFirstResult((page - 1) * pageSize).setMaxResults(pageSize);
			list = query.list();
			tx.commit();
			return list;
		} catch (Exception e) {
			tx.commit();
			e.printStackTrace();
			return list;
		} finally {
			if (tx != null) {
				tx = null;
			}
		}

	}

	@Override
	public List<JobInfo> queryLawInfo(int pageSize, int page) {
//		System.out.println(pageSize);
//		System.out.println(page);
		Transaction tx = null;
		List<JobInfo> list = null;
		String hql = "";
		try {
			Session session = MyHbernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			hql = "from LawInfo order by id asc";
			String hql1 = "select count(*) from LawInfo";
			Object count = session.createQuery(hql1).uniqueResult();
//			System.out.println(count);
			Query query = session.createQuery(hql).setFirstResult((page - 1) * pageSize).setMaxResults(pageSize);
			list = query.list();
			tx.commit();
			return list;
		} catch (Exception e) {
			tx.commit();
			e.printStackTrace();
			return list;
		} finally {
			if (tx != null) {
				tx = null;
			}
		}
	}

}
