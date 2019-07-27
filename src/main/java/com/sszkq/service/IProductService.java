package com.sszkq.service;

import com.sszkq.pojo.Product;

import java.util.List;

public interface IProductService {

    public List<Product> findAll() throws Exception;

    void save(Product product) throws Exception;
}
