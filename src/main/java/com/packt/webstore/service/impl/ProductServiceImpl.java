/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.packt.webstore.service.impl;

import com.packt.webstore.domain.Product;
import com.packt.webstore.domain.repository.ProductRepository;
import com.packt.webstore.service.ProductService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author derickfelix
 */
@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductRepository productRepository;

    @Override
    public void updateAllStock() {
        List<Product> allProducts = productRepository.getAllProducts();

        for (Product product : allProducts) {
            if (product.getUnitsInStock() < 500) {
                productRepository.updateStock(product.getProductId(), product.getUnitsInStock() + 1000);
            }
        }

    }

    @Override
    public List<Product> getAllProducts() {
        return productRepository.getAllProducts();
    }

    @Override
    public List<Product> getProductsByCategory(String category) {
        return productRepository.getProductsByCategory(category);
    }

    @Override
    public List<Product> getProductsByFilter(Map<String, List<String>> filterParams) {
        return productRepository.getProductsByFilter(filterParams);
    }

    @Override
    public Product getProductById(String productId) {
        return productRepository.getProductById(productId);
    }

    @Override
    public void addProduct(Product product) {
        productRepository.addProduct(product);
    }

    @Override
    public List<Product> filterProducts(String category, Map<String, List<String>> params, String brand) {
        Map<String, List<String>> filter = new HashMap<>();
        filter.put("categories", listOfString(category));
        filter.put("brands", listOfString(brand));

        List<Product> products = this.productRepository.getProductsByFilter(filter);
        List<Product> filteredProducts = new ArrayList<>();

        for (Product p : products) {
            double price = p.getUnitPrice().doubleValue();
            double low = getDoubleFromStringList(params.get("low"));
            double high = getDoubleFromStringList(params.get("high"));

            if (price >= low && price <= high) {
                filteredProducts.add(p);
            }
        }
        
        if (filteredProducts.isEmpty()) {
            filteredProducts.add(new Product("0", "No records found!", null));
        }

        return filteredProducts;
    }

    private double getDoubleFromStringList(List<String> list) {
        double n = 0;
        try {
            for (String l : list) {
                n = Double.parseDouble(l);
            }
        } catch (NumberFormatException e) {
            System.out.println("Parse Double error: " + e);
        }
        return n;
    }

    private List<String> listOfString(String param) {
        List<String> list = new ArrayList<>();
        list.add(param);
        return list;
    }

}
