//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.dao;

import com.cn.lww.pojo.STeacher;
import java.util.List;

public interface STeacherDao {
    int deleteByPrimaryKey(Integer var1);

    int insert(STeacher var1);

    int insertSelective(STeacher var1);

    STeacher selectByPrimaryKey(Integer var1);

    int updateByPrimaryKeySelective(STeacher var1);

    int updateByPrimaryKeyWithBLOBs(STeacher var1);

    int updateByPrimaryKey(STeacher var1);

    STeacher selectByTeacherNumber(Integer var1);

    List<STeacher> selectByName(String var1);
}
