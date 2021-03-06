/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.math.BigDecimal;
import static java.util.Collections.list;
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
    
     public PojoCompany getCompany(int compID){
        org.hibernate.Query query = session.createQuery("from PojoCompany where compid = :compid");
        query.setParameter("compid", compID);
        
        List<PojoCompany> list = query.list();
        PojoCompany company = (PojoCompany)list.get(0);

        return company;
    }
    
    public List<PojoCategory> getCategory(){
        org.hibernate.Query query = session.createQuery("from PojoCategory");
        
        List<PojoCategory> list = query.list();
       
        
        return list;
    }
    
    public List<PojoCompany> getCompanyByID(int catID){
        org.hibernate.Query query = session.createQuery("from PojoCompany where catid = :catID");
        query.setParameter("catID", catID);
        
        List<PojoCompany> list = query.list();
        
        return list;
    }
    
    public void updateCompany(String name, String email, String password, String contact, String address, int compId){
        org.hibernate.Query query = session.createQuery("update PojoCompany set compname = :Name, compemail = :Email, comppassword = :Password, compcontact = :Contact, compaddress = :Address where compid = :ID");
        query.setParameter("Email", email);
        query.setParameter("Password", password);
        query.setParameter("Name", name);
        query.setParameter("Contact", contact);
        query.setParameter("Address", address);
        query.setParameter("ID", compId);
        int result = query.executeUpdate();

        session.getTransaction().commit();

    }
    
}
