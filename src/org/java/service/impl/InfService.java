package org.java.service.impl;

import org.java.dao.InfMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author:蔡吉东
 * @Date:2019/10/11 14:17
 * @Description:
 */
@Service
public class InfService implements org.java.service.InfService {

    @Autowired
    private InfMapper infMapper;

    @Override
    public List<Map> findAll(int currentPage,int pageSize,String name,String sex) {

        Map<String,Object> map = new HashMap<String, Object>();
        map.put("startIndex",(currentPage-1)*pageSize);
        map.put("pageSize",pageSize);
        map.put("name",name);
        map.put("sex",sex);
        List<Map> list = infMapper.findAll(map);
        return list;
    }

    @Override
    public int getCount(Map m) {
        return infMapper.getCount(m);
    }

    @Override
    public void del(int id) {
        infMapper.del(id);
    }

    @Override
    public Map findId(int id) {
        return infMapper.findId(id);
    }

    @Override
    public void add(Map map) {
        infMapper.add(map);
    }

    @Override
    public void update(Map map) {
        infMapper.update(map);
    }
}
