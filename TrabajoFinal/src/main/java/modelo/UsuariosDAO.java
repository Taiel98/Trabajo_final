package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Taiel98
 */
public class UsuariosDAO {
    Connection con;
    
    PreparedStatement ps;
    ResultSet rs;
    
    
    public UsuariosDAO(){
        Conexion cn = new Conexion();
        con=cn.conectar();
    }

    public boolean validar(Usuario usuario){
        
        String sql= "Select * from usuarios where mail=? and clave=?";
        try{
            
            ps=con.prepareStatement(sql);
            ps.setString(1, usuario.getMail());
            ps.setString(2, usuario.getClave());
            rs=ps.executeQuery();
            while(rs.next()){
                usuario.setNombre(rs.getString("nombre"));
                usuario.setMail(rs.getString("mail"));
                usuario.setClave(rs.getString("clave"));
            }
            return true;
        }catch(SQLException e){
            System.out.println(e.toString());
            return false;
        }
    }
    public void registrar(Usuario usuario){
        
        PreparedStatement ps;
        try{
           ps=con.prepareStatement("INSERT INTO usuarios(nombre,mail,clave) VALUES (?,?,?)");
           ps.setString(1, usuario.getNombre());
           ps.setString(2, usuario.getMail());
           ps.setString(3, usuario.getClave());
           ps.execute();          
            
        }catch(SQLException e){
            System.out.println(e.toString());
            
        }
    }
    
    public void configurar(Usuario user,String mailviejo){
        PreparedStatement ps;
        try{
           ps=con.prepareStatement("UPDATE usuarios SET nombre=?,apellido=?,mail=? WHERE mail=?");
           ps.setString(1, user.getNombre());
           ps.setString(2, user.getMail());
           ps.setString(3, user.getClave());
           ps.setString(4, mailviejo);
           ps.execute();          
        }catch(SQLException e){
            System.out.println(e.toString());
        }
        
    }
    
    public void eliminar(String mail){
        PreparedStatement ps;
        try{
           ps=con.prepareStatement("DELETE FROM usuarios WHERE mail=?");
           ps.setString(1, mail);
           ps.execute();          
           
        }catch(SQLException e){
            System.out.println(e.toString());
            
        }
        
    }
}
