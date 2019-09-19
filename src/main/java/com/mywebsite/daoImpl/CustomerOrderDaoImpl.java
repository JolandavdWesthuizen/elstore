package com.mywebsite.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.mywebsite.dao.CustomerOrderDao;
import com.mywebsite.model.CustomerOrder;

@Repository
@Transactional
public class CustomerOrderDaoImpl implements CustomerOrderDao{

        @Autowired
        private SessionFactory sessionFactory;

        public void addCustomerOrder(CustomerOrder customerOrder) {
            Session session = sessionFactory.getCurrentSession();
            session.saveOrUpdate(customerOrder);
            session.flush();
        }
        
        public List<CustomerOrder> getAllCustomerOrders() {
            Session session = sessionFactory.getCurrentSession();
            Query query = session.createQuery("from CustomerOrder");
            List<CustomerOrder> customerOrderList = query.list();

            return customerOrderList;
        }
        
        public CustomerOrder getCustomerOrderById (int customerOrderId) {
            Session session = sessionFactory.getCurrentSession();
            return (CustomerOrder) session.get(CustomerOrder.class, customerOrderId);
        }
}
