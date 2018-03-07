package co.edu.unac.ing.store.models;

import co.edu.unac.ing.store.dto.Product;
import co.edu.unac.ing.store.dto.ProductDTO;
import co.edu.unac.ing.store.dto.User;
import com.mysql.jdbc.Driver;

import java.sql.DriverManager;
import java.util.ArrayList;
import java.util.logging.Logger;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;

/**
 * Created by lds on 21/03/2017.
 */
public class Connection {

    private static final String TABLE_PRODUCT_NAME = "producto";
    private static final String TABLE_USER_NAME = "usuario";
    private static final String DATABASE_USER = "root";
    private static final String DATABASE_PASSWORD = "";
    private static final String DATABASE_NAME = "store";

    private static java.sql.Connection connection;

    public static java.sql.Connection getConnection() {
        return connection;
    }

    public static void setConnection(java.sql.Connection connection) {
        Connection.connection = connection;
    }

    public void connect() {
        Driver driver;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            setConnection(DriverManager.getConnection("jdbc:mysql://localhost:3306/" + DATABASE_NAME, DATABASE_USER, DATABASE_PASSWORD));
            System.out.println("Se ha iniciado la conexión con el servidor de forma exitosa");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Connection.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Connection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void insert(ProductDTO product){

        try {

            StringBuilder query = new StringBuilder();
            query.append("INSERT INTO ");
            query.append(Connection.TABLE_PRODUCT_NAME);
            query.append(" VALUES(");
            query.append("\"").append(product.getCode()).append("\",");
            query.append("\"").append(product.getName()).append("\",");
            query.append("\"").append(product.getCategory()).append("\",");
            query.append(product.getPrice()).append(",");
            query.append(product.getSize()).append(",");
            query.append(product.getQuantity()).append(",");
            query.append("\"").append(product.getColor()).append("\",");
            query.append("\"").append(product.getTime()).append("\",");
            query.append("\"").append(product.getImage()).append(")");

            connect();
            Statement st = getConnection().createStatement();
            st.executeUpdate(query.toString());
        } catch (SQLException ex) {
            ex.printStackTrace();
        }finally {
            closeConnection();
        }
    }

    public void closeConnection() {
        try {
            getConnection().close();
            System.out.println("Se ha finalizado la conexión con el servidor");
        } catch (SQLException ex) {
            Logger.getLogger(Connection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public String getTableUserName(){
        return  TABLE_USER_NAME;
    }

    public void createDB(String name) {
        try {
            String Query = "CREATE DATABASE " + name;
            Statement st = getConnection().createStatement();
            st.executeUpdate(Query);
            connect();
        } catch (SQLException ex) {
            Logger.getLogger(Connection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void createTable(String name) {
        try {
            String Query = "CREATE TABLE " + name + ""
                    + "(código INT (10),nombre VARCHAR(50),Categoria VARCHAR(15),"
                    + " tipo VARCHAR(20),precio float, talla tinyint(3), Cantidad disponible smallint )";
            Statement st = getConnection().createStatement();
            st.executeUpdate(Query);
        } catch (SQLException ex) {
            Logger.getLogger(Connection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void insert(Product product){
        try {

            StringBuilder query = new StringBuilder();
            query.append("INSERT INTO ");
            query.append(Connection.TABLE_PRODUCT_NAME);
            query.append(" VALUES(");
            query.append("\"").append(product.getCode()).append("\",");
            query.append("\"").append(product.getName()).append("\",");
            query.append("\"").append(product.getCategory()).append("\",");
            query.append("\"").append(product.getType()).append("\",");
            query.append(product.getPrice()).append(",");
            query.append(product.getSize()).append(",");
            query.append(product.getQuantity()).append(",");
            query.append("\"").append(product.getColor()).append("\",");
            query.append("\"").append(product.getTime()).append("\",");
            query.append("\"").append(product.getImage()).append("\")");
            connect();
            Statement st = getConnection().createStatement();
            st.executeUpdate(query.toString());

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public void insert(User user){

        try {

            StringBuilder query = new StringBuilder();
            query.append("INSERT INTO ");
            query.append(Connection.TABLE_USER_NAME);
            query.append(" VALUES(");
            query.append("\"").append(user.getName()).append("\",");
            query.append("\"").append(user.getLastName()).append("\",");
            query.append("\"").append(user.getId()).append("\",");
            query.append("\"").append(user.getEMail()).append("\",");
            query.append("\"").append(user.getAddress()).append("\",");
            query.append("\"").append(user.getType()).append("\",");
            query.append("\"").append(user.getPhone()).append("\",");
            query.append("\"").append(user.getPassword()).append("\")");

            connect();
            Statement st = getConnection().createStatement();
            st.executeUpdate(query.toString());

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public void insertUsuario(String table_name,String nombre_completo, String cedula, String telefono, String email, String direccion, String contra) {
        try {
            String Query = "INSERT INTO " + table_name + " VALUES("
                    + nombre_completo + ", "
                    + "\"" + cedula + "\", "
                    + "\"" + telefono + "\", "
                    + "\"" + email + "\", "
                    + "\"" + direccion + "\", "
                    + "\"" + contra + "\" )";
            Statement st = getConnection().createStatement();
            st.executeUpdate(Query);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public void getValues(String table_name) {
                try {
                    String Query = "SELECT * FROM " + table_name;
                    Statement st = getConnection().createStatement();
                    java.sql.ResultSet resultSet;
                    resultSet = st.executeQuery(Query);

                    while (resultSet.next()) {
                        System.out.println("ID: " + resultSet.getString("ID") + " "
                                + "Nombre: " + resultSet.getString("Nombre") + " "
                                + "Apellido: "+ resultSet.getString("Apellido") + " "
                                + "Edad: " + resultSet.getString("Edad") + " "
                                + "Sexo: " + resultSet.getString("Sexo"));
                    }

                } catch (SQLException ex) {
        }
    }

    public void deleteRecord(String table_name, String ID) {
        try {
            String Query = "DELETE FROM " + table_name + " WHERE ID = \"" + ID + "\"";
            Statement st = getConnection().createStatement();
            st.executeUpdate(Query);

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }

}



















