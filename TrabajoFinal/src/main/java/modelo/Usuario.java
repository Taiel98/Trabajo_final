package modelo;

/**
 *
 * @author Taiel98
 */
public class Usuario {
     
    private String nombre;
    private String mail;
    private String clave;

    public Usuario() {
    }

    public Usuario(String nombre, String mail, String clave) {
        this.nombre = nombre;
        this.mail = mail;
        this.clave = clave;
    }
    public Usuario(String mail, String clave){
        this.mail = mail;
        this.clave = clave;
    }

    public String getNombre() {
        return nombre;
    }

    public String getMail() {
        return mail;
    }

    public String getClave() {
        return clave;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }
    
}
