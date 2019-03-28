<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResAdmonCuat1.aspx.cs" Inherits="EvaluacionDocente.ResAdmonCuat1" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="FFFFCC" text="990000">
    <form id="form1" runat="server">
        <table align="center">
            <tr>
                <td colspan="2" align ="center"><h1>RESULTADOS DE ENCUESTA</h1></td>
                <td><asp:Button ID="btnSalir" runat="server" Text="Salir" Width="80px" OnClick="btnSalir_Click" /></td>
            </tr>
            <tr>
                <td colspan="2"></td>
                <td><asp:Button ID="bntBorrar" runat="server" Text="Limpiar datos" OnClick="bntBorrar_Click" /></td>
            </tr>            
            <tr>
                <td>Carrera:</td>
                <td>Cuatrimestre</td>
                <td>Materia</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlCarrera" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCarrera_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlCuatri" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCuatri_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlMateria" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right">Pregunta:</td>
                <td><asp:DropDownList ID="ddlPreg" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlPreg_SelectedIndexChanged">
                    <asp:ListItem Value="0">--SELECCIONE--</asp:ListItem>
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                    <asp:ListItem Value="6">6</asp:ListItem>
                    <asp:ListItem Value="7">7</asp:ListItem>
                    <asp:ListItem Value="8">8</asp:ListItem>
                    <asp:ListItem Value="9">9</asp:ListItem>
                    <asp:ListItem Value="10">10</asp:ListItem>
                    <asp:ListItem Value="11">11</asp:ListItem>
                    <asp:ListItem Value="12">12</asp:ListItem>
                    <asp:ListItem Value="13">13</asp:ListItem>
                    <asp:ListItem Value="14">14</asp:ListItem>
                    <asp:ListItem Value="15">15</asp:ListItem>
                    <asp:ListItem Value="16">16</asp:ListItem>
                    <asp:ListItem Value="18">17</asp:ListItem>
                    <asp:ListItem Value="19">18</asp:ListItem>
                    <asp:ListItem Value="20">19</asp:ListItem>
                    <asp:ListItem Value="20">20</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridPuntaje" runat="server">                       
                    </asp:GridView>
                </td>
                <td>
                    <asp:Chart ID="Chart1" runat="server" Height="464px" Width="618px">
                        <Series>
                            <asp:Series Name="Series1">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
