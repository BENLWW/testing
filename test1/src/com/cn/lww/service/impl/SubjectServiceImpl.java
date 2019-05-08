//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.service.impl;

import com.cn.lww.dao.SubjectDao;
import com.cn.lww.pojo.Subject;
import com.cn.lww.services.SubjectService;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

@Service("subjectService")
public class SubjectServiceImpl implements SubjectService {
    @Resource
    SubjectDao subjectDao;

    public SubjectServiceImpl() {
    }

    public Subject selectByPrimaryKey(Integer subjectId) {
        return this.subjectDao.selectByPrimaryKey(subjectId);
    }

    public Subject selectByName(String SN) {
        return this.subjectDao.selectByName(SN);
    }

    public List<Subject> findAll() {
        return this.subjectDao.findAll();
    }
}
