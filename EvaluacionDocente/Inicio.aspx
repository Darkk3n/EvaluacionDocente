<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="EvaluacionDocente.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>INICIO</title>
    <style type="text/css">
        * {
            margin: 0px;
            padding: 0px;
        }

        #header {
            margin: auto;
            width: 500px;
            font-family: Arial, Helvetica, sans-serif;
        }

        ul, ol {
            list-style: none;
            height: 41px;
        }

        .nav > li {
            float: left;
        }

        .nav li a {
            background-color: #DF0101;
            color: #fff;
            text-decoration: none;
            padding: 10px 12px;
            display: block;
        }

            .nav li a:hover {
                background-color: #434343;
            }

        .nav li ul {
            display: none;
            position: absolute;
            min-width: 140px;
        }

        .nav li:hover > ul {
            display: block;
        }

        .nav li ul li {
            position: relative;
        }

            .nav li ul li ul {
                right: -140px;
                top: 0px;
            }
    </style>
</head>
<body bgcolor="FFFFCC" text="990000" style="height: 788px">
    <div id="header" align="center">
       <a href="Encuesta.aspx">Encuesta Docentes</a>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <a href="LogIn.aspx">Resultados de Encuestas</a>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <a href="EncuestaAdm.aspx">Encuesta Administrativos</a>
    </div>
    <br />
    <br />
    <br />
    <br />

    <form id="form1" runat="server">
        <center>
              <h1 style="width: 478px"> UNIVERSIDAD DEL VALLE DE <BR />POZA RICA </h1>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://lh6.googleusercontent.com/-PepAh8TeDzk/VAICC3U-04I/AAAAAAAAAGU/fKWou86l-mQ/w769-h577-no/logo.png" style="width: 329px; height: 196px;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <br />
           <h4>EVALUACIONES HACIA EL PERSONAL DOCENTE Y ADMINISTRATIVO</h4><br /><br />
              <p>
                  Este software esta diseñado para encontrar disponibles las evaluaciones hacia el personal docente <br />y administrativo y que los alumnos puedan realizarlas.</p>
            </center>
    </form>
</body>
</html>
