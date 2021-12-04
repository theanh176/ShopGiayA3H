package com.example.shopgiaymaster;

import com.entities.OrderEntity;
import com.mvc.utility.HibernateUtility;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public class TestData {
    public static void main(String[] args){
        try {
            Session session = HibernateUtility.getSessionFactory().openSession();

//            Query<OrderEntity> query = session.createQuery("FROM OrderEntity ");
//            List<OrderEntity> cats = query.list();
//            cats.forEach(c -> System.out.println(c.getOid()));
//            OrderDao orderDao = new OrderDao();
//            List<OrderDao> cats = orderDao.getListOrder();
//            cats.forEach(c -> System.out.println(c.));

            Query<OrderEntity> query = session.createQuery("FROM OrderEntity ");
            List<OrderEntity> cats = query.list();
            cats.forEach(c -> System.out.println(c.getOid()));
        } catch (Exception e){

        }
    }
}
