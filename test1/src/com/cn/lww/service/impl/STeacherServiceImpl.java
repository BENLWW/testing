//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.service.impl;

import com.cn.lww.dao.STeacherDao;
import com.cn.lww.pojo.STeacher;
import com.cn.lww.services.STeacherService;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

@Service("sTeacherService")
public class STeacherServiceImpl implements STeacherService {
    @Resource
    STeacherDao sTeacherDao;

    public STeacherServiceImpl() {
    }

    public STeacher selectByTeacherNumber(Integer TeacherNumber) {
        return this.sTeacherDao.selectByTeacherNumber(TeacherNumber);
    }

    public List<STeacher> selectByName(String TName) {
        return this.sTeacherDao.selectByName(TName);
    }
}
