package com.quanglykhachsan.model.dao;

import com.quanglykhachsan.model.bean.Session;
import com.quanglykhachsan.util.mapper.SessionMapper;

import java.util.List;

public class SessionDAO extends AbstractDAO<Session> {
    public Session findById(int sessionId){
        StringBuilder sql = new StringBuilder("SELECT * FROM session");
        sql.append(" WHERE id = ?");
        List<Session> sessions = query(sql.toString(), new SessionMapper(), sessionId);
        return sessions.isEmpty() ? null: sessions.get(0);
    }

}
