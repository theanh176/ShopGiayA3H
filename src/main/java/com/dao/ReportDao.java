package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import com.entities.DetailorderEntity;
import com.entities.OrderEntity;
import com.entities.ProductEntity;
import com.mvc.utility.HibernateUtility;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class ReportDao {
    private final static SessionFactory factory = HibernateUtility.getSessionFactory();

    public List<Object[]> getStatsColumn() {
        Session session = factory.openSession();
        try {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);
            Root<OrderEntity> root = query.from(OrderEntity.class);
            query.multiselect(root.get("purchaseDate").as(Date.class),
                    builder.sum(root.get("totalQuantity")),
                    builder.sum(root.get("totalMoney")));

            Calendar cal = Calendar.getInstance();
            cal.add(Calendar.DATE, -8);
            System.out.println(cal.getTime());

            Predicate d1 = builder.lessThan(root.get("purchaseDate").as(Date.class), new Date());
            Predicate d2 = builder.greaterThanOrEqualTo(root.get("purchaseDate").as(Date.class), cal.getTime());
            Predicate d3 = builder.like(root.get("state").as(String.class), "delivered");
            query.where(builder.and(builder.and(d1, d2), d3));
            query.orderBy(builder.asc(root.get("purchaseDate").as(Date.class)));

            query.groupBy(root.get("purchaseDate").as(Date.class));
//            System.out.println(new Date());

//            Thực hiện chia doanh thu 1.000
            List<Object[]> k = session.createQuery(query).getResultList();
            k.forEach(obj -> {
                obj[2] = Double.parseDouble(obj[2].toString())/1000000;
                System.out.printf("Xuat ngay:%s %s \n",obj[0], obj[2]);
            });


            return k;
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
        return null;
    }

    public List<Object[]> getStatsPie() {
        Session session = factory.openSession();
        try {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);
            Root<OrderEntity> root = query.from(OrderEntity.class);
            Root<ProductEntity> proot = query.from(ProductEntity.class);
            Root<DetailorderEntity> droot = query.from(DetailorderEntity.class);
            query.multiselect(proot.get("cateId").get("cname"), builder.sum(droot.get("quantity")));
//            query.multiselect(root.get("totalMoney"),detailOrderEntityRoot.get("orderEntity").as(Integer.class),root.get("purchaseDate").as(Date.class));

            Calendar cal = Calendar.getInstance();

            cal.add(Calendar.DATE, -8);
            System.out.println(cal.getTime());

            long millis=System.currentTimeMillis();
            java.sql.Date date=new java.sql.Date(millis);
//            Predicate d1 = builder.lessThan(root.get("purchaseDate").as(Date.class), date);
//            Predicate d2 = builder.greaterThanOrEqualTo(root.get("purchaseDate").as(Date.class), cal.getTime());
//            Predicate d3 = builder.like(root.get("state").as(String.class), "delivered");
            Predicate d4 = builder.equal(root.get("oid"), droot.get("orderEntity"));
            Predicate d5 = builder.equal(droot.get("product"), proot.get("id"));
            query.where(builder.and(builder.and(builder.and(d4,d5))));
//            query.groupBy(root.get("purchaseDate").as(Date.class));
            query.groupBy(proot.get("cateId"));

            return session.createQuery(query).getResultList();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
        return null;
    }

//    public List<Object[]> getStatsPie1()
//    {
//        Transaction transaction = null;
//        List<Object[]> objects = null;
//        Session session = HibernateUtility.getSessionFactory().openSession();
//        try
//        {
//            Calendar cal = Calendar.getInstance();
//            cal.add(Calendar.DATE, -7);
//
//            transaction = session.beginTransaction();
////            Query<Object[]> query = session.createQuery("SELECT category, sum(Quantity) FROM DetailOrderEntity, ProductEntity where DetailOrderEntity.product.id = ProductEntity.id");
////            Query<Object[]> query = session.createQuery("SELECT category, sum(Quantity) as soluong FROM DetailOrderEntity , OrderEntity , ProductEntity \n" +
////                    "where DetailOrderEntity.orderEntity.id = OrderEntity.id and DetailOrderEntity.product.id = ProductEntity.id and state='delivered'" +
////                    "and purchaseDate >=: aDate and purchaseDate <=: bDate group by category");
//            Query<Object[]> query1 = session.createQuery("SELECT quantity FROM DetailOrderEntity , OrderEntity , ProductEntity \n" +
//                    "where DetailOrderEntity.orderEntity.id=OrderEntity.id and DetailOrderEntity.product.id =ProductEntity.id");
////            query.setParameter("aDate", cal.getTime());
////            query.setParameter("bDate", new Date());
//            objects = query1.list();
//            return objects;
//        }
//        catch (Exception e)
//        {
//            if (transaction != null)
//            {
//                transaction.rollback();
//            }
//            e.printStackTrace();
//        }
//        finally
//        {
//            session.close();
//        }
//        return objects;
//    }

    public List<DetailorderEntity> getOrder1() {
        Session session = factory.openSession();
        try {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<DetailorderEntity> query = builder.createQuery(DetailorderEntity.class);
            Root<DetailorderEntity> root = query.from(DetailorderEntity.class);
            query.select(root);

//            List<ProductEntity> products = session.createQuery(query).getResultList();
//            products.forEach(p -> {
//                System.out.printf("%s\n", p.getName());
//            });
            return  session.createQuery(query).getResultList();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
        return null;
    }
}
