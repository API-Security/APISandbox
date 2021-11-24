package com.example.infosystem_spring.controller;

import com.example.infosystem_spring.entity.News;
import com.example.infosystem_spring.service.itf.NewsService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/admin/console")
public class NewsController {

    @Autowired
    private NewsService newsService;

    @RequestMapping("/news/add")
    public String news() {
        return "view/news/add";
    }

    @RequestMapping(value = "/news/add", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, String> add(@ModelAttribute("newsForm") News news) {
        boolean flag = newsService.addNews(news);
        Map<String, String> result = new HashMap<>();
        if (flag) {
            result.put("status", "1");
            result.put("msg", "发布成功");
        } else {
            result.put("status", "0");
            result.put("msg", "发布失败");
        }
        return result;
    }

    @RequestMapping(value = "/news/list", method = RequestMethod.GET)
    public String list(ModelMap map) {
        PageInfo<News> page = newsService.findNewsByPage(null, null);
        map.put("page", page);
        return "view/news/list";
    }
}
