package co.edu.unac.ing.store.controllers;

import co.edu.unac.ing.store.dto.Product;
import co.edu.unac.ing.store.logic.ProductFacade;
import co.edu.unac.ing.store.models.Connection;
import co.edu.unac.ing.store.utilities.Mapper;

import javax.servlet.RequestDispatcher;
import java.io.IOException;

/**
 * Created by antonio on 20/04/2017.
 */
@javax.servlet.annotation.WebServlet(name = "ProductController", urlPatterns="/RegistroProductos")
    public class ProductController extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        Product product = Mapper.mappingRequestToProduct(request);

        //LOGICA
        ProductFacade productFacade = new ProductFacade();
        boolean valid = productFacade.validate(product);

        if(valid){
            Connection connection = new Connection();
            connection.insert(product);
        }else{
            //other
        }


        RequestDispatcher RequetsDispatcherObj =request.getRequestDispatcher("/RegistrodeProductos.jsp");
        RequetsDispatcherObj.forward(request, response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        RequestDispatcher RequetsDispatcherObj =request.getRequestDispatcher("/RegistrodeProductos.jsp");
        RequetsDispatcherObj.forward(request, response);


    }

    
}




