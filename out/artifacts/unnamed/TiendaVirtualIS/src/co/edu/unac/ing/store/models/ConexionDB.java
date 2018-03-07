package co.edu.unac.ing.store.models;
/**
 * Created by brayandavid on 17/5/2017.
 */


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Clase que permite conectar con la base de datos
 * @author saaibi florez
 *
 */
public class ConexionDB {
    /**
     * Parametros de conexion
     */
    static String bd = "store";
    static String login = "root";
    static String password = "";
    static String url = "jdbc:mysql://localhost/" + bd;

    private Connection conexion = null;
     /**
     * Constructor de DbConnection
     */
    public Connection conectar() {
        try {
            //obtenemos el driver de para mysql
            Class.forName("com.mysql.jdbc.Driver");
            //obtenemos la conexión
            conexion = DriverManager.getConnection(url, login, password);
            System.out.println("Se ha iniciado la conexión con el servidor de forma exitosa");
        } catch (SQLException e) {
            System.out.println(e);
        } catch (ClassNotFoundException e) {
            System.out.println(e);
        } catch (Exception e) {
            System.out.println(e);
        }
        return conexion;
    }
}