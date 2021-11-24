package com.example.infosystem_spring.service.itf;

import com.example.infosystem_spring.entity.News;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

@Service
public interface NewsService {
    public boolean addNews(News news);

    PageInfo<News> findNewsByPage(Integer pageNum, String keywords);
}
