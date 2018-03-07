package co.edu.unac.ing.store.controllers;

import co.edu.unac.ing.store.models.ProductDAO;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by brayandavid on 31/5/2017.
 */
@WebServlet(name = "ModalController", urlPatterns="/ModalController")
public class ModalController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDAO dao = new ProductDAO();
        Gson gson = new Gson();
        String colProduct = request.getParameter("colProduct");
        String search = request.getParameter("search");
        String codigoProduct = request.getParameter("codigoProduct");
        if (codigoProduct != null)
            if (dao.readProducts(codigoProduct, "codigo") != null)
                response.getWriter().write(gson.toJson(dao.readProducts(codigoProduct, "codigo")));
        if(search != null && colProduct != null)
            if (dao.readProducts(search,colProduct ) != null)
                response.getWriter().write(gson.toJson(dao.readProducts(search,colProduct)));
    }
}
