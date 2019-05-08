//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.service.impl;

import com.cn.lww.dao.ScoreDao;
import com.cn.lww.pojo.Score;
import com.cn.lww.pojo.ScoreExtension;
import com.cn.lww.services.ScoreService;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

@Service("scoreService")
public class ScoreServiceImpl implements ScoreService {
    @Resource
    ScoreDao scoreDao;

    public ScoreServiceImpl() {
    }

    public int deleteByPrimaryKey(Integer scoreId) {
        return this.scoreDao.deleteByPrimaryKey(scoreId);
    }

    public int insert(Score record) {
        return this.scoreDao.insert(record);
    }

    public int insertSelective(Score record) {
        return 0;
    }

    public Score selectByPrimaryKey(Integer scoreId) {
        return this.scoreDao.selectByPrimaryKey(scoreId);
    }

    public int updateByPrimaryKeySelective(Score record) {
        return this.scoreDao.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(Score record) {
        return 0;
    }

    public List<Score> findAllScore(Integer team, String grade) {
        ScoreExtension scoreExtension = new ScoreExtension();
        Score score = new Score();
        String teamString = "";
        switch(team) {
        case 1:
            teamString = "第一学期";
            break;
        case 2:
            teamString = "第二学期";
            break;
        default:
            teamString = "";
        }

        score.setScoreTeam(teamString);
        score.setScoreGrade(grade);
        scoreExtension.setScore(score);
        scoreExtension.setOrderByClause("score DESC");
        return this.scoreDao.findAllScore(scoreExtension);
    }

    public List<Score> findScoreBySome(Score score) {
        ScoreExtension scoreExtension = new ScoreExtension();
        scoreExtension.setScore(score);
        scoreExtension.setOrderByClause("score DESC,'score_team' DESC");
        return this.scoreDao.findScoreBySome(scoreExtension);
    }
}
