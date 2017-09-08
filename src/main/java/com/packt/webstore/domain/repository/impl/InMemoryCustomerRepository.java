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


    @Override
    public List<Customer> getAllCustomers() {

        /*  List<Customer> result = null;
        result.add(customers[0]);
        result.add(customers[1]);
        result.add(customers[2]);
         */
        return null;
    }

}
