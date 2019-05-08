//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.controller;

import com.cn.lww.conf.JudgmentAllReason;
import com.cn.lww.conf.PGSession;
import com.cn.lww.pojo.Classtype;
import com.cn.lww.pojo.ClasstypeExtension;
import com.cn.lww.pojo.Grade;
import com.cn.lww.pojo.GradeExtension;
import com.cn.lww.pojo.PermissionsExtension;
import com.cn.lww.pojo.SStudent;
import com.cn.lww.pojo.SStudentExtension;
import com.cn.lww.pojo.STeacher;
import com.cn.lww.pojo.Score;
import com.cn.lww.pojo.ScoreExtension;
import com.cn.lww.pojo.Subject;
import com.cn.lww.services.ClasstypeService;
import com.cn.lww.services.GradeService;
import com.cn.lww.services.SStudentService;
import com.cn.lww.services.STeacherService;
import com.cn.lww.services.ScoreService;
import com.cn.lww.services.SubjectService;
import com.cn.lww.services.UserService;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping({"/mainpage"})
public class UserController {
    @Resource
    private UserService userService;
    @Resource
    private ScoreService scoreService;
    @Resource
    private SStudentService sStudentService;
    @Resource
    private STeacherService sTeacherService;
    @Resource
    private SubjectService subjectService;
    @Resource
    private GradeService gradeService;
    @Resource
    private ClasstypeService classtypeService;

    public UserController() {
    }

    @RequestMapping({"/gradescoreinfo"})
    public String toGradeScoreInfo(HttpServletRequest request, Model model) {
        Cookie cookie = (Cookie)PGSession.GetSession(request, "cookie");
        if (cookie == null) {
            return "error";
        } else {
            HttpSession session = request.getSession(true);
            PermissionsExtension permissionsExtension = (PermissionsExtension)session.getAttribute("Permissions");
            List<Grade> grades = this.gradeService.findAllGrade();
            List<GradeExtension> gradeExtensions = JudgmentAllReason.getGradeExtensions(grades, this.sStudentService, this.gradeService, this.sTeacherService);
            PGSession.AddSession(request, "pm", permissionsExtension);
            model.addAttribute("grades", gradeExtensions);
            return "mainpage/gradescoreinfo";
        }
    }

    @RequestMapping({"/studentsore"})
    public String toIndex(HttpServletRequest request, Model model) throws UnsupportedEncodingException {
        Cookie cookie = (Cookie)PGSession.GetSession(request, "cookie");
        if (cookie == null) {
            return "error";
        } else {
        	System.out.println(request.getParameter("grade"));
            String grade = URLDecoder.decode(request.getParameter("grade"), "UTF-8");
            Integer Team = Integer.valueOf(request.getParameter("Team"));
            HttpSession session = request.getSession(true);
            PermissionsExtension permissionsExtension = (PermissionsExtension)session.getAttribute("Permissions");
            List<Score> scores = this.scoreService.findAllScore(Team, grade);
            List<ScoreExtension> scoreExtension = JudgmentAllReason.getScoreExtensions(scores, 0, this.scoreService, this.subjectService, this.sTeacherService, this.sStudentService, this.gradeService);
            PGSession.AddSession(request, "pm", permissionsExtension);
            PGSession.AddSession(request, "grade", grade);
            PGSession.AddSession(request, "Team", Team);
            model.addAttribute("scores", scoreExtension);
            return "mainpage/studentsore";
        }
    }

