//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.dao;

import com.cn.lww.pojo.Grade;
import java.util.List;

public interface GradeDao {
    int deleteByPrimaryKey(Integer var1);

    int insert(Grade var1);

    int insertSelective(Grade var1);

    Grade selectByPrimaryKey(Integer var1);

    int updateByPrimaryKeySelective(Grade var1);

    int updateByPrimaryKey(Grade var1);

    List<Grade> findAllGrade();
}
