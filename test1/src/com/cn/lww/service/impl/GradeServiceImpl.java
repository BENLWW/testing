//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.service.impl;

import com.cn.lww.dao.GradeDao;
import com.cn.lww.pojo.Grade;
import com.cn.lww.services.GradeService;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

@Service("gradeService")
public class GradeServiceImpl implements GradeService {
    @Resource
    GradeDao gradeDao;

    public GradeServiceImpl() {
    }

    public int deleteByPrimaryKey(Integer gradeId) {
        return 0;
    }

    public int insert(Grade record) {
        return 0;
    }

    public int insertSelective(Grade record) {
        return 0;
    }

    public Grade selectByPrimaryKey(Integer gradeId) {
        return this.gradeDao.selectByPrimaryKey(gradeId);
    }

    public int updateByPrimaryKeySelective(Grade record) {
        return 0;
    }

    public int updateByPrimaryKey(Grade record) {
        return 0;
    }

    public List<Grade> findAllGrade() {
        return this.gradeDao.findAllGrade();
    }
}
