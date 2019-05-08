//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.pojo;

public class Grade {
    private Integer gradeId;
    private String gradeName;
    private String gradeCode;
    private Integer tId;

    public Grade() {
    }

    public Integer getGradeId() {
        return this.gradeId;
    }

    public void setGradeId(Integer gradeId) {
        this.gradeId = gradeId;
    }

    public String getGradeName() {
        return this.gradeName;
    }

    public void setGradeName(String gradeName) {
        this.gradeName = gradeName == null ? null : gradeName.trim();
    }

    public String getGradeCode() {
        return this.gradeCode;
    }

    public void setGradeCode(String gradeCode) {
        this.gradeCode = gradeCode == null ? null : gradeCode.trim();
    }

    public Integer gettId() {
        return this.tId;
    }

    public void settId(Integer tId) {
        this.tId = tId;
    }
}
