//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.pojo;

public class Classtype {
    private Integer classId;
    private String className;
    private String classCode;
    private Integer classTeacherId;

    public Classtype() {
    }

    public Integer getClassId() {
        return this.classId;
    }

    public void setClassId(Integer classId) {
        this.classId = classId;
    }

    public String getClassName() {
        return this.className;
    }

    public void setClassName(String className) {
        this.className = className == null ? null : className.trim();
    }

    public String getClassCode() {
        return this.classCode;
    }

    public void setClassCode(String classCode) {
        this.classCode = classCode == null ? null : classCode.trim();
    }

    public Integer getClassTeacherId() {
        return this.classTeacherId;
    }

    public void setClassTeacherId(Integer classTeacherId) {
        this.classTeacherId = classTeacherId;
    }
}
