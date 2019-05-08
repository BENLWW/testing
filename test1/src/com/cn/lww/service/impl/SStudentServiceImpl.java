//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.service.impl;

import com.cn.lww.dao.SStudentDao;
import com.cn.lww.pojo.SStudent;
import com.cn.lww.services.SStudentService;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

@Service("sStudentService")
public class SStudentServiceImpl implements SStudentService {
    @Resource
    SStudentDao sStudentDao;

    public SStudentServiceImpl() {
    }

    public SStudent selectByStudentNumber(Integer studentNumber) {
        return this.sStudentDao.selectByStudentNumber(studentNumber);
    }

    public List<SStudent> getAllStudent() {
        return this.sStudentDao.getAllStudent();
    }

    public List<SStudent> findStudentBySome(SStudent students) {
        return this.sStudentDao.findStudentBySome(students);
    }
}
