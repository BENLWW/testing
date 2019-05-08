//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.dao;

import com.cn.lww.pojo.Menu;

public interface MenuDao {
    int deleteByPrimaryKey(Integer var1);

    int insert(Menu var1);

    int insertSelective(Menu var1);

    Menu selectByPrimaryKey(Integer var1);

    int updateByPrimaryKeySelective(Menu var1);

    int updateByPrimaryKey(Menu var1);
}
