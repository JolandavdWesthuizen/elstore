package com.mywebsite.adminController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mywebsite.model.Customer;
import com.mywebsite.model.CustomerOrder;
import com.mywebsite.model.Product;
import com.mywebsite.service.CustomerOrderService;
import com.mywebsite.service.CustomerService;
import com.mywebsite.service.ProductService;

@Controller
@RequestMapping("/admin")
public class AdminHome {

    @Autowired
    private ProductService productService;

    @Autowired
    private CustomerService customerService;
    
    @Autowired
    private CustomerOrderService customerOrderService;

    @RequestMapping
    public String adminPage() {
        return "admin";
    }

    @RequestMapping("/productInventory")
    public String productInventory(Model model) {
        List<Product> products = productService.getProductList();
        model.addAttribute("products", products);

        return "productInventory";
    }

    @RequestMapping("/customer")
    public String customerManagement(Model model) {

        List<Customer> customerList = customerService.getAllCustomers();
        model.addAttribute("customerList", customerList);

        return "customerManagement";
    }
    
    @RequestMapping("/customerOrders")
    public String customerOrders(Model model) {

        List<CustomerOrder> customerOrderList = customerOrderService.getAllCustomerOrders();
        model.addAttribute("customerOrderList", customerOrderList);

        return "customerOrders";
    }
}
