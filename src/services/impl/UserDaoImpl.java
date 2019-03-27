package services.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import dao.MyHbernateSessionFactory;
import entity.Complaint;
import entity.JobApply;
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

	public List<User> queryUserInfo(int pageSize, int page) {
		Transaction tx = null;
		List<User> list = null;
		String hql = "";
		try {
			Session session = MyHbernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			hql = "from User order by id asc";
			String hql1 = "select count(user) from User user";
			Object count = session.createQuery(hql1).uniqueResult();
			System.out.println(count);
			Query query = session.createQuery(hql).setFirstResult((page - 1) * pageSize).setMaxResults(pageSize);
			list = query.list();
			tx.commit();
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			tx.commit();
			e.printStackTrace();
			return list;
		} finally {
			if (tx != null) {
				tx = null;
			}
		}
	}

	/**
	 * 添加投诉信息
	 */
	@Override
	public boolean addConplaintInfo(Complaint complaint) {
		Transaction tx = null;
		Session session = MyHbernateSessionFactory.getSessionFactory().getCurrentSession();
		try {
			tx = session.beginTransaction();
			session.save(complaint);
			tx.commit();
			return true;

		} catch (Exception e) {
			session.getTransaction().rollback();
			e.printStackTrace();
			return false;

		} finally {
			if (tx != null) {
				tx = null;
			}
		}
	}

	/**
	 * 添加工作申请信息
	 */
	@Override
	public boolean addJobApplyInfo(JobApply jobApply) {
		Transaction tx = null;
		try {
			Session session = MyHbernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			session.save(jobApply);
			tx.commit();
			return true;
		} catch (Exception e) {
			tx.commit();
			e.printStackTrace();
			return false;
		} finally {
			if (tx != null) {
				tx = null;
			}
		}
	}

}
