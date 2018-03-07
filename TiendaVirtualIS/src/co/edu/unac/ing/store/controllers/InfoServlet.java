package co.edu.unac.ing.store.controllers;

import javax.servlet.RequestDispatcher;
import java.io.IOException;

/**
 * Created by lds on 16/03/2017.
 */
@javax.servlet.annotation.WebServlet(name = "InfoServlet", urlPatterns="/Nosotros")
    public class InfoServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

       //Connection connectionBD = new Connection();
       // connectionBD.connect("root", "", "store");
        RequestDispatcher RequetsDispatcherObj =request.getRequestDispatcher("/InfoEmpresa.jsp");
        RequetsDispatcherObj.forward(request, response);
    }
}
