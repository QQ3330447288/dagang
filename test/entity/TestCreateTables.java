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
		// �������ö���
		Configuration config = new Configuration().configure();
		// ��������ע�����
		ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().configure().build();
		// ����sessionFacory����
		SessionFactory sessionFactory = config.buildSessionFactory(serviceRegistry);
		// ����session����
		Session session = sessionFactory.getCurrentSession();// ������ʾ�عر�session����
		// �����������
		Transaction tsTransaction = session.beginTransaction();
		
//		 Students stu1=new Students("2015011001","ţ����","��",new Date(),"�Ϻ�");
//		 session.save(stu1);

		// �ύ����
		tsTransaction.commit();
		sessionFactory.close();
	}
}
