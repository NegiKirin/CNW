package com.quanglykhachsan.util.mapper;

import com.quanglykhachsan.model.bean.Room;

import java.sql.ResultSet;
import java.sql.SQLException;

public class RoomMapper implements RowMapper<Room> {
    @Override
    public Room mapRow(ResultSet rs) {
        try{
            Room room = new Room();
            room.setId(rs.getInt("id"));
            room.setPrice(rs.getLong("price"));
            room.setStatus(rs.getInt("status"));
            room.setAddress(rs.getString("address"));
            room.setHotelname(rs.getString("hotelname"));
            return room;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
