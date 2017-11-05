/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.packt.webstore.controller;

import com.packt.webstore.domain.Customer;
import com.packt.webstore.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author derickfelix
 */
@Controller
@RequestMapping("/customers")
public class CustomerController {
    
    @Autowired
    private CustomerService customerService;
    
    @RequestMapping
    public String list(Model model) {
        
        model.addAttribute("customers", customerService.getAllCustomers());
        return "customers";
    }
    
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add(Model model) {
        model.addAttribute("customer", new Customer());
        return "addCustomer";
    }
    
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String postAdd(@ModelAttribute("customer") Customer customer) {
        
        customerService.addCustomer(customer);
        return "redirect:/customers";
    }
}
