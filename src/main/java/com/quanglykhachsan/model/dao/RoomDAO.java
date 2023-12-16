package com.quanglykhachsan.model.dao;

import com.quanglykhachsan.model.bean.Room;
import com.quanglykhachsan.util.mapper.RoomMapper;

import java.util.List;

public class RoomDAO extends AbstractDAO<Room>{
    public Room findById(int roomId) {
        StringBuilder sql = new StringBuilder("SELECT * FROM room");
        sql.append(" WHERE id = ?");
        List<Room> rooms = query(sql.toString(), new RoomMapper(), roomId);
        return rooms.isEmpty() ? null: rooms.get(0);
    }
}
