//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.service.impl;

import com.cn.lww.dao.RoleGroupCorrelateDao;
import com.cn.lww.pojo.RoleGroupCorrelate;
import com.cn.lww.services.RoleGroupCorrelateService;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

@Service("RoleGroupCorrelateService")
public class RoleGroupCorrelateServiceImpl implements RoleGroupCorrelateService {
    @Resource
    RoleGroupCorrelateDao roleGroupCorrelateDao;

    public RoleGroupCorrelateServiceImpl() {
    }

    public int deleteByPrimaryKey(Integer pGId) {
        return 0;
    }

    public int insert(RoleGroupCorrelate record) {
        return 0;
    }

    public int insertSelective(RoleGroupCorrelate record) {
        return 0;
    }

    public RoleGroupCorrelate selectByPrimaryKey(Integer pGId) {
        return null;
    }

    public int updateByPrimaryKeySelective(RoleGroupCorrelate record) {
        return 0;
    }

    public int updateByPrimaryKey(RoleGroupCorrelate record) {
        return 0;
    }

    public List<RoleGroupCorrelate> selectByRoleGroupID(Integer RoleGroupID) {
        return this.roleGroupCorrelateDao.selectByRoleGroupID(RoleGroupID);
    }
}
