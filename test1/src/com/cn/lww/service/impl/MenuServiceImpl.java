//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.service.impl;

import com.cn.lww.dao.MenuDao;
import com.cn.lww.pojo.Menu;
import com.cn.lww.services.MenuService;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

@Service("menuService")
public class MenuServiceImpl implements MenuService {
    @Resource
    MenuDao menuDao;

    public MenuServiceImpl() {
    }

    public int deleteByPrimaryKey(Integer menuId) {
        return 0;
    }

    public int insert(Menu record) {
        return 0;
    }

    public int insertSelective(Menu record) {
        return 0;
    }

    public Menu selectByPrimaryKey(Integer menuId) {
        return this.menuDao.selectByPrimaryKey(menuId);
    }

    public int updateByPrimaryKeySelective(Menu record) {
        return 0;
    }

    public int updateByPrimaryKey(Menu record) {
        return 0;
    }
}
