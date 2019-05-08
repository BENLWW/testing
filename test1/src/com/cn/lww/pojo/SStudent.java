//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.pojo;

import java.util.Date;

public class SStudent {
    private Integer studentId;
    private Integer studentNumber;
    private String studentName;
    private Integer teacherNumber;
    private String studentLapse;
    private Date studentLapseTime;
    private String className;
    private String studentGradeName;
    private String remark;

    public SStudent() {
    }

    public Integer getStudentId() {
        return this.studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }

    public Integer getStudentNumber() {
        return this.studentNumber;
    }

    public void setStudentNumber(Integer studentNumber) {
        this.studentNumber = studentNumber;
    }

    public String getStudentName() {
        return this.studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName == null ? null : studentName.trim();
    }

    public Integer getTeacherNumber() {
        return this.teacherNumber;
    }

    public void setTeacherNumber(Integer teacherNumber) {
        this.teacherNumber = teacherNumber;
    }

    public String getStudentLapse() {
        return this.studentLapse;
    }

    public void setStudentLapse(String studentLapse) {
        this.studentLapse = studentLapse == null ? null : studentLapse.trim();
    }

    public Date getStudentLapseTime() {
        return this.studentLapseTime;
    }

    public void setStudentLapseTime(Date studentLapseTime) {
        this.studentLapseTime = studentLapseTime;
    }

    public String getClassName() {
        return this.className;
    }

    public void setClassName(String className) {
        this.className = className == null ? null : className.trim();
    }

    public String getStudentGradeName() {
        return this.studentGradeName;
    }

    public void setStudentGradeName(String studentGradeName) {
        this.studentGradeName = studentGradeName == null ? null : studentGradeName.trim();
    }

    public String getRemark() {
        return this.remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}
