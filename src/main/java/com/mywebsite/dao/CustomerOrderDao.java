package com.mywebsite.dao;

import java.util.List;

import com.mywebsite.model.CustomerOrder;

public interface CustomerOrderDao {

    void addCustomerOrder(CustomerOrder customerOrder);
	
	CustomerOrder getCustomerOrderById (int customerOrderId);

	List<CustomerOrder> getAllCustomerOrders();

}
