/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.packt.webstore.controller;

import com.packt.webstore.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author derickfelix
 */
@Controller
public class CustomerController {
    
    @Autowired
    private CustomerService customerService;
    
    @RequestMapping("/customers")
    public String list(Model model) {
        
        model.addAttribute("customers", customerService.getAllCustomers());
        return "customers";
    }
}
