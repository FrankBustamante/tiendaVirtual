package co.edu.unac.ing.store.controllers;

import co.edu.unac.ing.store.dto.ProductDTO;
import co.edu.unac.ing.store.logic.ProductFacade;
import co.edu.unac.ing.store.models.Connection;
import co.edu.unac.ing.store.models.ProductDAO;
import co.edu.unac.ing.store.utilities.Mapper;

import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.util.List;

/**
 * Created by Frank Bustamante on 1/06/2017.
 */
@javax.servlet.annotation.WebServlet(name = "ProductCatalogoController", urlPatterns ="/CatalogoAll")
public class ProductCatalogoController extends javax.servlet.http.HttpServlet{
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {


        ProductDTO product = Mapper.mappingRequestToProductDTO(request);

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
    private RequestDispatcher RequetsDispatcherObj;
    List<ProductDTO> productAll;

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        ProductDAO dao = new ProductDAO();
        productAll = dao.readAll();
        String valorCat = request.getParameter("catalogo");
        if ( valorCat != null )
            if (valorCat.equals("catalogoHombres"))
                productAll = dao.readProducts("Masculino", "categoria");
            else if (valorCat.equals("catalogoMujeres"))
                productAll = dao.readProducts("Femenino", "categoria");
        request.setAttribute("products", productAll);
        RequetsDispatcherObj = request.getRequestDispatcher("/Catalogo.jsp");
        RequetsDispatcherObj.forward(request, response);
    }
}
