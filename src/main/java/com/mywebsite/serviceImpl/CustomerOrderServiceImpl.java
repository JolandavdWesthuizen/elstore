package com.mywebsite.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mywebsite.dao.CustomerOrderDao;
import com.mywebsite.model.Cart;
import com.mywebsite.model.CartItem;
import com.mywebsite.model.CustomerOrder;
import com.mywebsite.service.CartService;
import com.mywebsite.service.CustomerOrderService;

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {

    @Autowired
    private CustomerOrderDao customerOrderDao;

    @Autowired
    private CartService cartService;

    public void addCustomerOrder(CustomerOrder customerOrder) {
        customerOrderDao.addCustomerOrder(customerOrder);
    }

    public double getCustomerOrderGrandTotal(int cartId) {
        double grandTotal=0;
        Cart cart = cartService.getCartById(cartId);
        List<CartItem> cartItems = cart.getCartItems();

        for (CartItem item : cartItems) {
            grandTotal+=item.getTotalPrice();
        }

        return grandTotal;
    }
    
    public List<CartItem> getCustomerOrderCartItems(int cartId){
    	Cart cart = cartService.getCartById(cartId);
    	List<CartItem> cartItems = cart.getCartItems();
    	return cartItems;
    }
    
    public CustomerOrder getCustomerOrderById(int customerOrderId) {
        return customerOrderDao.getCustomerOrderById(customerOrderId);
    }

    public List<CustomerOrder> getAllCustomerOrders() {
        return customerOrderDao.getAllCustomerOrders();
    }
    
}

