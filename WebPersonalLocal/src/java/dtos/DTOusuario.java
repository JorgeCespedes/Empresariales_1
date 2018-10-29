package dtos;

/**
 *
 * @author jorgecespedestapia
 */
public class DTOusuario {
    private String correo;
    private String clave;

    public DTOusuario(String correo, String clave) {
        this.correo = correo;
        this.clave = clave;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }
    
    
}
