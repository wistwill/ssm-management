package com.sszkq.service;

import com.sszkq.pojo.Orders;

import java.util.List;

public interface IOrdersService {


    List<Orders> findAll(int page, int size) throws Exception;

    Orders findById(String ordersId) throws Exception;
}
