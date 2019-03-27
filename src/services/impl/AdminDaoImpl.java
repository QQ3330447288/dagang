package services.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import dao.MyHbernateSessionFactory;
import entity.Admin;
import entity.Complaint;
import entity.JobCate;
import entity.JobInfo;
import entity.LawInfo;
import services.AdminDao;
import utils.Md5;

public class AdminDaoImpl implements AdminDao {

	@Override
	public boolean userLogin(Admin admin) {
		Transaction tx = null;
		String hql = "";
		try {
			Session session = MyHbernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			hql = "from Admin where username=:username and password=:password";
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

	@Override
	public List<Complaint> queryAllComplaint(int pageSize, int page) {
		Transaction tx = null;
		String hql = "";
		List<Complaint> list = null;
		try {
			Session session = MyHbernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			hql = "from Complaint order by id asc";
			String hql1 = "select count(complaint) from Complaint complaint";
			Object count = session.createQuery(hql1).uniqueResult();
			System.out.println(count);
			Query query = session.createQuery(hql).setFirstResult((page - 1) * pageSize).setMaxResults(pageSize);
			list = query.list();
			tx.commit();
			return list;

		} catch (Exception e) {
			e.printStackTrace();
			return list;
		} finally {
			if (tx != null) {
				tx = null;
			}
		}
	}

	@Override
	public Boolean addJobCate(JobCate jobCate) {
		Transaction tx = null;
		Session session = MyHbernateSessionFactory.getSessionFactory().getCurrentSession();
		try {
			tx = session.beginTransaction();
			session.save(jobCate);
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
	 * 查询工作分类
	 */
	@Override
	public List<JobCate> queryJobCate(int pageSize, int page) {
		Transaction tx = null;
		String hql = "";
		List<JobCate> list = null;
		try {
			Session session = MyHbernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			hql = "from JobCate order by id asc";
			String hql1 = "select count(jobCate) from JobCate jobCate";
			Object count = session.createQuery(hql1).uniqueResult();
			System.out.println(count);
			Query query = session.createQuery(hql).setFirstResult((page - 1) * pageSize).setMaxResults(pageSize);
			list = query.list();
			tx.commit();
			return list;

		} catch (Exception e) {
			e.printStackTrace();
			return list;
		} finally {
			if (tx != null) {
				tx = null;
			}
		}
	}

	@Override
	public Boolean addJobCate(JobInfo jobInfo) {
		Transaction tx = null;
		Session session = MyHbernateSessionFactory.getSessionFactory().getCurrentSession();
		try {
			tx = session.beginTransaction();
			session.save(jobInfo);
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

	@Override
	public Boolean addLawInfo(LawInfo lawInfo) {
		Transaction tx = null;
		Session session = MyHbernateSessionFactory.getSessionFactory().getCurrentSession();
		try {
			tx = session.beginTransaction();
			session.save(lawInfo);
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

	@Override
	public List<JobCate> queryApplyList(int pageSize, int page) {
		Transaction tx = null;
		String hql = "";
		List<JobCate> list = null;
		try {
			Session session = MyHbernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			hql = "from JobApply order by id asc";
			String hql1 = "select count(jobApply) from JobApply jobApply";
			Object count = session.createQuery(hql1).uniqueResult();
			System.out.println(count);
			Query query = session.createQuery(hql).setFirstResult((page - 1) * pageSize).setMaxResults(pageSize);
			list = query.list();
			tx.commit();
			return list;

		} catch (Exception e) {
			e.printStackTrace();
			return list;
		} finally {
			if (tx != null) {
				tx = null;
			}
		}
	}

}
