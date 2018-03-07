package co.edu.unac.ing.store.controllers;

import co.edu.unac.ing.store.dto.User;
import co.edu.unac.ing.store.models.UserConsult;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.InetAddress;

/**
 * Created by Frank Bustamante on 10/02/2018.
 */
@WebServlet(name = "LogOut", urlPatterns="/logOut")
public class LogOut extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        InetAddress address = InetAddress.getLocalHost();
        System.out.println("IP Local :"+address.getHostAddress());

        User us = new User();
        UserConsult uc = new UserConsult();
        us.setIp(address.getHostAddress());
        uc.logOutUser();
        us = null;
        IndexController c = new IndexController();
        request.setAttribute("user",us);

        RequestDispatcher RequetsDispatcherObj =request.getRequestDispatcher("/index.jsp");
        RequetsDispatcherObj.forward(request, response);
    }
}
