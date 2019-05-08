//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.services;

import com.cn.lww.pojo.Classtype;
import java.util.List;

public interface ClasstypeService {
    int deleteByPrimaryKey(Integer var1);

    int insert(Classtype var1);

    int insertSelective(Classtype var1);

    Classtype selectByPrimaryKey(Integer var1);

    int updateByPrimaryKeySelective(Classtype var1);

    int updateByPrimaryKey(Classtype var1);

    List<Classtype> findAllClass();
}
