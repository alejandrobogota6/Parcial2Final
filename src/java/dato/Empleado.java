/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dato;

public class Empleado {
    
    private String nombre;
    private int cedula;
    private String estado;
    private int salario;
    private String FechaIngrego;
    private String TipoContrato;
    private String Departamento;
    private String Puesto;
    private String Regimen;
    private String TipoSueldo;
    private String Turno;

    public Empleado(String nombre, int cedula, String estado, int salario, String TipoContrato, String Departamento, String Puesto, String Regimen, String TipoSueldo, String Turno) {
        this.nombre = nombre;
        this.cedula = cedula;
        this.estado = estado;
        this.salario = salario;
        this.TipoContrato = TipoContrato;
        this.Departamento = Departamento;
        this.Puesto = Puesto;
        this.Regimen = Regimen;
        this.TipoSueldo = TipoSueldo;
        this.Turno = Turno;
    }

    public Empleado() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getCedula() {
        return cedula;
    }

    public void setCedula(int cedula) {
        this.cedula = cedula;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getSalario() {
        return salario;
    }

    public void setSalario(int salario) {
        this.salario = salario;
    }

    public String getFechaIngrego() {
        return FechaIngrego;
    }

    public void setFechaIngrego(String FechaIngrego) {
        this.FechaIngrego = FechaIngrego;
    }
    
    
    public String getTipoContrato() {
        return TipoContrato;
    }

    public void setTipoContrato(String TipoContrato) {
        this.TipoContrato = TipoContrato;
    }

    public String getDepartamento() {
        return Departamento;
    }

    public void setDepartamento(String Departamento) {
        this.Departamento = Departamento;
    }

    public String getPuesto() {
        return Puesto;
    }

    public void setPuesto(String Puesto) {
        this.Puesto = Puesto;
    }

    public String getRegimen() {
        return Regimen;
    }

    public void setRegimen(String Regimen) {
        this.Regimen = Regimen;
    }

    public String getTipoSueldo() {
        return TipoSueldo;
    }

    public void setTipoSueldo(String TipoSueldo) {
        this.TipoSueldo = TipoSueldo;
    }

    public String getTurno() {
        return Turno;
    }

    public void setTurno(String Turno) {
        this.Turno = Turno;
    }
    
    
    
    
    
}
