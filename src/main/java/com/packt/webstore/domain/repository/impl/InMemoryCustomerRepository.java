/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.packt.webstore.domain.repository.impl;

import com.packt.webstore.domain.Customer;
import com.packt.webstore.domain.repository.CustomerRepository;
import java.util.ArrayList;
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
    private List<Customer> customers;

    public InMemoryCustomerRepository() {
        customers = new ArrayList<>();
        Customer c1 = new Customer("1", "Will Myer", "3244 South 23rd Street");
        c1.setNoOfOrdersMade(34L);
        Customer c2 = new Customer("2", "Steve Wyun", "3741 East 12nd Street");
        c2.setNoOfOrdersMade(7L);
        Customer c3 = new Customer("3", "Mart Luke", "9283 South 1st Street");
        c3.setNoOfOrdersMade(18L);
        Customer c4 = new Customer("4", "McBob Garand", "1637 North 4th Street");
        c4.setNoOfOrdersMade(9L);
        customers.add(c1);
        customers.add(c2);
        customers.add(c3);
        customers.add(c4);
    }

    @Override
    public List<Customer> getAllCustomers() {
        return customers;
    }

    @Override
    public void addCustomer(Customer customer) {
        customers.add(customer);
    }

}
