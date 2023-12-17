package com.quanglykhachsan.controller;

import com.quanglykhachsan.model.bean.User;
import com.quanglykhachsan.model.bo.UserBO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Login() {super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        String error = "";
        String url = "";

        UserBO userBO = new UserBO();
        User user = userBO.findByUsernameAndPassword(email, password);
        if (user != null) {
            request.getSession().setAttribute("user", user);
            System.out.println("Thanh cong");
        }else {
            error+="Sai Email hoặc sai mật khẩu";
            request.setAttribute("errorLogin", error);
            url = "";
            System.out.println(error);
        }

        RequestDispatcher rd = request.getRequestDispatcher("/Login.jsp");
        rd.forward(request, response);
    }
}
