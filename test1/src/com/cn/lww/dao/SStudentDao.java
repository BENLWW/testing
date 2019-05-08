//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.dao;

import com.cn.lww.pojo.SStudent;
import java.util.List;

public interface SStudentDao {
    int deleteByPrimaryKey(Integer var1);

    int insert(SStudent var1);

    int insertSelective(SStudent var1);

    SStudent selectByPrimaryKey(Integer var1);

    int updateByPrimaryKeySelective(SStudent var1);

    int updateByPrimaryKeyWithBLOBs(SStudent var1);

    int updateByPrimaryKey(SStudent var1);

    SStudent selectByStudentNumber(Integer var1);

    List<SStudent> getAllStudent();

    List<SStudent> findStudentBySome(SStudent var1);
}
