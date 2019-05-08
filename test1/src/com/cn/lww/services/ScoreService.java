//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.services;

import com.cn.lww.pojo.Score;
import java.util.List;

public interface ScoreService {
    int deleteByPrimaryKey(Integer var1);

    int insert(Score var1);

    int insertSelective(Score var1);

    Score selectByPrimaryKey(Integer var1);

    int updateByPrimaryKeySelective(Score var1);

    int updateByPrimaryKey(Score var1);

    List<Score> findAllScore(Integer var1, String var2);

    List<Score> findScoreBySome(Score var1);
}
