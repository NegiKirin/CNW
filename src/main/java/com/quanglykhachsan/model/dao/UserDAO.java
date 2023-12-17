package com.quanglykhachsan.model.dao;

import com.quanglykhachsan.util.mapper.UserMapper;
import com.quanglykhachsan.model.bean.User;

import java.util.List;

public class UserDAO extends AbstractDAO<User>{

    public User findById(int userId) {
        StringBuffer sql = new StringBuffer("SELECT * FROM user");
        sql.append(" WHERE id = ?");
        List<User> users = query(sql.toString(), new UserMapper(), userId);
        return users.isEmpty() ? null : users.get(0);
    }

    public User findByEmailAndPassword(String email, String password){
        StringBuilder sql = new StringBuilder("SELECT * FROM user");
        sql.append(" WHERE email = ? AND password = ?");
        List<User> users = query(sql.toString(), new UserMapper(), email, password);
        return users.isEmpty() ? null : users.get(0);
    }


    public static void main(String[] args) {
        UserDAO userDAO = new UserDAO();
        User user = userDAO.findByEmailAndPassword("phuc1@gmail.com", "123123");
//        User user = userDAO.findById(1);
        System.out.println("finish");
    }
}
