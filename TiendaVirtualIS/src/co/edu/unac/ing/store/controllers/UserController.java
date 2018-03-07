package co.edu.unac.ing.store.controllers;

import co.edu.unac.ing.store.dto.User;
import co.edu.unac.ing.store.logic.UserFacade;
import co.edu.unac.ing.store.models.Connection;
import co.edu.unac.ing.store.utilities.Mapper;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by lds on 28/03/2017.
 */
@WebServlet(name = "UserController", urlPatterns="/usuarios")
public class UserController extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User user = Mapper.mappingRequestToUser(request);

        UserFacade valido = new UserFacade();

        if (valido.validate(user)){
            user.setType("1");
            Connection connectionBD = new Connection();
            connectionBD.insert(user);
            response.sendRedirect("/index.jsp");
        }
        else{
            response.sendRedirect("usuario.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        RequestDispatcher RequetsDispatcherObj =request.getRequestDispatcher("/usuario.jsp");
        RequetsDispatcherObj.forward(request, response);
    }

}