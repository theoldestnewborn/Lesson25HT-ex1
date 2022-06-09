package com.example.lesson25ht;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "authorization", value = "/authorization")
public class AuthorizationServlet extends HttpServlet {
    private String login, password;

    public void init() {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        doGet(request, response);
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        HttpSession session = request.getSession();
        session.setAttribute("isLoggedIn", false);
        login = request.getParameter("login");
        password = request.getParameter("password");


        if (login.equalsIgnoreCase("User") && password.equals("123")) {

            session.setAttribute("isLoggedIn", true);
            request.getRequestDispatcher("welcome.jsp").forward(request, response);

        } else {
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }

    public void destroy() {
    }
}