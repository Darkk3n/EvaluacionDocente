<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Encuesta.aspx.cs" Inherits="EvaluacionDocente.Encuesta" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="FFFFCC" text="990000" style="height: 788px">
    <form runat="server">
        <ajaxToolkit:ToolkitScriptManager ID="TSManager1" runat="server"></ajaxToolkit:ToolkitScriptManager>
        <center>
        <h1 style="width: 700px"> UNIVERSIDAD DEL VALLE DE POZA RICA </h1>
              <p style="width: 600px">DEPARTAMENTO DE PSICOPEDAGOGIA</p>
           &nbsp;<br /><br />
           <h4>EVALUACION DE LA ACTIVIDAD DOCENTE Y PERSONAL ADMINISTRATIVO</h4> 
        <br />        
        <p align="justify">INSTRUCCIONES: El siguiente cuestionario es el instrumento para evaluar el desempeño profesional de los docentes que este cuatrimestre impartieron una determinada materia en tu grupo, se busca revisar las areas de oportunidad que favorezcan al mejoramiento de un proceso de enseñanza-aprendizaje de calidad, por ello la informacion que proporciones sera confidencial y de uso exclusivo para el proceso de mejora institucional. Contesta cada aspecto con la escala: <b>1-DEFICIENTE, 2-SUFICIENTE, 3-REGULAR, 4-BUENO, 5-EXCELENTE</b> </p>
        <br />
            <table>
                <tr>
                    <td>Carrera:</td>
                    <td>Cuatrimestre:</td>
                    <td>Grupo:</td>
                    <td>Turno:</td>
                    <td>Fecha:</td>
                </tr>
                <tr>
                    <td><asp:DropDownList ID="ddlCarrera" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCarrera_SelectedIndexChanged"></asp:DropDownList></td>
                    <td><asp:DropDownList ID="ddlCuatri" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCuatri_SelectedIndexChanged"></asp:DropDownList></td>
                    <td><asp:DropDownList ID="ddlGpo" runat="server">
                        <asp:ListItem>--SELECCIONE--</asp:ListItem>
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                        <asp:ListItem>C</asp:ListItem>
                        </asp:DropDownList></td>
                    <td><asp:DropDownList ID="Turno" runat="server">
                        <asp:ListItem Value="sel">--SELECCIONE--</asp:ListItem>
                        <asp:ListItem Value="mat">Matutino</asp:ListItem>
                        <asp:ListItem Value="vesp">Vespertino</asp:ListItem>
                        </asp:DropDownList></td>
                    <td><asp:TextBox ID="txtFecha" runat="server" Text=""></asp:TextBox>
                     
                        <ajaxToolkit:CalendarExtender ID="txtFecha_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtFecha" Format="dd/MM/yyyy" TodaysDateFormat="dd/MM/yyyy">
                        </ajaxToolkit:CalendarExtender>
                     
                    </td>
                </tr>
            </table>
            <asp:GridView ID="GV1" runat="server" ShowFooter="True" AutoGenerateColumns="False">
 <Columns>
      <asp:TemplateField HeaderText="No." Visible="false">
       <ItemTemplate>
         <asp:Label ID="lblService" runat="server" Text="Etiqueta"></asp:Label>
       </ItemTemplate>
  </asp:TemplateField>
     <asp:TemplateField HeaderText="Aspecto a Evaluar" Visible="false">
         <ItemTemplate>
             <asp:Label ID="lblService1" runat="server" Text="Etiqueta"></asp:Label>             
         </ItemTemplate>
     </asp:TemplateField>
  <asp:TemplateField HeaderText="Materia1" Visible="false">
    <ItemTemplate>
      <asp:TextBox ID="txt1" runat="server" MaxLength="1" ></asp:TextBox>
        <ajaxToolkit:FilteredTextBoxExtender ID="txt1_FilteredTextBoxExtender" runat="server" Enabled="True" TargetControlID="txt1" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="12345">
        </ajaxToolkit:FilteredTextBoxExtender>
    </ItemTemplate>   
   </asp:TemplateField>
     <asp:TemplateField HeaderText="Materia2" Visible="false">
         <ItemTemplate>
             <asp:TextBox ID="txt2" runat="server" MaxLength="1"></asp:TextBox>
            <ajaxToolkit:FilteredTextBoxExtender ID="txt2_FilteredTextBoxExtender" runat="server" Enabled="True" TargetControlID="txt2" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="12345">
        </ajaxToolkit:FilteredTextBoxExtender>
         </ItemTemplate>
     </asp:TemplateField>
     <asp:TemplateField HeaderText="Materia3" Visible="false">
         <ItemTemplate>
             <asp:TextBox ID="txt3" runat="server" MaxLength="1" ></asp:TextBox>
                         <ajaxToolkit:FilteredTextBoxExtender ID="txt3_FilteredTextBoxExtender" runat="server" Enabled="True" TargetControlID="txt3" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="12345">
        </ajaxToolkit:FilteredTextBoxExtender>
         </ItemTemplate>
     </asp:TemplateField>
     <asp:TemplateField HeaderText="Materia4" Visible="false">
         <ItemTemplate>
             <asp:TextBox ID="txt4" runat="server" MaxLength="1" ></asp:TextBox>
                         <ajaxToolkit:FilteredTextBoxExtender ID="txt4_FilteredTextBoxExtender" runat="server" Enabled="True" TargetControlID="txt4" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="12345">
        </ajaxToolkit:FilteredTextBoxExtender>
         </ItemTemplate>
     </asp:TemplateField>
     <asp:TemplateField HeaderText="Materia5" Visible="false">
         <ItemTemplate>
             <asp:TextBox ID="txt5" runat="server" MaxLength="1" ></asp:TextBox>
                         <ajaxToolkit:FilteredTextBoxExtender ID="txt5_FilteredTextBoxExtender" runat="server" Enabled="True" TargetControlID="txt5" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="12345">
        </ajaxToolkit:FilteredTextBoxExtender>
         </ItemTemplate>
     </asp:TemplateField>
     <asp:TemplateField HeaderText="Materia6" Visible="false">
         <ItemTemplate>
             <asp:TextBox ID="txt6" runat="server" MaxLength="1" ></asp:TextBox>
                         <ajaxToolkit:FilteredTextBoxExtender ID="txt6_FilteredTextBoxExtender" runat="server" Enabled="True" TargetControlID="txt6" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="12345">
        </ajaxToolkit:FilteredTextBoxExtender>
         </ItemTemplate>
     </asp:TemplateField>
     <asp:TemplateField HeaderText="Materia7" Visible="false">
         <ItemTemplate>
             <asp:TextBox ID="txt7" runat="server" MaxLength="1" ></asp:TextBox>
                         <ajaxToolkit:FilteredTextBoxExtender ID="txt7_FilteredTextBoxExtender" runat="server" Enabled="True" TargetControlID="txt7" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="12345">
        </ajaxToolkit:FilteredTextBoxExtender>
         </ItemTemplate>
     </asp:TemplateField>
     <asp:TemplateField HeaderText="Materia8" Visible="false">
         <ItemTemplate>
             <asp:TextBox ID="txt8" runat="server" MaxLength="1" ></asp:TextBox>
                         <ajaxToolkit:FilteredTextBoxExtender ID="txt8_FilteredTextBoxExtender" runat="server" Enabled="True" TargetControlID="txt8" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="12345">
        </ajaxToolkit:FilteredTextBoxExtender>
         </ItemTemplate>
     </asp:TemplateField>
     <asp:TemplateField HeaderText="Materia9" Visible="false">
         <ItemTemplate>
             <asp:TextBox ID="txt9" runat="server" MaxLength="1" ></asp:TextBox>
                         <ajaxToolkit:FilteredTextBoxExtender ID="txt9_FilteredTextBoxExtender" runat="server" Enabled="True" TargetControlID="txt9" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="12345">
        </ajaxToolkit:FilteredTextBoxExtender>
         </ItemTemplate>
     </asp:TemplateField>
     <asp:TemplateField HeaderText="Materia10" Visible="false">
         <ItemTemplate>
             <asp:TextBox ID="txt10" runat="server" MaxLength="1" ></asp:TextBox>
             <ajaxToolkit:FilteredTextBoxExtender ID="txt10_FilteredTextBoxExtender" runat="server" Enabled="True" TargetControlID="txt10" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="12345">
        </ajaxToolkit:FilteredTextBoxExtender>
         </ItemTemplate>
     </asp:TemplateField>
       <asp:TemplateField HeaderText="Materia11" Visible="false">
         <ItemTemplate>
             <asp:TextBox ID="txt11" runat="server" MaxLength="1" ></asp:TextBox>
             <ajaxToolkit:FilteredTextBoxExtender ID="txt11_FilteredTextBoxExtender" runat="server" Enabled="True" TargetControlID="txt11" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="12345">
        </ajaxToolkit:FilteredTextBoxExtender>
         </ItemTemplate>
     </asp:TemplateField>
       <asp:TemplateField HeaderText="Materia12" Visible="false">
         <ItemTemplate>
             <asp:TextBox ID="txt12" runat="server" MaxLength="1" ></asp:TextBox>
             <ajaxToolkit:FilteredTextBoxExtender ID="txt12_FilteredTextBoxExtender" runat="server" Enabled="True" TargetControlID="txt12" FilterMode="ValidChars"
            FilterType="Custom" ValidChars="12345">
        </ajaxToolkit:FilteredTextBoxExtender>
         </ItemTemplate>
     </asp:TemplateField>
 </Columns>
</asp:GridView>
            <table align="left" border="1">
                <tr runat="server" id ="fila"> 
                    <td style="display:none;"></td><td style="display:none;"></td><td style="display:none;"></td><td style="display:none;"></td><td style="display:none;"></td><td style="display:none;"></td><td style="display:none;"></td><td style="display:none;"></td><td style="display:none;"></td><td style="display:none;"></td><td style="display:none;"></td><td style="display:none;"></td><td style="display:none;"></td>
                </tr>
                <tr runat="server" id="FilaObserva">
                    <td colspan="22"><asp:Label ID="lblObserva" Text="Observaciones" runat="server"></asp:Label></td>
                </tr>
                <tr runat="server" id="TextoObserva">
                    <td colspan="22"><asp:TextBox ID="txtObserva" runat="server" Height="40px" Width="413px" MaxLength="200"></asp:TextBox></td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
                <center>
            <table>
                <tr>
                    <td><asp:Button ID="btnAceptar" runat="server" Text="Guardar Encuesta" OnClick="btnAceptar_Click" /></td>
                    <td><asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" /></td>
                </tr>
            </table>
                </center>
        </center>
    </form>
</body>
</html>
