//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.service.impl;

import com.cn.lww.dao.UserDao;
import com.cn.lww.pojo.User;
import com.cn.lww.services.UserService;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;

    public UserServiceImpl() {
    }

    public int deleteByPrimaryKey(Integer userId) {
        return this.userDao.deleteByPrimaryKey(userId);
    }

    public int insert(User record) {
        return this.userDao.insert(record);
    }

    public int insertSelective(User record) {
        return this.userDao.insertSelective(record);
    }

    public User selectByPrimaryKey(Integer userId) {
        return this.userDao.selectByPrimaryKey(userId);
    }

    public int updateByPrimaryKeySelective(User record) {
        return this.userDao.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKeyWithBLOBs(User record) {
        return this.userDao.updateByPrimaryKeyWithBLOBs(record);
    }

    public int updateByPrimaryKey(User record) {
        return this.userDao.updateByPrimaryKey(record);
    }

    public List<User> findAll() {
        List<User> findAllList = this.userDao.findAll();
        return findAllList;
    }

    public User selectByUserNumber(Integer userNumber) {
        return this.userDao.selectByUserNumber(userNumber);
    }
}
