//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.service.impl;

import com.cn.lww.dao.ClasstypeDao;
import com.cn.lww.pojo.Classtype;
import com.cn.lww.services.ClasstypeService;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

@Service("classtypeService")
public class ClasstypeServiceImpl implements ClasstypeService {
    @Resource
    ClasstypeDao classtypeDao;

    public ClasstypeServiceImpl() {
    }

    public int deleteByPrimaryKey(Integer classId) {
        return this.classtypeDao.deleteByPrimaryKey(classId);
    }

    public int insert(Classtype record) {
        return this.classtypeDao.insert(record);
    }

    public int insertSelective(Classtype record) {
        return this.classtypeDao.insertSelective(record);
    }

    public Classtype selectByPrimaryKey(Integer classId) {
        return this.classtypeDao.selectByPrimaryKey(classId);
    }

    public int updateByPrimaryKeySelective(Classtype record) {
        return this.classtypeDao.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(Classtype record) {
        return this.classtypeDao.updateByPrimaryKey(record);
    }

    public List<Classtype> findAllClass() {
        return this.classtypeDao.findAllClass();
    }
}
