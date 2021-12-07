package com.example.shopgiaymaster;

import com.dao.DetailorderDao;
import com.dao.ReportDao;
import com.entities.DetailorderEntity;
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

//            Query<DetailorderEntity> query = session.createQuery("FROM DetailorderEntity ");
//            List<DetailorderEntity> cats = query.list();
//            cats.forEach(c -> System.out.println(c.getProduct().getId()));

//            DetailorderDao detailorderDao = new DetailorderDao();
//            List<DetailorderEntity> detailorderEntities = detailorderDao.getDetailOrderByOid(String.valueOf(61));
//            detailorderEntities.forEach(c -> System.out.println(c.getProduct().getId()));

            ReportDao dao = new ReportDao();
            List<Object[]> ord = dao.getStatsPie();
            ord.forEach(c -> {

                System.out.printf("Xuat ngay: %s Tổng tiền: %s    %s\n", c[0], c[1]);
            });
        } catch (Exception e){

        }
    }
}
