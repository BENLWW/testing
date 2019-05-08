//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.dao;

import com.cn.lww.pojo.RoleGroupCorrelate;
import java.util.List;

public interface RoleGroupCorrelateDao {
    int deleteByPrimaryKey(Integer var1);

    int insert(RoleGroupCorrelate var1);

    int insertSelective(RoleGroupCorrelate var1);

    RoleGroupCorrelate selectByPrimaryKey(Integer var1);

    int updateByPrimaryKeySelective(RoleGroupCorrelate var1);

    int updateByPrimaryKey(RoleGroupCorrelate var1);

    List<RoleGroupCorrelate> selectByRoleGroupID(Integer var1);
}
