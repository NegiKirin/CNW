package com.quanglykhachsan.model.bo;

import com.quanglykhachsan.model.bean.Room;
import com.quanglykhachsan.model.dao.RoomDAO;

import java.util.List;

public class RoomBO {
    RoomDAO roomDAO = new RoomDAO();

    public List<Room> getAll() {
        return roomDAO.getAll();
    }
}
