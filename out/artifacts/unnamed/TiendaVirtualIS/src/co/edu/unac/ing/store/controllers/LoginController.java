package co.edu.unac.ing.store.controllers;

import co.edu.unac.ing.store.dto.User;
import co.edu.unac.ing.store.logic.UserFacade;
import co.edu.unac.ing.store.models.Connection;
import co.edu.unac.ing.store.utilities.Mapper;
import com.sun.net.httpserver.HttpsServer;
import com.sun.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.ResponseCache;

/**
 * Created by Frank Bustamante on 18/05/2017.
 */
@WebServlet(name = "LoginController", urlPatterns="/login")
public class LoginController extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User user = Mapper.mappíngRequestToLoginUser(request);
        UserFacade us = new UserFacade();

        if (us.validateLogin(user)){
            User user1 = us.validateLoginName(user);
            if (user1.getType().equals("1")) {
                request.setAttribute("userName",user1.getName());
                request.getRequestDispatcher("/index.jsp").forward(request,response);
            }else if (user1.getType().equals("0")){
                request.setAttribute("userName",user1.getName());
                request.setAttribute("registro","RegistroProductos");
                request.getRequestDispatcher("/index.jsp").forward(request,response);
            }


        }
        else{
            response.sendRedirect("/login");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        RequestDispatcher RequetsDispatcherObj =request.getRequestDispatcher("/Login.jsp");
        RequetsDispatcherObj.forward(request, response);
    }
}