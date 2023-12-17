package com.quanglykhachsan.util.mapper;

import com.quanglykhachsan.model.bean.Session;

import java.sql.ResultSet;
import java.sql.SQLException;

public class SessionMapper implements RowMapper<Session> {
    @Override
    public Session mapRow(ResultSet rs) {
        try{
            Session session = new Session();
            session.setId(rs.getInt("id"));
            session.setUserId(rs.getInt("user_id"));
            session.setRoomId(rs.getInt("room_id"));
            session.setStartTime(rs.getTimestamp("start_time"));
            session.setEndTime(rs.getTimestamp("end_time"));
            session.setCountAdult(rs.getInt("count_adult"));
            session.setCountChildren(rs.getInt("count_children"));
            return session;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
