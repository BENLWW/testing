//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.pojo;

import java.util.Date;

public class Score {
    private Integer scoreId;
    private Integer score;
    private Integer subjectId;
    private Integer studentNumber;
    private Integer subjectTeacherNumber;
    private Integer modificationTeacherNumber;
    private Date scoreJoinTime;
    private String scoreGrade;
    private String scoreTeam;
    private String descript;

    public Score() {
    }

    public Integer getScoreId() {
        return this.scoreId;
    }

    public void setScoreId(Integer scoreId) {
        this.scoreId = scoreId;
    }

    public Integer getScore() {
        return this.score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public Integer getSubjectId() {
        return this.subjectId;
    }

    public void setSubjectId(Integer subjectId) {
        this.subjectId = subjectId;
    }

    public Integer getStudentNumber() {
        return this.studentNumber;
    }

    public void setStudentNumber(Integer studentNumber) {
        this.studentNumber = studentNumber;
    }

    public Integer getSubjectTeacherNumber() {
        return this.subjectTeacherNumber;
    }

    public void setSubjectTeacherNumber(Integer subjectTeacherNumber) {
        this.subjectTeacherNumber = subjectTeacherNumber;
    }

    public Integer getModificationTeacherNumber() {
        return this.modificationTeacherNumber;
    }

    public void setModificationTeacherNumber(Integer modificationTeacherNumber) {
        this.modificationTeacherNumber = modificationTeacherNumber;
    }

    public Date getScoreJoinTime() {
        return this.scoreJoinTime;
    }

    public void setScoreJoinTime(Date scoreJoinTime) {
        this.scoreJoinTime = scoreJoinTime;
    }

    public String getScoreGrade() {
        return this.scoreGrade;
    }

    public void setScoreGrade(String scoreGrade) {
        this.scoreGrade = scoreGrade == null ? null : scoreGrade.trim();
    }

    public String getScoreTeam() {
        return this.scoreTeam;
    }

    public void setScoreTeam(String scoreTeam) {
        this.scoreTeam = scoreTeam == null ? null : scoreTeam.trim();
    }

    public String getDescript() {
        return this.descript;
    }

    public void setDescript(String descript) {
        this.descript = descript == null ? null : descript.trim();
    }
}
