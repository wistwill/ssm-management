package com.sszkq.service.impl;

import com.github.pagehelper.PageHelper;
import com.sszkq.dao.IPermissionDao;
import com.sszkq.pojo.Permission;
import com.sszkq.service.IPermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class PermissionServiceImpl implements IPermissionService {

    @Autowired
    private IPermissionDao permissionDao;

    @Override
    public void deleteById(String id) throws Exception {
        permissionDao.deleteFromRole_Permission(id);
        permissionDao.deleteById(id);
    }

    @Override
    public Permission findById(String id) throws Exception {
        return permissionDao.findById(id);
    }

    @Override
    public void save(Permission permission) throws Exception{
        permissionDao.save(permission);
    }

    @Override
    public List<Permission> findAll(Integer page,Integer size) throws Exception{
        PageHelper.startPage(page,size);
        return permissionDao.findAll();
    }
}
