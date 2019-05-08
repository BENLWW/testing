//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.services;

import com.cn.lww.pojo.Subject;
import java.util.List;

public interface SubjectService {
    Subject selectByPrimaryKey(Integer var1);

    Subject selectByName(String var1);

    List<Subject> findAll();
}
