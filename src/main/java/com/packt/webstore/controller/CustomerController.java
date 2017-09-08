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
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author derickfelix
 */
@Controller
public class CustomerController {
    
    //@Autowired
    //private CustomerService customerService;
    
    @RequestMapping("/customers")
    public String list(Model model) {
        Customer[] customers = new Customer[3];
        customers[0] = new Customer("1", "Derick", "1st street");
        customers[0].setNoOfOrdersMade(3);
        
        customers[1] = new Customer("2", "Gary", "3rd street");
        customers[1].setNoOfOrdersMade(2);
        
        customers[2] = new Customer("3", "Mark", "2rd street");
        customers[2].setNoOfOrdersMade(4);

        model.addAttribute("customers", customers);
        return "customers";
    }
}
