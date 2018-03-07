package co.edu.unac.ing.store.logic;

import co.edu.unac.ing.store.dto.User;
import co.edu.unac.ing.store.models.UserConsult;

import java.util.ArrayList;

/**
 * Created by Frank Bustamante on 16/05/2017.
 */
public class UserFacade {

    public boolean validateLogin(User user){
        ArrayList<User> users = UserConsult.consultUser();
        boolean validation = false;

        if (!user.getEMail().equals(null) && !user.getEMail().equals("") &&
                !user.getPassword().equals(null) && !user.getPassword().equals("")){

            for (int i=0; i<users.size();i++){
                if (user.getPassword().equals(users.get(i).getPassword()) && user.getEMail().equals(users.get(i).getEMail())){

                    return  true;
                }
            }
        }

        return validation;
    }

    public User validateLoginName(User user){
        ArrayList<User> users = UserConsult.consultUser();

        if (!user.getEMail().equals(null) && !user.getEMail().equals("") &&
                !user.getPassword().equals(null) && !user.getPassword().equals("")){

            for (int i=0; i<users.size();i++){
                if (user.getPassword().equals(users.get(i).getPassword()) && user.getEMail().equals(users.get(i).getEMail())){

                    user.setName(users.get(i).getName());
                    user.setType(users.get(i).getType());
                }
            }
        }

        return user;
    }

    public boolean validate(User user){

        if ((!user.getAddress().equals(null) && !user.getEMail().equals(null)  && !user.getId().equals(null)
                && !user.getName().equals(null) && !user.getPassword().equals(null) && !user.getPhone().equals(null) )){
                if(user.getAddress().length() > 5 && user.getEMail().length() > 5 &&  user.getId().length() > 5
                        && user.getName().length() > 5 && user.getPassword().length() > 5 && user.getPhone().length() > 5 ){

                return true;

            }else{return false;}
        }else{return false;}
    }
}