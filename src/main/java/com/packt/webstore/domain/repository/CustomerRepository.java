/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.packt.webstore.domain.repository;

import com.packt.webstore.domain.Customer;
import java.util.List;

/**
 *
 * @author derickfelix
 */
public interface CustomerRepository {

    List<Customer> getAllCustomers();
}
