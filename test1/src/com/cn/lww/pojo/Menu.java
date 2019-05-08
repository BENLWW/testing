//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.pojo;

import java.util.Date;

public class Menu {
    private Integer menuId;
    private String menuName;
    private Integer menuLevel;
    private Integer menuParentNode;
    private String menuPath;
    private String menuUrl;
    private String menuLeafNode;
    private String menuIsShow;
    private String menuIsChoose;
    private Date menuInTableTime;
    private Date menuEffectTime;
    private Date menuIneffectivenessTime;

    public Menu() {
    }

    public Integer getMenuId() {
        return this.menuId;
    }

    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }

    public String getMenuName() {
        return this.menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName == null ? null : menuName.trim();
    }

    public Integer getMenuLevel() {
        return this.menuLevel;
    }

    public void setMenuLevel(Integer menuLevel) {
        this.menuLevel = menuLevel;
    }

    public Integer getMenuParentNode() {
        return this.menuParentNode;
    }

    public void setMenuParentNode(Integer menuParentNode) {
        this.menuParentNode = menuParentNode;
    }

    public String getMenuPath() {
        return this.menuPath;
    }

    public void setMenuPath(String menuPath) {
        this.menuPath = menuPath == null ? null : menuPath.trim();
    }

    public String getMenuUrl() {
        return this.menuUrl;
    }

    public void setMenuUrl(String menuUrl) {
        this.menuUrl = menuUrl == null ? null : menuUrl.trim();
    }

    public String getMenuLeafNode() {
        return this.menuLeafNode;
    }

    public void setMenuLeafNode(String menuLeafNode) {
        this.menuLeafNode = menuLeafNode == null ? null : menuLeafNode.trim();
    }

    public String getMenuIsShow() {
        return this.menuIsShow;
    }

    public void setMenuIsShow(String menuIsShow) {
        this.menuIsShow = menuIsShow == null ? null : menuIsShow.trim();
    }

    public String getMenuIsChoose() {
        return this.menuIsChoose;
    }

    public void setMenuIsChoose(String menuIsChoose) {
        this.menuIsChoose = menuIsChoose == null ? null : menuIsChoose.trim();
    }

    public Date getMenuInTableTime() {
        return this.menuInTableTime;
    }

    public void setMenuInTableTime(Date menuInTableTime) {
        this.menuInTableTime = menuInTableTime;
    }

    public Date getMenuEffectTime() {
        return this.menuEffectTime;
    }

    public void setMenuEffectTime(Date menuEffectTime) {
        this.menuEffectTime = menuEffectTime;
    }

    public Date getMenuIneffectivenessTime() {
        return this.menuIneffectivenessTime;
    }

    public void setMenuIneffectivenessTime(Date menuIneffectivenessTime) {
        this.menuIneffectivenessTime = menuIneffectivenessTime;
    }
}