    @RequestMapping({"/seacherstudent"})
    public String getSeacherStudents(HttpServletRequest request, Model model) throws UnsupportedEncodingException {
        Score score = new Score();
        ScoreExtension scoreExtension = new ScoreExtension();
        if (request.getParameter("mTeacherNumber") != null) {
            if (!JudgmentAllReason.isNumeric(request.getParameter("mTeacherNumber"))) {
                scoreExtension.setModificationTeacherName((String)null);
            } else {
                score.setModificationTeacherNumber(Integer.valueOf(request.getParameter("mTeacherNumber")));
            }
        }

        if (request.getParameter("sNumber") != null) {
            if (!JudgmentAllReason.isNumeric(request.getParameter("sNumber"))) {
                scoreExtension.setStudentName(request.getParameter("sName"));
            } else {
                score.setStudentNumber(Integer.valueOf(request.getParameter("sNumber")));
            }
        }

        if (request.getParameter("sTeacherNumber") != null) {
            if (!JudgmentAllReason.isNumeric(request.getParameter("sTeacherNumber"))) {
                scoreExtension.setSubjectTeacherName((String)null);
            } else {
                score.setSubjectTeacherNumber(Integer.valueOf(request.getParameter("sTeacherNumber")));
            }
        }

        if (request.getParameter("score") != null && JudgmentAllReason.isNumeric(request.getParameter("score"))) {
            score.setScore(Integer.valueOf(request.getParameter("score")));
        }

        if (request.getParameter("subject") != null && !JudgmentAllReason.isNumeric("subject")) {
            score.setSubjectId(Integer.valueOf(request.getParameter("subject")));
        }

        new Date();
        if (request.getParameter("sJTime") != null) {
            SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

            try {
                Date date = time.parse(request.getParameter("sJTime") + " 00:00:00");
                score.setScoreJoinTime(date);
            } catch (ParseException var9) {
            }
        }

        if (request.getParameter("sTeam") != null && (request.getParameter("sTeam").equals("第一学期") || request.getParameter("sTeam").equals("第二学期"))) {
            score.setScoreTeam(request.getParameter("sTeam"));
        }

        scoreExtension.setScore(score);
        List<Subject> subjects = this.subjectService.findAll();
        model.addAttribute("subjects", subjects);
        List<Score> scores = JudgmentAllReason.getScores(this.scoreService, this.sTeacherService, this.subjectService, scoreExtension, score);
        List<ScoreExtension> scoreExtension1 = JudgmentAllReason.getScoreExtensions(scores, 0, this.scoreService, this.subjectService, this.sTeacherService, this.sStudentService, this.gradeService);
        model.addAttribute("scores", scoreExtension1);
        return "mainpage/scorecheck";
    }

    @RequestMapping({"/delinfoscore"})
    public String DelScore(HttpServletRequest request, Model model) {
        if (request.getParameter("id") != null) {
            System.out.println(request.getParameter("id"));
            this.scoreService.deleteByPrimaryKey(Integer.valueOf(request.getParameter("id")));
        }

        Integer Team = 3;
        Integer GradeID = 0;
        List<Score> scores = this.scoreService.findAllScore(Team, "");
        List<ScoreExtension> scoreExtension = JudgmentAllReason.getScoreExtensions(scores, GradeID, this.scoreService, this.subjectService, this.sTeacherService, this.sStudentService, this.gradeService);
        model.addAttribute("scores", scoreExtension);
        return "mainpage/studentsore";
    }

    @RequestMapping({"/insertscore"})
    public String InsScorePage(HttpServletRequest request, Model model) throws UnsupportedEncodingException {
        String grade = URLDecoder.decode(request.getParameter("grade"), "UTF-8");
        Integer Team = Integer.valueOf(request.getParameter("Team"));
        List<Subject> subjects = this.subjectService.findAll();
        PGSession.AddSession(request, "grade", grade);
        PGSession.AddSession(request, "Team", Team);
        model.addAttribute("subjects", subjects);
        return "mainpage/scoreinsert";
    }

