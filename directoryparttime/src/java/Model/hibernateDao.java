/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Kerev
 */
public class hibernateDao {
    Session session =null;
    
    public hibernateDao(){
    SessionFactory sessionFactory = new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
    session =  sessionFactory.openSession();
    session.beginTransaction();
    }
    
    public void addCategory(PojoCategory cat){
        session.save(cat);
        session.getTransaction().commit();
    }
    
    
    public void addCompany(PojoCompany comp){
        session.save(comp);
        session.getTransaction().commit();
    }
}
