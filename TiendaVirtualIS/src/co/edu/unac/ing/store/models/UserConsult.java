package co.edu.unac.ing.store.models;

import co.edu.unac.ing.store.dto.User;

import javax.xml.transform.sax.SAXSource;
import java.io.IOException;
import java.net.InetAddress;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * Created by Frank Bustamante on 23/05/2017.
 */
public class UserConsult extends Connection{

    public static ArrayList<User>  consultUser() {

        ArrayList<User> users = new ArrayList<>();
        try{
            Connection connection = new Connection();
            connection.connect();
            Statement st = getConnection().createStatement();
            StringBuilder Query = new StringBuilder();
            Query.append("SELECT * FROM ");
            Query.append(connection.getTableUserName());
            java.sql.ResultSet resultSet;
            resultSet = st.executeQuery(Query.toString());

            while (resultSet.next()){
                User user = new User();
                user.setName(resultSet.getString("name"));
                user.setLastName(resultSet.getString("lastName"));
                user.setEMail(resultSet.getString("email"));
                user.setPassword(resultSet.getString("password"));
                user.setType(resultSet.getString("type"));
                users.add(user);
            }

        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }

      return users;
    }

    public static void logInUser(User user)throws IOException {
        InetAddress address = InetAddress.getLocalHost();
        System.out.println("IP Local :"+address.getHostAddress());

        try {
            Connection connection = new Connection();
            connection.connect();
            StringBuilder query = new StringBuilder();
            query.append("UPDATE ");
            query.append(connection.getTableUserName());
            query.append(" SET ");
            query.append(" log = \"1\",");
            query.append(" ip = \"").append(address.getHostAddress()).append("\"");
            query.append(" WHERE id = \"").append(user.getId()).append("\"");


            connection.connect();
            Statement st = getConnection().createStatement();
            st.executeUpdate(query.toString());
            connection.closeConnection();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public static void logOutUser()throws IOException{
        InetAddress address = InetAddress.getLocalHost();
        System.out.println("IP Local :"+address.getHostAddress());
        try {
            Connection connection = new Connection();
            connection.connect();
            StringBuilder query = new StringBuilder();
            query.append("UPDATE ");
            query.append(connection.getTableUserName());
            query.append(" SET ");
            query.append(" log = \"0\",");
            query.append(" ip = \"0\"");
            query.append(" WHERE ip = \"").append(address.getHostAddress()).append("\"");


            connection.connect();
            Statement st = getConnection().createStatement();
            st.executeUpdate(query.toString());
            connection.closeConnection();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
