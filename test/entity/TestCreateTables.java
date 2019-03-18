package entity;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.junit.Test;

public class TestCreateTables {
	@Test
	public void testCreateTables() {
		// 创建配置对象
		Configuration config = new Configuration().configure();
		// 创建服务注册对象
		ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().configure().build();
		// 创建sessionFacory对象
		SessionFactory sessionFactory = config.buildSessionFactory(serviceRegistry);
		// 创建session对象
		Session session = sessionFactory.getCurrentSession();// 无需显示地关闭session对象
		// 创建事务对象
		Transaction tsTransaction = session.beginTransaction();
		
//		 Students stu1=new Students("2015011001","牛新龙","男",new Date(),"上海");
//		 session.save(stu1);

		// 提交事务
		tsTransaction.commit();
		sessionFactory.close();
	}
}
