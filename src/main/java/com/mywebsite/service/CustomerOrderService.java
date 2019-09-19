package com.mywebsite.service;

import java.util.List;

import com.mywebsite.model.CartItem;
import com.mywebsite.model.CustomerOrder;

public interface CustomerOrderService {

    void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);
    
    CustomerOrder getCustomerOrderById (int customerOrderId);

    List<CustomerOrder> getAllCustomerOrders();
    
    public List<CartItem> getCustomerOrderCartItems(int cartId);
    
    
    
}
