using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace EvaluacionDocente
{
    public partial class LogIn : System.Web.UI.Page
    {
        Conexion conex = new Conexion();
        string strSQL;
        DataTable dt;
        bool insertado;
        string[] pass;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                strSQL = "select nombre from administrativo";
                dt = conex.ObtenerDatos(strSQL);
                pass = new string[dt.Rows.Count];
                ddlUsuario.Items.Insert(0, new ListItem("--SELECCIONE--"));
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    ddlUsuario.Items.Add(new ListItem(dt.Rows[i]["Nombre"].ToString(), dt.Rows[i]["Nombre"].ToString()));
                }

            }
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            if (ddlUsuario.SelectedIndex != 0 && ddlEncuesta.SelectedIndex!=0)
            {
                strSQL = "select contraseña from administrativo where nombre='" + ddlUsuario.Text + "'";
                dt = conex.ObtenerDatos(strSQL);
                if (txtPass.Text == dt.Rows[0]["contraseña"].ToString())
                {
                    if (ddlEncuesta.SelectedIndex == 1)
                        Response.Redirect("~/ResAdmonCuat1.aspx");
                    else
                        Response.Redirect("~/ResAdm.aspx");
                }
                else
                {
                    Response.Write("<script type=text/javascript>alert('Contraseña incorrecta')</script>");

                }
            }
            else
            {
                Response.Write("<script type=text/javascript>alert('Seleccione una Encuesta y un Usuario')</script>");

            }
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Inicio.aspx");
        }
    }
}