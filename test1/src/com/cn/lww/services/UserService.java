//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.services;

import com.cn.lww.pojo.User;
import java.util.List;

public interface UserService {
    int deleteByPrimaryKey(Integer var1);

    int insert(User var1);

    int insertSelective(User var1);

    User selectByPrimaryKey(Integer var1);

    int updateByPrimaryKeySelective(User var1);

    int updateByPrimaryKeyWithBLOBs(User var1);

    int updateByPrimaryKey(User var1);

    List<User> findAll();

    User selectByUserNumber(Integer var1);
}
