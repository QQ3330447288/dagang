package dao;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class MyHbernateSessionFactory {

	private static SessionFactory sessionFactory;//会话工厂

	//构造方法私有化，保证单例模式
	private MyHbernateSessionFactory() {
		//super();
		// TODO Auto-generated constructor stub
	}

//公有静态方法来获取会话工厂对象
	public static SessionFactory getSessionFactory() {
		if(sessionFactory==null){
			Configuration config=new Configuration().configure();
			ServiceRegistry serviceRegistry = new  StandardServiceRegistryBuilder().configure().build();
			sessionFactory =config.buildSessionFactory(serviceRegistry);
			return sessionFactory;
		}else{
			return sessionFactory;
		}
	}	
}
