package com.example.infosystem_spring.service;

import com.example.infosystem_spring.dao.itf.NewsDao;
import com.example.infosystem_spring.entity.News;
import com.example.infosystem_spring.service.itf.NewsService;
import com.example.infosystem_spring.util.FreeMarkerUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("newsService")
public class NewsServiceImpl implements NewsService {
    @Autowired
    NewsDao newsDao;


    @Override
    public boolean addNews(News news) {
        if (news != null) {
            return newsDao.addNews(news);
        }
        return false;
    }

    @Override
    public PageInfo<News> findNewsByPage(Integer pageNum, String keywords) {
        // request: url?pageNum=1&pageSize=10
        if (pageNum == null) {
            pageNum = 1;
        }
        PageHelper.startPage(pageNum, 10);
        List<News> newsArrayList = newsDao.getNewsList();

        // NOTE: SSTI here
        for (News news : newsArrayList) {
            try {
                news.setDescription(new FreeMarkerUtil().createHtmlFromString(news.getDescription(), "v"));
            } catch (Exception e) {
                continue;
            }
        }

        PageInfo<News> page = new PageInfo<News>(newsArrayList);
        return page;
    }
}
