package com.example.infosystem_spring.dao;

import com.example.infosystem_spring.dao.itf.UserDao;
import com.example.infosystem_spring.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


@Repository
public class UserDaoImpl implements UserDao {

    private final JdbcTemplate jdbcTemplate;

    public UserDaoImpl(@Autowired JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public User login(String username, String password) {
        String sql = "SELECT username, password FROM T_admin WHERE username=? AND password=?";
        // queryForObject只能查询一条数据，如果数据库没有该数据就会抛出 EmptyResultDataAccessException
        User user;
        try {
            user = jdbcTemplate.queryForObject(sql, (resultSet, i) -> {
                User queryUser = new User();
                queryUser.setUsername(resultSet.getString("username"));
                queryUser.setPwdHash(resultSet.getString("password"));
                return queryUser;
            }, username, password);
        } catch (EmptyResultDataAccessException e) {
            return null;
        }

        return user;
    }

    @Override
    public String getPwdHash(String username) {
        String sql = "SELECT password FROM T_admin WHERE username=?";
        try {
            return jdbcTemplate.queryForObject(sql, (resultSet, i) -> resultSet.getString("password"), username);
        } catch (EmptyResultDataAccessException e) {
            return "";
        }
    }
}
