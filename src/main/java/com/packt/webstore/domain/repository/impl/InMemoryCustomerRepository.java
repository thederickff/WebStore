/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.packt.webstore.domain.repository.impl;

import com.packt.webstore.domain.Customer;
import com.packt.webstore.domain.repository.CustomerRepository;
import java.util.List;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

/**
 *
 * @author derickfelix
 */
@Repository
public class InMemoryCustomerRepository implements CustomerRepository {

    private NamedParameterJdbcTemplate jdbcTemplate;
    private Customer[] customers;
    
    public InMemoryCustomerRepository() {
        customers = new Customer[3];
        customers[0] = new Customer("1", "Derick", "1st street");
        customers[0].setNoOfOrdersMade(3);
        
        customers[1] = new Customer("2", "Gary", "3rd street");
        customers[1].setNoOfOrdersMade(2);
        
        customers[2] = new Customer("3", "Mark", "2rd street");
        customers[2].setNoOfOrdersMade(4);
        
    }
    @Override
    public List<Customer> getAllCustomers() {
        
        List<Customer> result = null;
        result.add(customers[0]);
        result.add(customers[1]);
        result.add(customers[2]);
        return result;
    }
    
}
