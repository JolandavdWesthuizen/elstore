package com.mywebsite.dao;

import java.util.List;
import com.mywebsite.model.Customer;

public interface CustomerDao {

    void addCustomer (Customer customer);

    Customer getCustomerById (int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername (String username);
    
    void editCustomer(Customer customer);
}
