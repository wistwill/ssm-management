package com.sszkq.service;

import com.sszkq.pojo.Permission;

import java.util.List;

public interface IPermissionService {

    public List<Permission> findAll(Integer page,Integer size) throws Exception;

    void save(Permission permission) throws Exception;

    Permission findById(String id) throws Exception;

    void deleteById(String id) throws Exception;
}
