package com.quanglykhachsan.model.bo;

import com.quanglykhachsan.model.bean.User;
import com.quanglykhachsan.model.dao.UserDAO;

public class UserBO {

    UserDAO userDAO = new UserDAO();
    public User findByUsernameAndPassword(String email, String password){
        return userDAO.findByEmailAndPassword(email, password);
    }
}
