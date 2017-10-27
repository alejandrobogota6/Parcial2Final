/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import dato.Empleado;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Listar_Nomina {

    public List<Empleado> findAll() throws SQLException {
        List<Empleado> departamentos = null;
        String query = "select empleado.Nombre, empleado.Cedula, empleado.Estado, empleado.Salario, empleado.FechaIngrego, contrato.Tipo as 'TipoContrato', departamento.Nombre as 'Departamento', puesto.Nombre as 'Puesto', regimencontratacion.Nombre as 'Regimen', tiposueldo.Tipo as 'TipoSueldo', turno.Nombre as 'Turno' from contrato, departamento, empleado, puesto, regimencontratacion, tiposueldo, turno where contrato.Id_Contrato=empleado.id_contrato and departamento.Id_departamento=empleado.id_departamento and puesto.Id_puesto=empleado.id_puesto and regimencontratacion.Id_regimen=empleado.id_regimen and tiposueldo.Id_tipoSueldo=empleado.id_tipoSueldo and turno.Id_turno=empleado.id_turno";
        Connection connection = Conexion.getConnection();
        try {
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(query);

            String nombre;
            int cedula;
            String estado;
            int salario;
            String FechaIngrego;
            String TipoContrato;
            String Departamento;
            String Puesto;
            String Regimen;
            String TipoSueldo;
            String Turno;

            while (rs.next()) {
                if (departamentos == null) {
                    departamentos = new ArrayList<Empleado>();
                }

                Empleado registro = new Empleado();

                nombre = rs.getString("Nombre");
                registro.setNombre(nombre);

                cedula = rs.getInt("Cedula");
                registro.setCedula(cedula);

                estado = rs.getString("Estado");
                registro.setEstado(estado);

                salario = rs.getInt("Salario");
                registro.setSalario(salario);

                FechaIngrego = String.valueOf(rs.getDate("FechaIngrego"));
                registro.setFechaIngrego(FechaIngrego);

                TipoContrato = rs.getString("TipoContrato");
                registro.setTipoContrato(TipoContrato);

                Departamento = rs.getString("Departamento");
                registro.setDepartamento(Departamento);

                Puesto = rs.getString("Puesto");
                registro.setPuesto(Puesto);

                Regimen = rs.getString("Regimen");
                registro.setRegimen(Regimen);

                TipoSueldo = rs.getString("TipoSueldo");
                registro.setTipoSueldo(TipoSueldo);

                Turno = rs.getString("Turno");
                registro.setTurno(Turno);

                departamentos.add(registro);
               
            }
            st.close();

        } catch (SQLException e) {
            System.out.println("Problemas al obtener la lista de Departamentos");
            e.printStackTrace();
        }

        return departamentos;
    }

}
