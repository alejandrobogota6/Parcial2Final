/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;


import DAO.Actulizar_Salario;
import dato.Salario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import servicios.BD;

/**
 *
 * @author Labing I5
 */
public class Index extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try (PrintWriter out = response.getWriter()) {
            String cedulaq = request.getParameter("cedula");
            String salarioq = request.getParameter("salario");
      
            int cedula=Integer.parseInt(cedulaq);
            int salario=Integer.parseInt(salarioq);
            
            Salario s=new Salario(cedula,salario);
            BD d = new BD();
            d.addNuevoreguistro(s);
            Actulizar_Salario f = new Actulizar_Salario();  
            try {
                System.out.println(f.update(d));
                  request.getRequestDispatcher("index.jsp").forward(request, response);
         
            } catch (SQLException ex) {
                Logger.getLogger(Index.class.getName()).log(Level.SEVERE, null, ex);
            }
            

        }
    }
}
