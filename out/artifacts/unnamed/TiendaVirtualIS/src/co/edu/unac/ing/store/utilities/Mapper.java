package co.edu.unac.ing.store.utilities;

import co.edu.unac.ing.store.dto.Product;
import co.edu.unac.ing.store.dto.ProductDTO;
import co.edu.unac.ing.store.dto.User;

/**
 * Created by antonio on 4/05/2017.
 */
public class Mapper {

    public  static User mappíngRequestToLoginUser(javax.servlet.http.HttpServletRequest request){
        User user = new User();

        try{
            user.setEMail(request.getParameter("user"));
            user.setPassword(request.getParameter("pass"));
        }catch(Exception ex){
            System.out.println(ex.getCause());
        }

        return user;
    }

    public static User mappingRequestToUser(javax.servlet.http.HttpServletRequest request) {

        User user = new User();
        try{
            user.setName(request.getParameter("nombre"));
            user.setLastName(request.getParameter("apellido"));
            user.setId(request.getParameter("cedula"));
            user.setPhone(request.getParameter("telefono"));
            user.setAddress((request.getParameter("ciudad") +" "+ request.getParameter("direccion")));
            user.setEMail(request.getParameter("email"));
            user.setPassword(request.getParameter("contra"));
        }
        catch(Exception e){
            System.out.print(e.getCause());
        }

        return user;
    }

    public static Product mappingRequestToProduct(javax.servlet.http.HttpServletRequest request){

        Product product = new Product();

        product.setCode(request.getParameter("codigo"));
        product.setName(request.getParameter("nombre"));
        product.setCategory(request.getParameter("categoria"));
        product.setType(request.getParameter("tipo"));
        product.setPrice(Float.parseFloat(request.getParameter("precio")));
        product.setSize(Integer.parseInt(request.getParameter("talla")));
        product.setQuantity(Integer.parseInt(request.getParameter("cantidad")));
        product.setColor(request.getParameter("color"));
        product.setTime(request.getParameter("tiempoDisponible"));
        product.setImage(request.getParameter("imagen"));

        return product;
    }

    public static ProductDTO mappingRequestToProductDTO(javax.servlet.http.HttpServletRequest request){

        ProductDTO product = new ProductDTO();

        product.setCode(request.getParameter("codigo"));
        product.setName(request.getParameter("nombre"));
        product.setCategory(request.getParameter("categoria"));
        product.setType(request.getParameter("tipo"));
        product.setPrice(Double.parseDouble(request.getParameter("precio")));
        product.setSize(Integer.parseInt(request.getParameter("talla")));
        product.setColor(request.getParameter("color"));
        product.setTime(request.getParameter("tiempoDisponible"));
        product.setImage(request.getParameter("imagen"));

        return product;
    }

}