    @RequestMapping({"/insertdeal"})
    public String InsertDealScore(HttpServletRequest request, Model model) {
        Score score = new Score();
        List<String> info = new ArrayList();
        info.clear();
        String Msg = "";
        List<Subject> subjects = this.subjectService.findAll();
        model.addAttribute("subjects", subjects);
        STeacher sTeacher;
        if (request.getParameter("mTeacherNumber") != null) {
            if (!JudgmentAllReason.isNumeric(request.getParameter("mTeacherNumber"))) {
                info.add("必须输入批卷教师工号！");
            } else if (request.getParameter("mTeacherNumber").length() >= 4 && request.getParameter("mTeacherNumber").length() <= 20) {
                sTeacher = this.sTeacherService.selectByTeacherNumber(Integer.valueOf(request.getParameter("mTeacherNumber")));
                if (sTeacher != null) {
                    score.setModificationTeacherNumber(Integer.valueOf(request.getParameter("mTeacherNumber")));
                } else {
                    info.add("无效教师工号！");
                }
            } else {
                info.add("无效教师工号！");
            }
        }

        if (request.getParameter("sNumber") != null) {
            if (!JudgmentAllReason.isNumeric(request.getParameter("sNumber").trim())) {
                info.add("必须输入学生学号！");
            } else if (request.getParameter("sNumber").length() >= 6 && request.getParameter("sNumber").length() <= 20) {
                SStudent sStudent = this.sStudentService.selectByStudentNumber(Integer.valueOf(request.getParameter("sNumber")));
                if (sStudent != null) {
                    score.setStudentNumber(Integer.valueOf(request.getParameter("sNumber")));
                } else {
                    info.add("无效学生学号！");
                }
            } else {
                info.add("无效学生学号！");
            }
        }

        if (request.getParameter("sTeacherNumber") != null) {
            if (!JudgmentAllReason.isNumeric(request.getParameter("sTeacherNumber"))) {
                info.add("必须输入任课教师工号！");
            } else if (request.getParameter("sTeacherNumber").length() >= 4 && request.getParameter("sTeacherNumber").length() <= 20) {
                sTeacher = this.sTeacherService.selectByTeacherNumber(Integer.valueOf(request.getParameter("sTeacherNumber")));
                if (sTeacher != null) {
                    score.setSubjectTeacherNumber(Integer.valueOf(request.getParameter("sTeacherNumber")));
                } else {
                    info.add("无效教师工号！");
                }
            } else {
                info.add("无效教师工号！");
            }
        }

        if (request.getParameter("score") != null) {
            if (!JudgmentAllReason.isNumeric(request.getParameter("score"))) {
                info.add("必须正确输入成绩！");
            } else if (request.getParameter("score").length() >= 0 && request.getParameter("score").length() <= 3) {
                Long sc = Long.valueOf(request.getParameter("score"));
                if (sc >= 0L && sc <= 100L) {
                    score.setScore(Integer.valueOf(request.getParameter("score")));
                } else {
                    info.add(" 成绩取值0-100之间 ");
                }
            } else {
                info.add(" 成绩取值0-100之间 ");
            }
        } else {
            info.add("必须输入成绩！");
        }

        if (request.getParameter("subject") != null) {
            Subject subject = this.subjectService.selectByName(request.getParameter("subject"));
            if (subject != null) {
                score.setSubjectId(Integer.valueOf(request.getParameter("subject")));
            } else {
                info.add("无效科目！");
            }
        } else {
            info.add("必须选择科目！");
        }

        new Date();
        if (request.getParameter("sJTime").trim() == null && request.getParameter("sJTime").trim().equals("")) {
            info.add("必须输入考试时间！");
        } else {
            SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

            try {
                String t = request.getParameter("sJTime").toString() + " 00:00:00";
                Date date = time.parse(t);
                score.setScoreJoinTime(date);
            } catch (ParseException var11) {
                info.add("考试时间格式不正确！");
            }
        }

        if (request.getParameter("sTeam") != null) {
            if (!request.getParameter("sTeam").equals("第一学期") && !request.getParameter("sTeam").equals("第二学期")) {
                info.add("无效学期！");
            } else {
                score.setScoreTeam(request.getParameter("sTeam"));
            }
        } else {
            info.add("必须输入考试学期！");
        }

        if (request.getParameter("sGrade") != null) {
            if (!request.getParameter("sGrade").equals("大一") && !request.getParameter("sGrade").equals("大一") && !request.getParameter("sGrade").equals("大三") && !request.getParameter("sGrade").equals("大四")) {
                info.add("无效学期！");
            } else {
                score.setScoreGrade(request.getParameter("sGrade"));
            }
        } else {
            info.add("必须输入学生年级！");
        }

        if (request.getParameter("Descript") != null) {
            score.setDescript(request.getParameter("Descript"));
        } else {
            info.add("必须输入评语！");
        }

        for(int i = 0; i < info.size(); ++i) {
            if (!info.isEmpty()) {
                model.addAttribute("info", info);
                return "mainpage/scoreinsert";
            }
        }

        if (this.scoreService.insert(score) > 0) {
            Msg = "新增成功！";
        } else {
            Msg = "新增失败！";
        }

        Integer GradeID = 0;
        List<Score> scores = this.scoreService.findScoreBySome(score);
        List<ScoreExtension> scoreExtension = JudgmentAllReason.getScoreExtensions(scores, GradeID, this.scoreService, this.subjectService, this.sTeacherService, this.sStudentService, this.gradeService);
        model.addAttribute("scores", scoreExtension);
        model.addAttribute("Msg", Msg);
        return "mainpage/scoreinsert";
    }

