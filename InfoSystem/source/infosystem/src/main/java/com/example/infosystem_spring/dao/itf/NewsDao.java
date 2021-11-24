package com.example.infosystem_spring.dao.itf;

import com.example.infosystem_spring.entity.News;

import java.util.List;

public interface NewsDao {
    boolean addNews(News news);

    List<News> getNewsList();
}
