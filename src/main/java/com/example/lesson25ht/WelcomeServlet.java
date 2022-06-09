package com.example.lesson25ht;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "welcome", value = "/welcome")
public class WelcomeServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");

        HttpSession session = request.getSession();

        if (session.getAttribute("isLoggedIn")==null||session.getAttribute("isLoggedIn").equals(false)) {
            request.getRequestDispatcher("error.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("welcome.jsp").forward(request, response);
        }
    }
}