    @RequestMapping({"/modificationPage"})
    public String ModificationPage(HttpServletRequest request, Model model) {
        List<Score> scores = new ArrayList();
        if (request.getParameter("id") != null) {
            Score score = this.scoreService.selectByPrimaryKey(Integer.valueOf(request.getParameter("id")));
            SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            model.addAttribute("scoreJoinTime", time.format(score.getScoreJoinTime()));
            scores.add(score);
        }

        Integer GradeID = Integer.valueOf(request.getParameter("id"));
        List<ScoreExtension> scoreExtension = scores == null ? null : JudgmentAllReason.getScoreExtensions(scores, GradeID, this.scoreService, this.subjectService, this.sTeacherService, this.sStudentService, this.gradeService);
        model.addAttribute("sID", request.getParameter("id"));
        model.addAttribute("scores", scoreExtension);
        return "mainpage/modificationPage";
    }

    @RequestMapping({"/modification"})
    public String Modification(HttpServletRequest request, Model model) throws UnsupportedEncodingException {
        Score score = new Score();
        List<String> info = new ArrayList();
        info.clear();
        String Msg = "";
        List<Subject> subjects = this.subjectService.findAll();
        model.addAttribute("subjects", subjects);
        STeacher sTeacher;
        if (request.getParameter("mTeacherNumber") != null) {
            if (!JudgmentAllReason.isNumeric(request.getParameter("mTeacherNumber"))) {
                info.add("必须输入批卷教师工号！");
            } else if (request.getParameter("mTeacherNumber").length() >= 4 && request.getParameter("mTeacherNumber").length() <= 20) {
                sTeacher = this.sTeacherService.selectByTeacherNumber(Integer.valueOf(request.getParameter("mTeacherNumber")));
                if (sTeacher != null) {
                    score.setModificationTeacherNumber(Integer.valueOf(request.getParameter("mTeacherNumber")));
                } else {
                    info.add("无效教师工号！");
                }
            } else {
                System.out.println("无效教师工号！1");
                info.add("无效教师工号！");
            }
        }

        if (request.getParameter("sNumber") != null) {
            if (!JudgmentAllReason.isNumeric(request.getParameter("sNumber"))) {
                info.add("必须输入学生学号！");
            } else if (request.getParameter("sNumber").length() >= 6 && request.getParameter("sNumber").length() <= 20) {
                SStudent sStudent = this.sStudentService.selectByStudentNumber(Integer.valueOf(request.getParameter("sNumber")));
                if (sStudent != null) {
                    score.setStudentNumber(Integer.valueOf(request.getParameter("sNumber")));
                } else {
                    info.add("无效学生学号！");
                }
            } else {
                info.add("无效学生学号！");
            }
        }

        if (request.getParameter("sTeacherNumber") != null) {
            if (!JudgmentAllReason.isNumeric(request.getParameter("sTeacherNumber"))) {
                info.add("必须输入任课教师工号！");
            } else if (request.getParameter("sTeacherNumber").length() >= 4 && request.getParameter("sTeacherNumber").length() <= 20) {
                sTeacher = this.sTeacherService.selectByTeacherNumber(Integer.valueOf(request.getParameter("sTeacherNumber")));
                if (sTeacher != null) {
                    score.setSubjectTeacherNumber(Integer.valueOf(request.getParameter("sTeacherNumber")));
                } else {
                    info.add("无效教师工号！");
                }
            } else {
                info.add("无效教师工号！");
            }
        }

        if (request.getParameter("score") != null) {
            if (!JudgmentAllReason.isNumeric(request.getParameter("score"))) {
                info.add("必须正确输入成绩！");
            } else if (request.getParameter("score").length() >= 0 && request.getParameter("score").length() <= 3) {
                Long sc = Long.valueOf(request.getParameter("score"));
                if (sc >= 0L && sc <= 100L) {
                    score.setScore(Integer.valueOf(request.getParameter("score")));
                } else {
                    info.add(" 成绩取值0-100之间 ");
                }
            } else {
                info.add(" 成绩取值0-100之间 ");
            }
        } else {
            info.add("必须输入成绩！");
        }

        if (request.getParameter("subject") != null) {
            Subject subject = this.subjectService.selectByName(request.getParameter("subject"));
            if (subject != null) {
                score.setSubjectId(Integer.valueOf(request.getParameter("subject")));
            } else {
                info.add("无效科目！");
            }
        } else {
            info.add("必须选择科目！");
        }

        new Date();
        if (request.getParameter("sJTime").trim() == null && request.getParameter("sJTime").trim().equals("")) {
            info.add("必须输入考试时间！");
        } else {
            SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

            try {
                String t = request.getParameter("sJTime");
                System.out.println(t);
                Date date = time.parse(t);
                score.setScoreJoinTime(date);
            } catch (ParseException var12) {
                info.add("考试时间格式不正确！");
            }
        }

        if (request.getParameter("sTeam") != null) {
            if (!request.getParameter("sTeam").equals("第一学期") && !request.getParameter("sTeam").equals("第二学期")) {
                info.add("无效学期！");
            } else {
                score.setScoreTeam(request.getParameter("sTeam"));
            }
        } else {
            info.add("必须输入考试学期！");
        }

        for(int i = 0; i < info.size(); ++i) {
            if (!info.isEmpty()) {
                model.addAttribute("info", info);
                return "mainpage/scoreinsert";
            }
        }

        score.setScoreId(Integer.valueOf(request.getParameter("sID")));
        if (this.scoreService.updateByPrimaryKeySelective(score) > 0) {
            Msg = "更新成功！";
        } else {
            Msg = "更新失败！";
        }

        Integer GradeID = 0;
        List<Score> scores = this.scoreService.findScoreBySome(score);
        List<ScoreExtension> scoreExtension = JudgmentAllReason.getScoreExtensions(scores, GradeID, this.scoreService, this.subjectService, this.sTeacherService, this.sStudentService, this.gradeService);
        SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        System.out.println(time.format(score.getScoreJoinTime()));
        model.addAttribute("scoreJoinTime", time.format(score.getScoreJoinTime()));
        model.addAttribute("sID", score.getScoreId());
        model.addAttribute("scores", scoreExtension);
        model.addAttribute("Msg", Msg);
        return "mainpage/modificationPage";
    }

