<%-- 
    Document   : index
    Created on : 4/09/2017, 10:28:11 AM
    Author     : Labing I5
--%>

<%@page import="dato.Empleado"%>
<%@page import="DAO.Listar_Nomina"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

    <head>
        <title>Nomina</title>
        <meta name="description" content="website description" />
        <meta name="keywords" content="website keywords, website keywords" />
        <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine&amp;v1" />
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz" />
        <link rel="stylesheet" type="text/css" href="style/style.css" />


    </head>




    <body >

        <div id="main">
            <div id="header">
                <div id="logo">

                    <h1>Nomina </h1>   

                    <div class="slogan">Nóminas</div> 

                    <p>&nbsp;</p>



                </div>
                <div id="menubar" style="background-color:#ff6666">
                    <ul id="menu">
                        <!-- put class="current" in the li tag for the selected page - to highlight which page you're on -->
                        <li ><a href="index.jsp">Actualizar</a></li>
                        <li class="current" ><a href="listar.jsp">Listar</a></li>



                    </ul>
                </div>
            </div>
            <div id="site_content" style="background-color:#35BDF5">
                <div id="sidebar_container">
                    <!-- Inicio presentacion Noticias-->
                    <img class="paperclip" src="style/paperclip.png" alt="paperclip" />
                    <div class="sidebar">
                        <!-- insert your sidebar items here -->
                        <h3>&Uacute;ltimas Noticias</h3>
                        <h4>No tendremos atencion</h4>
                        <h5>31 Agosto 2018</h5>
                        <p>Estamos de vacaciones<br /><a href="#"></a></p> 
                        <script language="JavaScript" src="http://www.pekegifs.com/calendarios2/cal005.js" type="text/JavaScript" ></script>


                    </div>
                    <!-- Final presentacion Noticias-->


                    <p>&nbsp;</p>
                    <p>&nbsp;</p>

                </div>
                <div id="content" style="background-color:#ffff33">
                    <!-- insert the page content here -->
                    <h1>Reporte Nómina</h1>


                    <form action="Listar" method="post">
                        <div class="form_settings">

                            
                            <%

                                System.out.println("lectura");

                                Listar_Nomina s6 = new Listar_Nomina();
                                List<Empleado> activos2 = s6.findAll();

                                out.println("<h1> " + "-------------------------------------------------------------------------------------------------------------------------------------" + "</h1>");
                                
                                double SalariosTotales=0;
                                double Parafiscales=0;
                                double SeguridadSalud=0;
                                double SeguridadPesion=0;
                                double TotalNomina=0;
                                double TotalEmpresa=0;
                                

                                for (int i = 0; i < activos2.size(); i++) {
                                    double SalarioSub=0;
                                    double PrimaServicios=0;
                                    double Cesantias=0;
                                    double interesCesantias=0;
                                    double vacaciones=0;
                                    double SeguridadSaludEmpleado=0;
                                    double SeguridadPensionEmpleado=0;
                                    String Auxilio;
                                            
                                    int DiasTrabajados=0;
                                    
                                    if(activos2.get(i).getSalario()<(737717*2)){
                                        SalarioSub=activos2.get(i).getSalario()+83140;
                                        Auxilio="Sí";
                                    }else{
                                    
                                        SalarioSub=activos2.get(i).getSalario();
                                        Auxilio="No";
                                    }
                                    
                                    String Fecha=activos2.get(i).getFechaIngrego();
                                    String Ano="";
                                    String Mes="";
                                    String Dias="";
        
                                    for (int j = 0; j < Fecha.length(); j++) {


                                        if(j<=3){
                                        Ano = Ano+Fecha.charAt(j);

                                        }
                                        if(j>4 && j<=6){
                                        Mes = Mes+Fecha.charAt(j);
                                        }
                                        if(j>7 && j<=9){
                                        Dias = Dias+Fecha.charAt(j);
                                        }


                                    }
                                     int AnoNum = Integer.parseInt(Ano);
                                     int MesNum = Integer.parseInt(Mes);
                                     int DiasNum = Integer.parseInt(Dias); 
                                     
                                     DiasTrabajados=((12-MesNum)*30)+DiasNum;
                                     
                                     PrimaServicios=(activos2.get(i).getSalario()*DiasTrabajados)/360;
                                     Cesantias=(activos2.get(i).getSalario()*DiasTrabajados)/360;
                                     
                                     interesCesantias=Cesantias*0.12;
                                     
                                     vacaciones=(activos2.get(i).getSalario()*DiasTrabajados)/720;
                                     
                                     SeguridadSalud=activos2.get(i).getSalario()*0.085+SeguridadSalud;
                                     SeguridadPesion=activos2.get(i).getSalario()*0.12+SeguridadPesion;
                                     
                                     SalariosTotales=activos2.get(i).getSalario()+SalariosTotales;
                                     
                                     SeguridadPensionEmpleado=activos2.get(i).getSalario()*0.04;
                                     SeguridadSaludEmpleado=activos2.get(i).getSalario()*0.04;
                                    
                                    out.println("<h1> " + "Nombre" + "   -   " + "Cédula" + "   -       " + "Cargo" + "   -   " + "Departamento" + "   -   " + "Fecha de ingreso" + "</h1>");
                                    out.println("<h2> " + activos2.get(i).getNombre() + " - " + activos2.get(i).getCedula() + " - " + activos2.get(i).getPuesto() + " - " + activos2.get(i).getDepartamento() + "  -  " + activos2.get(i).getFechaIngrego() + "</h2>");
                                    out.println("<h1> "+" Días Trabajados "+" - "+" Prima Servicios "+ "-"+" Cesantias "+"-"+" Vacaciones "+"</h1>");
                                    out.println("<h1> "+ DiasTrabajados+" -       "+PrimaServicios + "   -   "+ Cesantias+ "   -   "+ vacaciones+"</h1>");
                                    out.println("<h1> "+" Salario "+"  -  " +" Aux. Transporte "+" - "+"  Pensión  "+"  -  "+"  Salud  "+"</h1>");
                                    out.println("<h1> "+SalarioSub+"   -  "+ Auxilio  +"   -   "+SeguridadPensionEmpleado+"   -   "+SeguridadSaludEmpleado);
                                    out.println("<h1> " + "-------------------------------------------------------------------------------------------------------------------------------------" + "</h1>");
                                    
                                    
                                    
                                }
                                
                                TotalNomina=SeguridadPesion+SeguridadSalud+SalariosTotales;
                                Parafiscales=(TotalNomina*0.02)+(TotalNomina*0.03)+(TotalNomina*0.04);
                                TotalEmpresa=TotalNomina+Parafiscales;
                                
                                
                                out.println("<h1> "+ "Total Nómina   "+ "-"+ " Parafiscales Totales "+ "-"+ " Total Empresa " + "</h1>");
                                out.println("<h1> "+ TotalNomina  + "-"+ Parafiscales+ "-"+ TotalEmpresa +"</h1>");
                                

                            %>


                        </div>
                    </form>

                </div>
            </div>
            <div id="footer">
                <p> Bogota, colombia  </p>
            </div>
        </div>
    </body>
</html>
