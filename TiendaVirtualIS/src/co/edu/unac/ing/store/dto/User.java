package co.edu.unac.ing.store.dto;

/**
 * Created by Frank Bustamante on 16/03/2017.
 */
public class User {
    private String name;
    private String lastName;
    private String address;
    private String password;
    private String eMail;
    private String id;
    private String phone;
    private String type;
    private String ip;
    private String log;

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getLog() {
        return log;
    }

    public void setLog(String log) {
        this.log = log;
    }


    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getEMail(){
        return eMail;
    }

    public void setEMail(String eMail){
        this.eMail =  eMail;
    }

    public String getName(){ return name; }

    public void setName(String name){
        this.name = name;
    }

    public String getAddress(){
        return address;
    }

    public void setAddress(String address){
        this.address = address;
    }

    public String  getPassword(){
        return password;
    }

    public void setPassword(String password){
        this.password = password;
    }

    public String getId(){
        return id;
    }

    public void setId(String id){
        this.id = id;
    }

    public String getPhone(){
        return phone;
    }

    public void setPhone(String phone){
        this.phone = phone;
    }
}