    @RequestMapping({"/gradeinfo"})
    public String toGradeInfo(HttpServletRequest request, Model model) {
        Cookie cookie = (Cookie)PGSession.GetSession(request, "cookie");
        if (cookie == null) {
            return "error";
        } else {
            HttpSession session = request.getSession(true);
            PermissionsExtension permissionsExtension = (PermissionsExtension)session.getAttribute("Permissions");
            List<Grade> grades = this.gradeService.findAllGrade();
            List<GradeExtension> gradeExtensions = JudgmentAllReason.getGradeExtensions(grades, this.sStudentService, this.gradeService, this.sTeacherService);
            PGSession.AddSession(request, "pm", permissionsExtension);
            model.addAttribute("grades", gradeExtensions);
            return "mainpage/gradeinfo";
        }
    }

    @RequestMapping({"/classinfo"})
    public String toClassInfo(HttpServletRequest request, Model model) {
        Cookie cookie = (Cookie)PGSession.GetSession(request, "cookie");
        if (cookie == null) {
            return "error";
        } else {
            Integer GradeID = Integer.valueOf(request.getParameter("id"));
            HttpSession session = request.getSession(true);
            PermissionsExtension permissionsExtension = (PermissionsExtension)session.getAttribute("Permissions");
            List<Classtype> classtypes = this.classtypeService.findAllClass();
            List<ClasstypeExtension> classtypeExtensions = JudgmentAllReason.getClasstypeExtensions(classtypes, GradeID, this.sStudentService, this.sTeacherService, this.classtypeService, this.gradeService);
            PGSession.AddSession(request, "pm", permissionsExtension);
            model.addAttribute("classtype", classtypeExtensions);
            return "mainpage/classinfo";
        }
    }

