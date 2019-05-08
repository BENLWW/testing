//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.services;

import com.cn.lww.pojo.STeacher;
import java.util.List;

public interface STeacherService {
    STeacher selectByTeacherNumber(Integer var1);

    List<STeacher> selectByName(String var1);
}
