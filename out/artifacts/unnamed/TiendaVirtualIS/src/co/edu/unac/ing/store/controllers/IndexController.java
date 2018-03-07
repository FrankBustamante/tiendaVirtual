package co.edu.unac.ing.store.controllers;

import co.edu.unac.ing.store.models.Connection;

import javax.servlet.RequestDispatcher;
import java.io.IOException;

/**
 * Created by brayandavid on 12/05/2017.
 */
@javax.servlet.annotation.WebServlet(name = "IndexController", urlPatterns="/inicio")
public class IndexController extends javax.servlet.http.HttpServlet {

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {



        RequestDispatcher RequetsDispatcherObj =request.getRequestDispatcher("/Catalogohombres.jsp");
        RequetsDispatcherObj.forward(request, response);
    }
}
