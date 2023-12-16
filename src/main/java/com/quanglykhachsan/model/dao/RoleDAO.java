package com.quanglykhachsan.model.dao;

import com.quanglykhachsan.model.bean.Role;
import com.quanglykhachsan.util.mapper.RoleMapper;

import java.sql.SQLException;
import java.util.List;

public class RoleDAO extends AbstractDAO<Role> {
    public Role findById(int roleId) {
        StringBuilder sql = new StringBuilder("SELECT * FROM role");
        sql.append(" WHERE id = ?");
        List<Role> roles = query(sql.toString(), new RoleMapper(), roleId);
        return roles.isEmpty() ? null : roles.get(0);
    }
}
