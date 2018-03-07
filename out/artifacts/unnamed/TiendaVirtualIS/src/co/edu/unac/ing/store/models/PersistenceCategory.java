package co.edu.unac.ing.store.models;

import co.edu.unac.ing.store.dto.Category;

import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

/**
 * Created by brayandavid on 12/05/2017.
 */
public class PersistenceCategory extends Connection {

    public List<Category> getCategories(){

        try {
            connect();

            String query = "SELECT * FROM categoria ";
            Statement st = getConnection().createStatement();
            java.sql.ResultSet resultSet;
            resultSet = st.executeQuery(query);

            while (resultSet.next()) {
                System.out.println("ID: " + resultSet.getString("id") + " "
                        + "Nombre: " + resultSet.getString("Nombre"));
            }

        } catch (SQLException ex) {

        }
        return null;
    }


}
