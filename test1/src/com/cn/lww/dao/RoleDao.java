//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.dao;

import com.cn.lww.pojo.Role;

public interface RoleDao {
    int deleteByPrimaryKey(Integer var1);

    int insert(Role var1);

    int insertSelective(Role var1);

    Role selectByPrimaryKey(Integer var1);

    int updateByPrimaryKeySelective(Role var1);

    int updateByPrimaryKeyWithBLOBs(Role var1);

    int updateByPrimaryKey(Role var1);
}
