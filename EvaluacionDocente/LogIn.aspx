<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="EvaluacionDocente.LogIn" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>DOCENTES</title>
    <style type="text/css">
        * {
            padding: 0px;
            margin-left: 0px;
            margin-right: 0px;
            margin-top: 0px;
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
    <br />
    <br />

    <form id="form1" runat="server">
        <div align="center">
            <h1 style="width: 479px" align="center">UNIVERSIDAD DEL VALLE DE
                <br />
                POZA RICA </h1>
            <img align="center" src="https://lh6.googleusercontent.com/-PepAh8TeDzk/VAICC3U-04I/AAAAAAAAAGU/fKWou86l-mQ/w769-h577-no/logo.png" style="width: 292px; height: 223px;" />
        </div>
        <br />
       <div align="center">
            <table align="center">
                <tr>
                    <td colspan="2">
                        <h2>PERSONAL PSICOPEDAGOGICO</h2>
                    </td>
                </tr>
                <tr>
                    <td align="right">Seleccione una encuesta:</td>
                    <td><asp:DropDownList ID="ddlEncuesta" runat="server">
                        <asp:ListItem>--SELECCIONE--</asp:ListItem>
                        <asp:ListItem>Docentes</asp:ListItem>
                        <asp:ListItem>Administrativos</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td align="right">Nombre:</td>
                    <td><asp:DropDownList ID="ddlUsuario" runat ="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td align="right">Contraseña:</td>
                    <td>
                        <asp:TextBox ID="txtPass" runat="server" Text="123" TextMode="Password"></asp:TextBox>                        
                    </td>
                </tr>
                <tr>
                    <td align="center"><asp:Button ID="btnEntrar" Text="Entrar" runat="server" OnClick="btnEntrar_Click" /></td>
                    <td><asp:Button ID="btnSalir" runat="server" Text="Salir" OnClick="btnSalir_Click" /></td>
                </tr>
            </table>
           </div>
    </form>
</body>
</html>
