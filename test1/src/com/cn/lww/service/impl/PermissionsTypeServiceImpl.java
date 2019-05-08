//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.service.impl;

import com.cn.lww.dao.PermissionsTypeDao;
import com.cn.lww.pojo.PermissionsType;
import com.cn.lww.services.PermissionsTypeService;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

@Service("permissionsTypeService")
public class PermissionsTypeServiceImpl implements PermissionsTypeService {
    @Resource
    PermissionsTypeDao permissionsTypeDao;

    public PermissionsTypeServiceImpl() {
    }

    public int deleteByPrimaryKey(Integer permissionsId) {
        return 0;
    }

    public int insert(PermissionsType record) {
        return 0;
    }

    public int insertSelective(PermissionsType record) {
        return 0;
    }

    public PermissionsType selectByPrimaryKey(Integer permissionsId) {
        return this.permissionsTypeDao.selectByPrimaryKey(permissionsId);
    }

    public int updateByPrimaryKeySelective(PermissionsType record) {
        return 0;
    }

    public int updateByPrimaryKey(PermissionsType record) {
        return 0;
    }
}
