package org.java.service;

import java.util.List;
import java.util.Map;

/**
 * @Author:蔡吉东
 * @Date:2019/10/11 14:17
 * @Description:
 */
public interface InfService {

    public List<Map> findAll(int currentPage,int pageSize,String name,String sex);

    public int getCount(Map map);

    public void del(int id);

    public void add(Map map);

    public Map findId(int id);

    public void update(Map map);
}
