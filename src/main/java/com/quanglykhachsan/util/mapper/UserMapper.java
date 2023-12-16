package com.quanglykhachsan.util.mapper;

import com.quanglykhachsan.model.bean.User;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserMapper implements RowMapper<User>{
    @Override
    public User mapRow(ResultSet resultSet) {
        try{
            User user = new User();
            user.setId(resultSet.getInt("id"));
            user.setCccd(resultSet.getString("cccd"));
            user.setEmail(resultSet.getString("email"));
            user.setPhoneNumber(resultSet.getString("phone_number"));
            user.setRoleId(resultSet.getInt("role_id"));
            return user;
        }catch (SQLException e){
            e.printStackTrace();
            return null;
        }
    }
}
