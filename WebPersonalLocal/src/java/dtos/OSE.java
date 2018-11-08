package dtos;

/**
 * @author jorgecespedestapia
 */
public class OSE {
    private int idOSE;
    private String nombreOSE;
    private String denominacionOSE;
    private int idPais;
    private int idTipoOse;

    public OSE(String nombreOSE, String denominacionOSE, int idPais, int idTipoOse) {
        this.nombreOSE = nombreOSE;
        this.denominacionOSE = denominacionOSE;
        this.idPais = idPais;
        this.idTipoOse = idTipoOse;
    }

    public OSE(int idOSE, String nombreOSE, String denominacionOSE, int idPais, int idTipoOse) {
        this.idOSE = idOSE;
        this.nombreOSE = nombreOSE;
        this.denominacionOSE = denominacionOSE;
        this.idPais = idPais;
        this.idTipoOse = idTipoOse;
    }

    public int getIdOSE() {
        return idOSE;
    }

    public void setIdOSE(int idOSE) {
        this.idOSE = idOSE;
    }

    public String getNombreOSE() {
        return nombreOSE;
    }

    public void setNombreOSE(String nombreOSE) {
        this.nombreOSE = nombreOSE;
    }

    public String getDenominacionOSE() {
        return denominacionOSE;
    }

    public void setDenominacionOSE(String denominacionOSE) {
        this.denominacionOSE = denominacionOSE;
    }

    public int getIdPais() {
        return idPais;
    }

    public void setIdPais(int idPais) {
        this.idPais = idPais;
    }

    public int getIdTipoOse() {
        return idTipoOse;
    }

    public void setIdTipoOse(int idTipoOse) {
        this.idTipoOse = idTipoOse;
    }
    
    
}
