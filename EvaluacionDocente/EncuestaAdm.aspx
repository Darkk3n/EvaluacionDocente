<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EncuestaAdm.aspx.cs" Inherits="EvaluacionDocente.EncuestaAdm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="FFFFCC" text="990000" style="height: 788px">
    <form id="form1" runat="server">
        <ajaxToolkit:ToolkitScriptManager ID="TSManager1" runat="server"></ajaxToolkit:ToolkitScriptManager>
        <table align="center">
            <tr>
                <td rowspan="4">Aqui puedes poner el logo de la prepa</td>
                <td>Bachillerato Tecnologico "José Vasconcelos"</td>
                <td rowspan="4">Y aqui el logo de la universidad</td>
            </tr>
            <tr>
                <td><b>Clave: 30DPBH0517H</b></td>

            </tr>
            <tr>
                <td>Universidad del Valle de Poza Rica</td>
            </tr>
            <tr>
                <td><b>Clave: 30MSU0264S</b></td>
            </tr>
            <tr></tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <table align="center">
            <tr>
                <td><b>ENCUESTA DIRIGIDA A LOS ALUMNOS DISCONTINUO (SABADO)</b></td>
            </tr>
            <tr></tr>
            <tr>
                <td>La información aquí porporcionada será maneja de manera confidencial. Instrucciones: Anota el <b><u>número</u></b> en la linea que se te presenta
               después de cada nombre de cada uno de los trabajadores de la institución; De acuerdo a su atención que te brindan en los diversos departamentos
               administrativos, haciendo la aclaración que su valor numerico sera tomado en base a la siguiente tabla:
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table border="1" align="center">
            <tr>
                <td>1</td>
                <td>Malo</td>
            </tr>
            <tr>
                <td>2</td>
                <td>Regular</td>
            </tr>
            <tr>
                <td>1</td>
                <td>Malo</td>
            </tr>
            <tr>
                <td>3</td>
                <td>Bueno</td>
            </tr>
            <tr>
                <td>4</td>
                <td>Excelente</td>
            </tr>
        </table>
        <br />
        <table border="1" align="center">
            <tr>
                <td>No.</td>
                <td>Nombre y Puesto</td>
                <td>Calificación</td>
                <td>Observaciones</td>
            </tr>
            <tr>
                <td>1.</td>
                <td>Rector<br />
                    <b>Mtro. Gerardo Vargas Hernández</b></td>
                <td>
                    <asp:TextBox ID="txtC1" runat="server" MaxLength="1"></asp:TextBox></td>
                 <ajaxToolkit:FilteredTextBoxExtender ID="txtC1_FilteredTextBoxExtender" runat="server" Enabled="True" TargetControlID="txtC1" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="1234"></ajaxToolkit:FilteredTextBoxExtender>
                <td>
                    <asp:TextBox ID="txtObs1" runat="server" Height="46px" Width="272px" MaxLength="50"></asp:TextBox></td>
            </tr>
            <tr>
                <td>2.</td>
                <td>Dirección de Universidad<br />
                    <b>Mtra. Guadalupe Padilla Moreno</b></td>
                <td>
                    <asp:TextBox ID="txtC2" runat="server" MaxLength="1"></asp:TextBox></td>
                <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" Enabled="True" TargetControlID="txtC2" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="1234"></ajaxToolkit:FilteredTextBoxExtender>
                <td>
                    <asp:TextBox ID="txtObs2" runat="server" Height="46px" Width="272px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>3.</td>
                <td>Dirección Administrativa<br />
                    <b>C.P. Hector Edmundo Sánchez Gómez</b></td>
                <td>
                    <asp:TextBox ID="txtC3" runat="server" MaxLength="1"></asp:TextBox></td>
                <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" Enabled="True" TargetControlID="txtC3" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="1234"></ajaxToolkit:FilteredTextBoxExtender>
                <td>
                    <asp:TextBox ID="txtObs3" runat="server" Height="46px" Width="272px" MaxLength="50"></asp:TextBox></td>
            </tr>
            <tr>
                <td>4.</td>
                <td>Recepción<br />
                    <b>Ing. Abigail Figueroa Velázquez</b></td>
                <td>
                    <asp:TextBox ID="txtC4" runat="server" MaxLength="1"></asp:TextBox></td>
                <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" Enabled="True" TargetControlID="txtC4" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="1234"></ajaxToolkit:FilteredTextBoxExtender>
                <td>
                    <asp:TextBox ID="txtObs4" runat="server" Height="46px" Width="272px" MaxLength="50"></asp:TextBox></td>
            </tr>
            <tr>
                <td>5.</td>
                <td>Finanzas<br />
                    <b>Lic. Ramón Bautista Cobarrubias</b></td>
                <td>
                    <asp:TextBox ID="txtC5" runat="server" MaxLength="1"></asp:TextBox></td>
                <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" Enabled="True" TargetControlID="txtC5" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="1234"></ajaxToolkit:FilteredTextBoxExtender>
                <td>
                    <asp:TextBox ID="txtObs5" runat="server" Height="46px" Width="272px" MaxLength="50"></asp:TextBox></td>
            </tr>
            <tr>
                <td>6.</td>
                <td>Control Escolar<br />
                    <b>Lic. Rosalia Landeros Cortes</b></td>
                <td>
                    <asp:TextBox ID="txtC6" runat="server" MaxLength="1"></asp:TextBox></td>
                <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" runat="server" Enabled="True" TargetControlID="txtC6" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="1234"></ajaxToolkit:FilteredTextBoxExtender>
                <td>
                    <asp:TextBox ID="txtObs6" runat="server" Height="46px" Width="272px" MaxLength="50"></asp:TextBox></td>
            </tr>
            <tr>
                <td>7.</td>
                <td>Control Escolar<br />
                    <b>Ing. Lizeth Ríos Hernández</b></td>
                <td>
                    <asp:TextBox ID="txtC7" runat="server" MaxLength="1"></asp:TextBox></td>
                <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" Enabled="True" TargetControlID="txtC7" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="1234"></ajaxToolkit:FilteredTextBoxExtender>
                <td>
                    <asp:TextBox ID="txtObs7" runat="server" Height="46px" Width="272px" MaxLength="50"></asp:TextBox></td>
            </tr>
            <tr>
                <td>8.</td>
                <td>Prefectura y Depto. de Difusión Cultural<br />
                    <b>C. Efrain Martinez Hernandez</b></td>
                <td>
                    <asp:TextBox ID="txtC8" runat="server" MaxLength="1"></asp:TextBox></td>
                <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender7" runat="server" Enabled="True" TargetControlID="txtC8" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="1234"></ajaxToolkit:FilteredTextBoxExtender>
                <td>
                    <asp:TextBox ID="txtObs8" runat="server" Height="46px" Width="272px" MaxLength="50"></asp:TextBox></td>
            </tr>
            <tr>
                <td>9.</td>
                <td>Depto. de Psicopedagogia<br />
                    <b>Lic. Milda Guadalupe Cruz Bonilla</b></td>
                <td>
                    <asp:TextBox ID="txtC9" runat="server" MaxLength="1"></asp:TextBox></td>
                <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender8" runat="server" Enabled="True" TargetControlID="txtC9" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="1234"></ajaxToolkit:FilteredTextBoxExtender>
                <td>
                    <asp:TextBox ID="txtObs9" runat="server" Height="46px" Width="272px" MaxLength="50"></asp:TextBox></td>
            </tr>
            <tr>
                <td>10.</td>
                <td>Depto. de Psicopedagogia<br />
                    <b>Lic. Alejandro Calles Bautista</b></td>
                <td>
                    <asp:TextBox ID="txtC10" runat="server" MaxLength="1"></asp:TextBox></td>
                <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender9" runat="server" Enabled="True" TargetControlID="txtC10" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="1234"></ajaxToolkit:FilteredTextBoxExtender>
                <td>
                    <asp:TextBox ID="txtObs10" runat="server" Height="46px" Width="272px" MaxLength="50"></asp:TextBox></td>
            </tr>
            <tr>
                <td>11.</td>
                <td>Depto. de Psicopedagogia<br />
                    <b>Mtro. Jorge Pablo Hernández Escobar</b></td>
                <td>
                    <asp:TextBox ID="txtC11" runat="server" MaxLength="1"></asp:TextBox></td>
                <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender10" runat="server" Enabled="True" TargetControlID="txtC11" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="1234"></ajaxToolkit:FilteredTextBoxExtender>
                <td>
                    <asp:TextBox ID="txtObs11" runat="server" Height="46px" Width="272px" MaxLength="50"></asp:TextBox></td>
            </tr>
            <tr>
                <td>12.</td>
                <td>Laboratorio de Computo<br />
                    <b>Ing. Eder Eliel Cruz Malpica</b></td>
                <td>
                    <asp:TextBox ID="txtC12" runat="server" MaxLength="1"></asp:TextBox></td>
                <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender11" runat="server" Enabled="True" TargetControlID="txtC12" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="1234"></ajaxToolkit:FilteredTextBoxExtender>
                <td>
                    <asp:TextBox ID="txtObs12" runat="server" Height="46px" Width="272px" MaxLength="50"></asp:TextBox></td>
            </tr>
            <tr>
                <td>13.</td>
                <td>Biblioteca<br />
                    <b>C. Carolina Lara Silva</b></td>
                <td>
                    <asp:TextBox ID="txtC13" runat="server" MaxLength="1"></asp:TextBox></td>
                <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender12" runat="server" Enabled="True" TargetControlID="txtC13" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="1234"></ajaxToolkit:FilteredTextBoxExtender>
                <td>
                    <asp:TextBox ID="txtObs13" runat="server" Height="46px" Width="272px" MaxLength="50"></asp:TextBox></td>
            </tr>
            <tr>
                <td>14.</td>
                <td>Intendencia<br />
                    <b>C. Jorge Luis Cruz González</b></td>
                <td>
                    <asp:TextBox ID="txtC14" runat="server" MaxLength="1"></asp:TextBox></td>
                <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender13" runat="server" Enabled="True" TargetControlID="txtC14" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="1234"></ajaxToolkit:FilteredTextBoxExtender>
                <td>
                    <asp:TextBox ID="txtObs14" runat="server" Height="46px" Width="272px" MaxLength="50"></asp:TextBox></td>
            </tr>
            <tr>
                <td>15.</td>
                <td>Vigilancia<br />
                    <b>C. Jorge Ulises Perez Mendoza</b></td>
                <td>
                    <asp:TextBox ID="txtC15" runat="server" MaxLength="1"></asp:TextBox></td>
                <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender14" runat="server" Enabled="True" TargetControlID="txtC15" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="1234"></ajaxToolkit:FilteredTextBoxExtender>
                <td>
                    <asp:TextBox ID="txtObs15" runat="server" Height="46px" Width="272px" MaxLength="50"></asp:TextBox></td>
            </tr>
        </table>
        <br />
        <br />
        <table>
            <tr>
                <td colspan="2">¿Desea dar alguna sugerencia?</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="txtSug" runat="server" Width="442px" Height="55px" MaxLength="200"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2">¿Desea felicitar a alguien del personal administrativo?</td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rbSi" runat="server" Text="Si" OnCheckedChanged="rbSi_CheckedChanged" AutoPostBack="True" /></td>
                <td>
                    <asp:RadioButton ID="rbNo" runat="server" Text="No" OnCheckedChanged="rbNo_CheckedChanged" AutoPostBack="True" />
                </td>
            </tr>
            <tr runat="server" id="Fel1"> 
                <td>¿A quien?</td>
                <td><asp:TextBox Width="250px" runat="server" ID="txtFel"></asp:TextBox></td>
            </tr>
            <tr runat="server" id="Fel2">
                <td colspan="2">¿Por qué?</td>
            </tr>
            <tr runat="server" id="Fel3">
                <td colspan="2"><asp:TextBox Width="700px" runat="server" ID="txtPq" MaxLength="200"></asp:TextBox> </td>
            </tr>
        </table>
        <table align="right">
            <tr>
                <td><asp:Button ID="btnGuardar" runat="server" Text="Guardar Encuesta" OnClick="btnGuardar_Click" /></td>
                <td><asp:Button ID="btnSalir" runat="server" Text="Salir" OnClick="btnSalir_Click" /></td>
            </tr>
        </table>
    </form>
</body>
</html>

