/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dato;

public class Salario {
    
    private int cedula;
    private int salario;

    public Salario(int cedula, int salario) {
        this.cedula = cedula;
        this.salario = salario;
    }
    
    public Salario() {
        
    }

        
    public int getCedula() {
        return cedula;
    }

    public void setCedula(int cedula) {
        this.cedula = cedula;
    }

    public int getSalario() {
        return salario;
    }

    public void setSalario(int salario) {
        this.salario = salario;
    }
    
    
    
    
    
    
}
