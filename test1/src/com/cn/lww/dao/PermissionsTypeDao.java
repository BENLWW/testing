//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.dao;

import com.cn.lww.pojo.PermissionsType;

public interface PermissionsTypeDao {
    int deleteByPrimaryKey(Integer var1);

    int insert(PermissionsType var1);

    int insertSelective(PermissionsType var1);

    PermissionsType selectByPrimaryKey(Integer var1);

    int updateByPrimaryKeySelective(PermissionsType var1);

    int updateByPrimaryKey(PermissionsType var1);
}
