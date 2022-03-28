package org.example;

import org.example.POJO.Airclass;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {

        SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Airclass.class).buildSessionFactory();

        try{
            Session session = factory.getCurrentSession();
            Airclass emp = new Airclass("VIP");
            session.beginTransaction();
            session.save(emp);
            session.getTransaction().commit();
        }finally {
            factory.close();
        }

    }
}
