//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.conf;

import com.cn.lww.pojo.Menu;
import com.cn.lww.pojo.Role;
import com.cn.lww.pojo.RoleGroupCorrelate;
import com.cn.lww.services.MenuService;
import com.cn.lww.services.RoleGroupCorrelateService;
import com.cn.lww.services.RoleService;
import java.util.ArrayList;
import java.util.List;
import org.springframework.http.HttpRequest;

public class PermissionsOrRoleCheck {
    public PermissionsOrRoleCheck() {
    }

    public static String getPermissions(HttpRequest request, String userId) {
        return null;
    }

    public static Role getRole(RoleService roleService, Integer RoleID) {
        Role role = roleService.selectByPrimaryKey(RoleID);
        System.out.println(role.getRoleGroupId() + "   " + role.getRoleGroupName() + "   " + role.getRoleDescribe() + "   " + role.getRoleGroup());
        return roleService.selectByPrimaryKey(RoleID);
    }

    public static List<Menu> CreateMenuString(MenuService menuService, RoleGroupCorrelateService roleGroupCorrelateService, Integer roleGroupID) {
        List<RoleGroupCorrelate> rList = roleGroupCorrelateService.selectByRoleGroupID(roleGroupID);
        System.out.println(rList.size() + "   " + roleGroupID);
        List<Menu> mueList = new ArrayList();

        for(int i = 0; i < rList.size(); ++i) {
            if (JudgmentAllReason.ineffectiveness(menuService.selectByPrimaryKey(((RoleGroupCorrelate)rList.get(i)).getMenuId()).getMenuIneffectivenessTime())) {
                System.out.println("失效了");
            } else if (!JudgmentAllReason.isShow(menuService.selectByPrimaryKey(((RoleGroupCorrelate)rList.get(i)).getMenuId()).getMenuIsShow())) {
                System.out.println("不显示");
            } else {
                mueList.add(menuService.selectByPrimaryKey(((RoleGroupCorrelate)rList.get(i)).getMenuId()));
            }
        }

        System.out.println(mueList.size());
        return mueList;
    }
}