    @RequestMapping({"/studentinfo"})
    public String toStudentInfo(HttpServletRequest request, Model model) {
        Cookie cookie = (Cookie)PGSession.GetSession(request, "cookie");
        if (cookie == null) {
            return "error";
        } else {
            Integer CID = Integer.valueOf(request.getParameter("cid"));
            Integer GID = Integer.valueOf(request.getParameter("gid"));
            HttpSession session = request.getSession(true);
            PermissionsExtension permissionsExtension = (PermissionsExtension)session.getAttribute("Permissions");
            SStudent student = new SStudent();
            student.setStudentGradeName(this.gradeService.selectByPrimaryKey(GID).getGradeName());
            student.setClassName(this.classtypeService.selectByPrimaryKey(CID).getClassName());
            List<SStudent> sStudents = this.sStudentService.findStudentBySome(student);
            List<SStudentExtension> sStudentExtensions = JudgmentAllReason.getStudentExtensions(sStudents, GID, this.sStudentService, this.sTeacherService);
            PGSession.AddSession(request, "pm", permissionsExtension);
            PGSession.AddSession(request, "gid", GID);
            PGSession.AddSession(request, "cid", CID);
            model.addAttribute("sStudents", sStudentExtensions);
            return "mainpage/studentinfo";
        }
    }

    @RequestMapping({"/seacheronestudent"})
    public String getSeacherStudentOne(HttpServletRequest request, Model model) {
        Cookie cookie = (Cookie)PGSession.GetSession(request, "cookie");
        if (cookie == null) {
            return "error";
        } else {
            Integer CID = Integer.valueOf(request.getParameter("cid"));
            Integer GID = Integer.valueOf(request.getParameter("gid"));
            Integer sno = Integer.valueOf(request.getParameter("sno"));
            Score score = new Score();
            ScoreExtension scoreExtension = new ScoreExtension();
            if (request.getParameter("mTeacherNumber") != null) {
                if (!JudgmentAllReason.isNumeric(request.getParameter("mTeacherNumber"))) {
                    scoreExtension.setModificationTeacherName((String)null);
                } else {
                    score.setModificationTeacherNumber(Integer.valueOf(request.getParameter("mTeacherNumber")));
                }
            }

            if (sno != 0 && sno > 0) {
                score.setStudentNumber(sno);
            } else if (request.getParameter("sNumber") != null) {
                if (!JudgmentAllReason.isNumeric(request.getParameter("sNumber"))) {
                    scoreExtension.setStudentName(request.getParameter("sName"));
                } else {
                    score.setStudentNumber(Integer.valueOf(request.getParameter("sNumber")));
                }
            }

            if (request.getParameter("sTeacherNumber") != null) {
                if (!JudgmentAllReason.isNumeric(request.getParameter("sTeacherNumber"))) {
                    scoreExtension.setSubjectTeacherName((String)null);
                } else {
                    score.setSubjectTeacherNumber(Integer.valueOf(request.getParameter("sTeacherNumber")));
                }
            }

            new Date();
            if (request.getParameter("sJTime") != null) {
                SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

                try {
                    Date date = time.parse(request.getParameter("sJTime") + " 00:00:00");
                    score.setScoreJoinTime(date);
                } catch (ParseException var14) {
                }
            }

            if (request.getParameter("sTeam") != null && (request.getParameter("sTeam").equals("第一学期") || request.getParameter("sTeam").equals("第二学期"))) {
                score.setScoreTeam(request.getParameter("sTeam"));
            }

            scoreExtension.setScore(score);
            Integer GradeID = 0;
            List<Score> scores = JudgmentAllReason.getScores(this.scoreService, this.sTeacherService, this.subjectService, scoreExtension, score);
            List<ScoreExtension> scoreExtension1 = JudgmentAllReason.getScoreExtensions(scores, GradeID, this.scoreService, this.subjectService, this.sTeacherService, this.sStudentService, this.gradeService);
            String name = this.sStudentService.selectByStudentNumber(sno).getStudentName();
            PGSession.AddSession(request, "gid", GID);
            PGSession.AddSession(request, "cid", CID);
            PGSession.AddSession(request, "name", name);
            PGSession.AddSession(request, "no", sno);
            model.addAttribute("scores", scoreExtension1);
            return "mainpage/personscore";
        }
    }
}
