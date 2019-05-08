//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.pojo;

public class PermissionsType {
    private Integer permissionsId;
    private String permissionsName;
    private String permissionsIdentification;

    public PermissionsType() {
    }

    public Integer getPermissionsId() {
        return this.permissionsId;
    }

    public void setPermissionsId(Integer permissionsId) {
        this.permissionsId = permissionsId;
    }

    public String getPermissionsName() {
        return this.permissionsName;
    }

    public void setPermissionsName(String permissionsName) {
        this.permissionsName = permissionsName == null ? null : permissionsName.trim();
    }

    public String getPermissionsIdentification() {
        return this.permissionsIdentification;
    }

    public void setPermissionsIdentification(String permissionsIdentification) {
        this.permissionsIdentification = permissionsIdentification == null ? null : permissionsIdentification.trim();
    }
}
