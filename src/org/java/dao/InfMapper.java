package org.java.dao;

import org.apache.ibatis.annotations.Delete;

import java.util.List;
import java.util.Map;

/**
 * @Author:蔡吉东
 * @Date:2019/10/11 14:15
 * @Description:
 */
public interface InfMapper {

    public List<Map> findAll(Map map);

    public int getCount(Map m);

    @Delete("delete from Student where id=#{id}")
    public void del(int id);

    public void add(Map map);

    public Map findId(int id);

    public void update(Map map);
}
