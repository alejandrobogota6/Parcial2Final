/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servicios;

import dato.Salario;

import java.io.Serializable;
import java.util.ArrayList;

/**
 *
 * @author Bogotá
 */
public class BD implements Serializable {

    private ArrayList<Salario> activos;

    public BD() {
        this.activos = new ArrayList<Salario>();

    }

    public void addNuevoreguistro(Salario activo) {
        this.activos.add(activo);
    }

    public ArrayList<Salario> getActivos() {
        return activos;
    }

}
