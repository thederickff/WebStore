/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.packt.webstore.service;

import com.packt.webstore.domain.Product;
import java.util.List;

/**
 *
 * @author derickfelix
 */
public interface ProductService {
    
    void updateAllStock();
    
    List <Product> getAllProducts();
}
