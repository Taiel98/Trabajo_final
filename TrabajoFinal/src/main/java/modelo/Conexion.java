package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Taiel98
 */
public class Conexion {
    
    public String driver = "com.mysql.jdbc.Driver";
    public String server = "localhost:3306/";
    public String baseDatos = "tpfinal";
    public String usuario = "root";
    public String clave = "";
    
    
    
    public Connection conectar(){
        Connection cn=null;
        try{
            Class.forName(driver);
            cn = DriverManager.getConnection("jdbc:mysql://"+server+baseDatos,
                    usuario,clave);
        }catch(ClassNotFoundException | SQLException e){
            System.out.println(e.toString());
        }
    return cn;
    }
}
