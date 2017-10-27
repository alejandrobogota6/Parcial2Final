<%-- 
    Document   : index
    Created on : 4/09/2017, 10:28:11 AM
    Author     : Labing I5
--%>

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

                        <div class="slogan">Nominas al instante</div> 
                                 
                        <p>&nbsp;</p>



                </div>
                <div id="menubar" style="background-color:#ff6666">
                    <ul id="menu">
                        <!-- put class="current" in the li tag for the selected page - to highlight which page you're on -->
                        <li class="current" ><a href="index.jsp">Actualizar</a></li>
                        <li><a href="listar.jsp">Listar</a></li>
                   


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
                    <h1>actualizacion de nominas</h1>
                    <p>Ingrese la informacion solicitada</p>

                    <form action="Index" method="post">
                        <div class="form_settings">
                            <p><span>Cedula</span>
                                <input class="contact" type="text" name="cedula" value="" /></p>
                            <p><span>Nuevo salario</span>
                                <input class="contact" type="number" name="salario" value="" /></p>
                        
                            <p style="padding-top: 15px"><span>&nbsp;</span><input class="submit" type="submit" name="actualizar" value="Actualizar" /></p>
                        </div>
                    </form>

                </div>
            </div>
            <div id="footer">
                <p> Bogota, colombia </p>
            </div>
        </div>
    </body>
</html>
