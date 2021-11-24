package com.example.infosystem_spring.dao;

import com.example.infosystem_spring.dao.itf.NewsDao;
import com.example.infosystem_spring.entity.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.stereotype.Repository;

import java.sql.*;
import java.util.List;

@Repository
public class NewsDaoImpl implements NewsDao {

    private final JdbcTemplate jdbcTemplate;

    public NewsDaoImpl(@Autowired JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public boolean addNews(News news) {
        String sql = "insert into news (title, description, address, newsTime) values (?, ?, ?, ?)";
        return jdbcTemplate.update(new PreparedStatementCreator() {
            @Override
            public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
                PreparedStatement statement = connection.prepareStatement(sql);
                statement.setString(1, news.getTitle());
//                String description = news.getDescription();
//                statement.setString(2, new FreeMarkerUtil().createHtmlFromString(description, "v"));
                statement.setString(2, news.getDescription());
                statement.setString(3, news.getAddress());
                statement.setString(4, news.getNewsTime());

                return statement;
            }
        }) > 0;
    }

    @Override
    public List<News> getNewsList() {
        String sql = "select * from news";
//        List<News> newsList = new ArrayList<>();
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(News.class));

//        jdbcTemplate.query(sql, new RowMapper() {
//            @Override
//            public Object mapRow(ResultSet resultSet, int i) throws SQLException {
//                while (resultSet.next()) {
//                    News news = new News();
//                    news.setId(resultSet.getInt("id"));
//                    news.setTitle(resultSet.getString("title"));
//                    news.setAddress(resultSet.getString("address"));
//                    news.setDescription(resultSet.getString("description"));
//                    news.setNewsTime(resultSet.getString("newsTime"));
//                    news.setCreateTime(resultSet.getString("createTime"));
//                    newsList.add(news);
//                }
//                return newsList;
//            }
//        });
//        return newsList;
    }
}
