//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.pojo;

import java.util.Date;

public class User {
    private Integer userId;
    private Integer userNumber;
    private String userName;
    private Integer userPosition;
    private String userPassword;
    private String userPhone;
    private String userEmail;
    private String userLapse;
    private Date userLapseTime;
    private Date lastJoinTime;
    private String remark;

    public User() {
    }

    public Integer getUserId() {
        return this.userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getUserNumber() {
        return this.userNumber;
    }

    public void setUserNumber(Integer userNumber) {
        this.userNumber = userNumber;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public Integer getUserPosition() {
        return this.userPosition;
    }

    public void setUserPosition(Integer userPosition) {
        this.userPosition = userPosition;
    }

    public String getUserPassword() {
        return this.userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword == null ? null : userPassword.trim();
    }

    public String getUserPhone() {
        return this.userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone == null ? null : userPhone.trim();
    }

    public String getUserEmail() {
        return this.userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail == null ? null : userEmail.trim();
    }

    public String getUserLapse() {
        return this.userLapse;
    }

    public void setUserLapse(String userLapse) {
        this.userLapse = userLapse == null ? null : userLapse.trim();
    }

    public Date getUserLapseTime() {
        return this.userLapseTime;
    }

    public void setUserLapseTime(Date userLapseTime) {
        this.userLapseTime = userLapseTime;
    }

    public Date getLastJoinTime() {
        return this.lastJoinTime;
    }

    public void setLastJoinTime(Date lastJoinTime) {
        this.lastJoinTime = lastJoinTime;
    }

    public String getRemark() {
        return this.remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}
