package co.edu.unac.ing.store.controllers;

import co.edu.unac.ing.store.dto.User;
import co.edu.unac.ing.store.logic.UserFacade;
import co.edu.unac.ing.store.models.Connection;
import co.edu.unac.ing.store.models.UserConsult;
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

        if (request.getMethod().equals("POST")) {

            UserFacade uf = new UserFacade();
            User user = uf.validateLogin( Mapper.mappíngRequestToLoginUser(request));

            if (user.getLog().equals("1")) {

                 request.setAttribute("user", user);
               // response.sendRedirect("/inicio");
                
                 request.getRequestDispatcher("/").forward(request, response);
            } else {
                RequestDispatcher RequetsDispatcherObj =request.getRequestDispatcher("/Login.jsp");
                RequetsDispatcherObj.forward(request, response);
            }
        }else{
            RequestDispatcher RequetsDispatcherObj =request.getRequestDispatcher("/inicio");
            RequetsDispatcherObj.forward(request, response);
            }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("user", new User());
        RequestDispatcher RequetsDispatcherObj =request.getRequestDispatcher("/Login.jsp");
        RequetsDispatcherObj.forward(request, response);
    }

    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

       User us =(User) request.getAttribute("user");
        UserConsult uc = new UserConsult();
        uc.logOutUser();
        us = null;
        request.setAttribute("user",us);

        RequestDispatcher RequetsDispatcherObj =request.getRequestDispatcher("/index.jsp");
        RequetsDispatcherObj.forward(request, response);
    }


}