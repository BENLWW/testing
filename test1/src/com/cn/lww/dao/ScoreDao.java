//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.dao;

import com.cn.lww.pojo.Score;
import com.cn.lww.pojo.ScoreExtension;
import java.util.List;

public interface ScoreDao {
    int deleteByPrimaryKey(Integer var1);

    int insert(Score var1);

    int insertSelective(Score var1);

    Score selectByPrimaryKey(Integer var1);

    int updateByPrimaryKeySelective(Score var1);

    int updateByPrimaryKey(Score var1);

    List<Score> findAllScore(ScoreExtension var1);

    List<Score> findScoreBySome(ScoreExtension var1);
}
