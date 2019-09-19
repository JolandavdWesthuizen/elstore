package com.mywebsite.adminController;


import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mywebsite.model.CustomerOrder;
import com.mywebsite.service.CartService;
import com.mywebsite.service.CustomerOrderService;

@Controller
@RequestMapping("/admin")
public class AdminCustomerOrder {
	
	@Autowired
	CustomerOrderService customerOrderService;
	
	@Autowired 
	CartService cartService;

	@RequestMapping("/customerOrder/viewCustomerOrder/{customerOrderId}")
    public String viewCustomerOrder(@PathVariable int customerOrderId, Model model) throws IOException {
        CustomerOrder customerOrder=customerOrderService.getCustomerOrderById(customerOrderId);
        model.addAttribute("customerOrder", customerOrder);

        return "viewCustomerOrder";
    }
}
