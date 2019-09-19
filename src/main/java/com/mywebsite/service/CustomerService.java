package com.mywebsite.service;

import java.util.List;


import com.mywebsite.model.Customer;

public interface CustomerService {

    void addCustomer (Customer customer);

    Customer getCustomerById (int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername (String username);
   
    public void editCustomer(Customer customer);
}