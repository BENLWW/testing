//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.service.impl;

import com.cn.lww.dao.RoleDao;
import com.cn.lww.pojo.Role;
import com.cn.lww.services.RoleService;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

@Service("roleService")
public class RoleServiceImpl implements RoleService {
    @Resource
    RoleDao roleDao;

    public RoleServiceImpl() {
    }

    public int deleteByPrimaryKey(Integer roleGroupId) {
        return 0;
    }

    public int insert(Role record) {
        return 0;
    }

    public int insertSelective(Role record) {
        return 0;
    }

    public Role selectByPrimaryKey(Integer roleGroupId) {
        return this.roleDao.selectByPrimaryKey(roleGroupId);
    }

    public int updateByPrimaryKeySelective(Role record) {
        return 0;
    }

    public int updateByPrimaryKeyWithBLOBs(Role record) {
        return 0;
    }

    public int updateByPrimaryKey(Role record) {
        return 0;
    }
}
