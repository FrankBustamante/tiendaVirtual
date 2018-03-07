package co.edu.unac.ing.store.models;

import co.edu.unac.ing.store.dto.User;

import javax.xml.transform.sax.SAXSource;
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
                user.setName(resultSet.getString("nombre"));
                user.setLastName(resultSet.getString("apellido"));
                user.setEMail(resultSet.getString("mail"));
                user.setPassword(resultSet.getString("password"));
                user.setType(resultSet.getString("tipo"));
                users.add(user);
                System.out.println(user.getName()+" "+user.getEMail());
            }

        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }

      return users;
    }
}
