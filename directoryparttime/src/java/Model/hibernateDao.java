/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.List;
import javax.persistence.Query;
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
    
    public PojoCompany getLogin(String email){
        org.hibernate.Query query = session.createQuery("from PojoCompany where compemail = :email");
        query.setParameter("email", email);
        
        List<PojoCompany> list = query.list();
        PojoCompany company = (PojoCompany)list.get(0);

        return company;
    }
}
