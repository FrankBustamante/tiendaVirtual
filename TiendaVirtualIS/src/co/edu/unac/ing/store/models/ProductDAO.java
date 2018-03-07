package co.edu.unac.ing.store.models;

import co.edu.unac.ing.store.dto.ProductDTO;
import co.edu.unac.ing.store.utilities.Obligacion;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


/**
 * Created by SAAIBI on 18/5/2017.
 */


public class ProductDAO implements Obligacion<ProductDTO> {
    private static final String SQL_INSERT ="INSERT INTO producto (nombre,nombreDueño,edad,raza,procedencia) VALUES(?,?,?,?,?)";
    private static final String SQL_UPDATE ="UPDATE producto SET nombre = ? , nombreDueño = ?, edad = ? ,  raza = ?,procedencia = ? WHERE id = ? ";
    private static final String SQL_DELETE ="DELETE FROM producto WHERE id = ?";

    public  static  final ConexionDB conexion = new ConexionDB();
    private PreparedStatement preparedStatementObject;
    private ResultSet resultSetObject;

    @Override
    public boolean create(ProductDTO a) {
        return false;
    }

    @Override
    public boolean update(ProductDTO id) {
        return false;
    }

    @Override
    public boolean delete(Object id) {
        return false;
    }

    @Override
    public ProductDTO read(Object id) {
        return null;
    }

    @Override
    public List<ProductDTO> readProducts(Object dataSearch, String col) {
        ArrayList<ProductDTO> productos = new ArrayList<ProductDTO>();
        String SQL_READ_CATEGORY = new StringBuilder().append("SELECT * FROM producto WHERE  ").append(col).append(" like '%").append(dataSearch).append("%'").toString();
        try {
            preparedStatementObject = conexion.conectar().prepareStatement(SQL_READ_CATEGORY);
            addArrayProducts(productos);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productos;
    }


    @Override
    public List<ProductDTO> readAll() {
        List<ProductDTO> productos = new ArrayList<ProductDTO>();
        String SQL_READALL = "SELECT * FROM producto";
        try {
            preparedStatementObject = conexion.conectar().prepareStatement(SQL_READALL);
            addArrayProducts(productos);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productos;
    }

    private void addArrayProducts(List<ProductDTO> productos) throws SQLException {
        resultSetObject = preparedStatementObject.executeQuery();
        while (resultSetObject.next()) {
            productos.add(new ProductDTO(resultSetObject.getString(1),
                    resultSetObject.getString(2),
                    resultSetObject.getString(3),
                    resultSetObject.getString(4),
                    resultSetObject.getDouble(5),
                    resultSetObject.getInt(6),
                    resultSetObject.getInt(7),
                    resultSetObject.getString(8),
                    resultSetObject.getString(9),
                    resultSetObject.getString(10)));
        }
        preparedStatementObject.close();
        resultSetObject.close();
    }

}
