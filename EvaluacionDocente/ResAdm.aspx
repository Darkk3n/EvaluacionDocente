<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResAdm.aspx.cs" Inherits="EvaluacionDocente.ResAdm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Resultado de Encuenta</title>
</head>
<body bgcolor="FFFFCC" text="990000">
    <form id="form1" runat="server">
        <table align="center">
            <tr>
                <td colspan ="2"><h1>Resultado de Encuesta de Personal Administrativo</h1></td>                
            </tr>
            <tr>
                <td align="right"><asp:Button ID="btnBorrar" runat="server" Text="Borrar Datos" OnClick="btnBorrar_Click" /></td>
                <td><asp:Button ID="btnSalir" runat="server" Text="Salir" OnClick="btnSalir_Click" /></td>
            </tr>
            <tr>
                <td align="right">Personal:</td>
                <td>
                    <asp:DropDownList runat="server" ID="ddlPers" AutoPostBack="true" OnSelectedIndexChanged="ddlPers_SelectedIndexChanged">
                        <asp:ListItem Value="0">--SELECCIONE--</asp:ListItem>
                        <asp:ListItem Value="1">Mtro. Gerardo Vargas Hernández</asp:ListItem>
                        <asp:ListItem Value="2">Mtra. Guadalupe Padilla Moreno</asp:ListItem>
                        <asp:ListItem Value="3">C.P. Hector Edmundo Sánchez Gómez</asp:ListItem>
                        <asp:ListItem Value="4">Ing. Abigail Figueroa Velázquez</asp:ListItem>
                        <asp:ListItem Value="5">Lic. Ramón Bautista Cobarrubias</asp:ListItem>
                        <asp:ListItem Value="6">Lic. Rosalia Landeros Cortes</asp:ListItem>
                        <asp:ListItem Value="7">Ing. Lizeth Ríos Hernández</asp:ListItem>
                        <asp:ListItem Value="8">C. Efrain Martinez Hernandez</asp:ListItem>
                        <asp:ListItem Value="9">Lic. Milda Guadalupe Cruz Bonilla</asp:ListItem>
                        <asp:ListItem Value="10">Lic. Alejandro Calles Bautista</asp:ListItem>
                        <asp:ListItem Value="11">Mtro. Jorge Pablo Hernández Escobar</asp:ListItem>
                        <asp:ListItem Value="12">Ing. Eder Eliel Cruz Malpica</asp:ListItem>
                        <asp:ListItem Value="13">C. Carolina Lara Silva</asp:ListItem>
                        <asp:ListItem Value="14">C. Jorge Luis Cruz González</asp:ListItem>
                        <asp:ListItem Value="15">C. Jorge Ulises Perez Mendoza</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridPuntaje" runat="server">                       
                    </asp:GridView>
                </td>
                <td><asp:Chart ID="Chart1" runat="server" Height="464px" Width="618px">
                        <Series>
                            <asp:Series Name="Series1">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart></td>
            </tr>
            <tr>
                
                <td></td>
            </tr> 
        </table>
    </form>
</body>
</html>
