//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.conf;

import com.cn.lww.pojo.Classtype;
import com.cn.lww.pojo.ClasstypeExtension;
import com.cn.lww.pojo.Grade;
import com.cn.lww.pojo.GradeExtension;
import com.cn.lww.pojo.PermissionsExtension;
import com.cn.lww.pojo.SStudent;
import com.cn.lww.pojo.SStudentExtension;
import com.cn.lww.pojo.Score;
import com.cn.lww.pojo.ScoreExtension;
import com.cn.lww.services.ClasstypeService;
import com.cn.lww.services.GradeService;
import com.cn.lww.services.PermissionsTypeService;
import com.cn.lww.services.SStudentService;
import com.cn.lww.services.STeacherService;
import com.cn.lww.services.ScoreService;
import com.cn.lww.services.SubjectService;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class JudgmentAllReason {
    public JudgmentAllReason() {
    }

    public static boolean JUPermissions() {
        return false;
    }

    public static boolean ineffectiveness(Date ineffectivenessTime) {
        Date d = new Date();
        if (d.getTime() > ineffectivenessTime.getTime()) {
            System.out.println("失效");
            return true;
        } else {
            return false;
        }
    }

    public static boolean isShow(String NY) {
        return !NY.equals("N");
    }

    public static PermissionsExtension getPermissions(PermissionsTypeService permissionsTypeService, String RGID) {
        PermissionsExtension permissionsExtension = new PermissionsExtension();
        permissionsExtension.setAuthorise("N");
        permissionsExtension.setCheck("N");
        permissionsExtension.setDelete("N");
        permissionsExtension.setInputting("N");
        permissionsExtension.setModifacation("N");
        String[] p = RGID.split(",");

        for(int i = 0; i < p.length; ++i) {
            if (permissionsTypeService.selectByPrimaryKey(Integer.valueOf(p[i])).getPermissionsIdentification().equals("mKMVwPxxl6cIOO7rR0xaBg==")) {
                permissionsExtension.setAuthorise("Y");
            } else if (permissionsTypeService.selectByPrimaryKey(Integer.valueOf(p[i])).getPermissionsIdentification().equals("vukS157vtzNZiMSZeqkTjQ==")) {
                permissionsExtension.setCheck("Y");
            } else if (permissionsTypeService.selectByPrimaryKey(Integer.valueOf(p[i])).getPermissionsIdentification().equals("L0qt3eM8m5PDb9JQPz0SKw==")) {
                permissionsExtension.setDelete("Y");
            } else if (permissionsTypeService.selectByPrimaryKey(Integer.valueOf(p[i])).getPermissionsIdentification().equals("yVIRpUCgVw6MSwKCuE7lKA==")) {
                permissionsExtension.setInputting("Y");
            } else if (permissionsTypeService.selectByPrimaryKey(Integer.valueOf(p[i])).getPermissionsIdentification().equals("g0epJ8CaTsL+RzsKk/Zn0A==")) {
                permissionsExtension.setModifacation("Y");
            }
        }

        return permissionsExtension;
    }

    public static String JUTime() {
        Calendar cal = Calendar.getInstance();
        cal.setTime(new Date());
        String welcome = "";
        int hour = cal.get(11);
        if (hour >= 0 && hour < 6) {
            welcome = "凌晨好";
        }

        if (hour >= 6 && hour < 12) {
            welcome = "上午好";
        } else if (hour >= 12 && hour < 18) {
            welcome = "下午好";
        } else {
            welcome = "晚上好";
        }

        System.out.println(welcome);
        return welcome;
    }

    public static Date getNowTime() {
        Date date = new Date();
        return date;
    }

    public static boolean isNumeric(String str) {
        if (!str.isEmpty() && str != null) {
            Pattern pattern = Pattern.compile("[0-9]*");
            Matcher isNum = pattern.matcher(str);
            return isNum.matches();
        } else {
            return false;
        }
    }

    public static List<ScoreExtension> getScoreExtensions(List<Score> scores, Integer ID, ScoreService scoreService, SubjectService subjectService, STeacherService sTeacherService, SStudentService sStudentService, GradeService gradeService) {
        List<ScoreExtension> scoreExtension = new ArrayList();

        for(int i = 0; i < scores.size(); ++i) {
            ScoreExtension scoreExtension2 = new ScoreExtension();
            scoreExtension2.setSubject(subjectService.selectByPrimaryKey(((Score)scores.get(i)).getSubjectId()).getSubjectName());
            scoreExtension2.setScore((Score)scores.get(i));
            scoreExtension2.setStudentName(sStudentService.selectByStudentNumber(((Score)scores.get(i)).getStudentNumber()).getStudentName());
            scoreExtension2.setSubjectTeacherName(sTeacherService.selectByTeacherNumber(((Score)scores.get(i)).getSubjectTeacherNumber()).getTeacherName());
            scoreExtension2.setModificationTeacherName(sTeacherService.selectByTeacherNumber(((Score)scores.get(i)).getModificationTeacherNumber()).getTeacherName());
            scoreExtension.add(scoreExtension2);
        }

        return scoreExtension;
    }

    public static List<GradeExtension> getGradeExtensions(List<Grade> grades, SStudentService sStudentService, GradeService gradeService, STeacherService sTeacherService) {
        List<GradeExtension> gradeExtensions = new ArrayList();

        for(int i = 0; i < grades.size(); ++i) {
            GradeExtension gradeExtension = new GradeExtension();
            SStudent sStudent = new SStudent();
            gradeExtension.setTeacherName(sTeacherService.selectByTeacherNumber(((Grade)grades.get(i)).gettId()).getTeacherName());
            gradeExtension.setGrade((Grade)grades.get(i));
            sStudent.setStudentGradeName(((Grade)grades.get(i)).getGradeName());
            Integer count = sStudentService.findStudentBySome(sStudent).size();
            gradeExtension.setCount(count);
            gradeExtensions.add(gradeExtension);
        }

        return gradeExtensions;
    }

    public static List<ClasstypeExtension> getClasstypeExtensions(List<Classtype> classtypes, Integer GradeID, SStudentService sStudentService, STeacherService sTeacherService, ClasstypeService classtypeService, GradeService gradeService) {
        List<ClasstypeExtension> classtypeExtensions = new ArrayList();

        for(int i = 0; i < classtypes.size(); ++i) {
            ClasstypeExtension classtypeExtension = new ClasstypeExtension();
            SStudent sStudent = new SStudent();
            classtypeExtension.setClasstype((Classtype)classtypes.get(i));
            String name = gradeService.selectByPrimaryKey(GradeID).getGradeName();
            sStudent.setStudentGradeName(name);
            sStudent.setClassName(((Classtype)classtypes.get(i)).getClassName());
            Integer count = sStudentService.findStudentBySome(sStudent).size();
            classtypeExtension.setCount(count);
            classtypeExtension.setGradeName(name);
            classtypeExtension.setTeacherNo(((Classtype)classtypes.get(i)).getClassTeacherId());
            System.out.println(((Classtype)classtypes.get(i)).getClassTeacherId());
            classtypeExtension.setTeacherName(sTeacherService.selectByTeacherNumber(((Classtype)classtypes.get(i)).getClassTeacherId()).getTeacherName());
            classtypeExtension.setGradeid(GradeID);
            classtypeExtensions.add(classtypeExtension);
        }

        return classtypeExtensions;
    }

    public static List<SStudentExtension> getStudentExtensions(List<SStudent> students, Integer GID, SStudentService sStudentService, STeacherService sTeacherService) {
        List<SStudentExtension> sStudentExtensions = new ArrayList();

        for(int i = 0; i < students.size(); ++i) {
            SStudentExtension sStudentExtension = new SStudentExtension();
            sStudentExtension.setTeacherName(sTeacherService.selectByTeacherNumber(((SStudent)students.get(i)).getTeacherNumber()).getTeacherName());
            sStudentExtension.setsStudent((SStudent)students.get(i));
            sStudentExtension.setGid(GID);
            sStudentExtensions.add(sStudentExtension);
        }

        return sStudentExtensions;
    }

    public static List<Score> getScores(ScoreService scoreService, STeacherService sTeacherService, SubjectService subjectService, ScoreExtension s, Score score) {
        if (s.getSubject() != null) {
            score.setScore(subjectService.selectByName(s.getSubject()).getSubjectId());
        }

        List<Score> scores = scoreService.findScoreBySome(score);
        return scores;
    }
}
