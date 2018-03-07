package co.edu.unac.ing.store.controllers;

import co.edu.unac.ing.store.models.Connection;

import javax.servlet.RequestDispatcher;
import java.io.IOException;

/**
 * Created by lds on 16/03/2017.
 */
@javax.servlet.annotation.WebServlet(name = "IndexServlet", urlPatterns="/Home")
public class IndexServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        //Recuperar valores
        //Hacer la lógica
        //Conectarnos a la BD
        Connection connection = new Connection();
        //connection.connect("root", "", "store");
        //Preparar datos
        //Enviarlos al JSP

        RequestDispatcher RequetsDispatcherObj =request.getRequestDispatcher("/admin.jsp");
        RequetsDispatcherObj.forward(request, response);
    }
}
