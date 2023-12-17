package com.quanglykhachsan.controller;

import com.quanglykhachsan.model.bean.Room;
import com.quanglykhachsan.model.bo.RoomBO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/login")
public class Home extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Home() {super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RoomBO roomBO = new RoomBO();
        List<Room> rooms = roomBO.getAll();
        request.setAttribute("listRooms", rooms);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/home.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
