/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.packt.webstore.service;

import com.packt.webstore.domain.Product;
import java.util.List;
import java.util.Map;

/**
 *
 * @author derickfelix
 */
public interface ProductService {

    void updateAllStock();

    List<Product> getAllProducts();

    List<Product> getProductsByCategory(String category);
    
    List<Product> getProductsByFilter(Map<String, List<String>> filterParams);
    
    List<Product> getProductById(String productId);
}
