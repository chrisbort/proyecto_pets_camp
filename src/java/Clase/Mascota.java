/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clase;

/**
 *
 * @author Charly
 */
public class Mascota {
        private String CodigoM;
    private String Nombre;
    private String Sexo;
    private String Edad;
    private String Raza;
    private String CodigoCliente;
    private String Estado_M;

    public Mascota() {
    }

    
    public Mascota(String CodigoM, String Nombre, String Sexo, String Edad, String Raza, String CodigoCliente, String Estado_M) {
        this.CodigoM = CodigoM;
        this.Nombre = Nombre;
        this.Sexo = Sexo;
        this.Edad = Edad;
        this.Raza = Raza;
        this.CodigoCliente = CodigoCliente;
        this.Estado_M = Estado_M;
    }

    public String getCodigoM() {
        return CodigoM;
    }

    public void setCodigoM(String CodigoM) {
        this.CodigoM = CodigoM;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getSexo() {
        return Sexo;
    }

    public void setSexo(String Sexo) {
        this.Sexo = Sexo;
    }

    public String getEdad() {
        return Edad;
    }

    public void setEdad(String Edad) {
        this.Edad = Edad;
    }

    public String getRaza() {
        return Raza;
    }

    public void setRaza(String Raza) {
        this.Raza = Raza;
    }

    public String getCodigoCliente() {
        return CodigoCliente;
    }

    public void setCodigoCliente(String CodigoCliente) {
        this.CodigoCliente = CodigoCliente;
    }

    public String getEstado_M() {
        return Estado_M;
    }

    public void setEstado_M(String Estado_M) {
        this.Estado_M = Estado_M;
    }

    

    
}
