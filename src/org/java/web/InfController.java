package org.java.web;

import org.java.service.InfService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author:蔡吉东
 * @Date:2019/10/11 14:21
 * @Description:
 */
@Controller
public class InfController {
    @Autowired
    private InfService service;



    int currentPage = 1;
    int pageSize = 5;
    int count = 0;
    int pageCount = 0;
    @RequestMapping("load")
    public String load(Model model,HttpServletRequest req){
        String name = req.getParameter("name");
        String sex = req.getParameter("sex");
        String curren = req.getParameter("page");
        String ye = req.getParameter("ys");
        String cx = req.getParameter("ccxx");
        String shoye = req.getParameter("shoye");
        String wye = req.getParameter("wye");


        if (ye!=null){
            pageSize = Integer.parseInt(ye);
        }
        if (curren!=null){
            currentPage = Integer.parseInt(curren);
        }

        Map<String,Object> map = new HashMap<String, Object>();
        map.put("name",name);
        map.put("sex",sex);
        count = service.getCount(map);
        pageCount = (count+pageSize-1)/pageSize;
        if (cx!=null){
            currentPage = 1;
        }
        if (shoye!=null){
            currentPage = 1;
        }
        if (wye!=null){
            currentPage = pageCount;
        }
        List<Map> list = service.findAll(currentPage,pageSize,name,sex);
        model.addAttribute("list",list);
        model.addAttribute("pageCount",pageCount);
        model.addAttribute("currentPage",currentPage);
        model.addAttribute("name",name);
        if (ye==null){
            ye="5";
        }
        model.addAttribute("ye",ye);
        if (sex==null){
            sex = "全部";
        }
        model.addAttribute("sex",sex);
        return "show";
    }


    @RequestMapping("del/{id}")
    public String del(@PathVariable("id") int id){
        service.del(id);
        return "redirect:/load.do";
    }

    @RequestMapping("upd/{id}")
    public String upd(@PathVariable("id") int id,Model model){
        Map map = service.findId(id);
        model.addAttribute("map",map);
        return "/update";
    }

    @RequestMapping("upd/xgai")
    public String update(int id,String name,String sex,String grade,String bir,String score){
        System.out.println("=================================================================================");
        int nj = 0;
        if (grade.equals("S1")){
            nj = 1;
        }else if (grade.equals("S2")){
            nj = 2;
        }else if(grade.equals("Y2")){
            nj = 3;
        }
        System.out.println(id+"="+name+"="+sex+"="+nj+"="+bir+"="+score);
        int fs = Integer.parseInt(score);
        Map<String,Object> map = new HashMap<>();
        map.put("id",id);
        map.put("name",name);
        map.put("sex",sex);
        map.put("grade",nj);
        map.put("bir",bir);
        map.put("score",fs);
        service.update(map);
        return "redirect:/load.do";
    }

    @RequestMapping("add")
    public String add(String name,String sex,String grade,String bir,String score){
        Map<String,Object> map = new HashMap<>();
        map.put("name",name);
        map.put("sex",sex);
        map.put("grade",grade);
        map.put("bir",bir);
        map.put("score",score);
       service.add(map);
        return "redirect:/load.do";
    }


}
