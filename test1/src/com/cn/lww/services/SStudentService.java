//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.services;

import com.cn.lww.pojo.SStudent;
import java.util.List;

public interface SStudentService {
    SStudent selectByStudentNumber(Integer var1);

    List<SStudent> getAllStudent();

    List<SStudent> findStudentBySome(SStudent var1);
}
