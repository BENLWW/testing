//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.pojo;

import java.util.Date;

public class STeacher {
    private Integer teacherId;
    private Integer teacherNumber;
    private String teacherName;
    private String teachingSubject;
    private String teacherPhone;
    private Date teacherAccountEffectTime;
    private String teacherEmail;
    private String tacherLapse;
    private Date tacherLapseTime;
    private String teacherGradeName;
    private String remark;

    public STeacher() {
    }

    public Integer getTeacherId() {
        return this.teacherId;
    }

    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
    }

    public Integer getTeacherNumber() {
        return this.teacherNumber;
    }

    public void setTeacherNumber(Integer teacherNumber) {
        this.teacherNumber = teacherNumber;
    }

    public String getTeacherName() {
        return this.teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName == null ? null : teacherName.trim();
    }

    public String getTeachingSubject() {
        return this.teachingSubject;
    }

    public void setTeachingSubject(String teachingSubject) {
        this.teachingSubject = teachingSubject == null ? null : teachingSubject.trim();
    }

    public String getTeacherPhone() {
        return this.teacherPhone;
    }

    public void setTeacherPhone(String teacherPhone) {
        this.teacherPhone = teacherPhone == null ? null : teacherPhone.trim();
    }

    public Date getTeacherAccountEffectTime() {
        return this.teacherAccountEffectTime;
    }

    public void setTeacherAccountEffectTime(Date teacherAccountEffectTime) {
        this.teacherAccountEffectTime = teacherAccountEffectTime;
    }

    public String getTeacherEmail() {
        return this.teacherEmail;
    }

    public void setTeacherEmail(String teacherEmail) {
        this.teacherEmail = teacherEmail == null ? null : teacherEmail.trim();
    }

    public String getTacherLapse() {
        return this.tacherLapse;
    }

    public void setTacherLapse(String tacherLapse) {
        this.tacherLapse = tacherLapse == null ? null : tacherLapse.trim();
    }

    public Date getTacherLapseTime() {
        return this.tacherLapseTime;
    }

    public void setTacherLapseTime(Date tacherLapseTime) {
        this.tacherLapseTime = tacherLapseTime;
    }

    public String getTeacherGradeName() {
        return this.teacherGradeName;
    }

    public void setTeacherGradeName(String teacherGradeName) {
        this.teacherGradeName = teacherGradeName == null ? null : teacherGradeName.trim();
    }

    public String getRemark() {
        return this.remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}
