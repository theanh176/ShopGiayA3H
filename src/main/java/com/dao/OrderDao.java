package com.dao;

import com.entities.CategoryEntity;
import com.mvc.utility.HibernateUtility;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class OrderDao {
    public List<OrderDao> getListOrder()
    {
        Transaction transaction = null;
        List<OrderDao> categorys = null;
        Session session = HibernateUtility.getSessionFactory().openSession();
        try
        {
            transaction = session.beginTransaction();
            Query<OrderDao> query = session.createQuery("FROM OrderEntity ");
            categorys = query.list();
            return categorys;
        }
        catch (Exception e)
        {
            if (transaction != null)
            {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        finally
        {
            session.close();
        }
        return categorys;
    }
}
