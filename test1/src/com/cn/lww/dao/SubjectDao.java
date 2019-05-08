//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.dao;

import com.cn.lww.pojo.Subject;
import java.util.List;

public interface SubjectDao {
    int deleteByPrimaryKey(Integer var1);

    int insert(Subject var1);

    int insertSelective(Subject var1);

    Subject selectByPrimaryKey(Integer var1);

    int updateByPrimaryKeySelective(Subject var1);

    int updateByPrimaryKey(Subject var1);

    Subject selectByName(String var1);

    List<Subject> findAll();
}
