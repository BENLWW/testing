//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.pojo;

public class Role {
    private Integer roleGroupId;
    private String roleGroupName;
    private String roleGroup;
    private Integer roleGroupMaxCount;
    private Integer roleGroupNewCount;
    private String roleDescribe;

    public Role() {
    }

    public Integer getRoleGroupId() {
        return this.roleGroupId;
    }

    public void setRoleGroupId(Integer roleGroupId) {
        this.roleGroupId = roleGroupId;
    }

    public String getRoleGroupName() {
        return this.roleGroupName;
    }

    public void setRoleGroupName(String roleGroupName) {
        this.roleGroupName = roleGroupName == null ? null : roleGroupName.trim();
    }

    public String getRoleGroup() {
        return this.roleGroup;
    }

    public void setRoleGroup(String roleGroup) {
        this.roleGroup = roleGroup == null ? null : roleGroup.trim();
    }

    public Integer getRoleGroupMaxCount() {
        return this.roleGroupMaxCount;
    }

    public void setRoleGroupMaxCount(Integer roleGroupMaxCount) {
        this.roleGroupMaxCount = roleGroupMaxCount;
    }

    public Integer getRoleGroupNewCount() {
        return this.roleGroupNewCount;
    }

    public void setRoleGroupNewCount(Integer roleGroupNewCount) {
        this.roleGroupNewCount = roleGroupNewCount;
    }

    public String getRoleDescribe() {
        return this.roleDescribe;
    }

    public void setRoleDescribe(String roleDescribe) {
        this.roleDescribe = roleDescribe == null ? null : roleDescribe.trim();
    }
}
