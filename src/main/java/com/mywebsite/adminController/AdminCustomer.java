package com.mywebsite.adminController;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.mywebsite.model.Customer;
import com.mywebsite.service.CustomerService;

@Controller
@RequestMapping("/admin")
public class AdminCustomer {
	
	@Autowired 
	CustomerService customerService;
	
	@RequestMapping("/customer/viewCustomer/{customerId}")
    public String viewCustomer(@PathVariable int customerId, Model model) throws IOException {
        Customer customer=customerService.getCustomerById(customerId);
        model.addAttribute("customer", customer);

        return "viewCustomer";
    }
	
	  @RequestMapping("/customer/editCustomer/{id}")
	    public String editCustomer(@PathVariable("id") int id, Model model) {
	        Customer customer = customerService.getCustomerById(id);
	        
	        model.addAttribute("customer", customer);

	        return "editCustomer";
	    }

	    @RequestMapping(value="/customer/editCustomer", method = RequestMethod.POST)
	    public String editCustomerPost(@Valid @ModelAttribute("customer") Customer customer,
				    							 BindingResult result,
				                                 HttpServletRequest request) {
	    	 if(result.hasErrors()) {
	             return "editProduct";
	         }

	        customer.setEnabled(true);
	        customerService.editCustomer(customer);

	       return "redirect:/admin/customer";
}
	    


}