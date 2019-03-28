using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.UI.DataVisualization.Charting;
namespace EvaluacionDocente
{
    public partial class ResAdm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Conexion conex = new Conexion();
        string strSQL;
        DataTable dt;
        protected void ddlPers_SelectedIndexChanged(object sender, EventArgs e)
        {
            strSQL = "select top 1 id," +
                     " (select count(cal" + ddlPers.SelectedValue.ToString() + ") from EncuestaAdm where cal" + ddlPers.SelectedValue.ToString() + "=4) as '4 Puntos'," +
                     " (select count(cal" + ddlPers.SelectedValue.ToString() + ") from EncuestaAdm where cal" + ddlPers.SelectedValue.ToString() + "=3) as '3 Puntos'," +
                     " (select count(cal" + ddlPers.SelectedValue.ToString() + ") from EncuestaAdm where cal" + ddlPers.SelectedValue.ToString() + "=2) as '2 Puntos'," +
                     " (select count(cal" + ddlPers.SelectedValue.ToString() + ") from EncuestaAdm where cal" + ddlPers.SelectedValue.ToString() + "=1) as '1 Puntos'  from EncuestaAdm";
            dt = conex.ObtenerDatos(strSQL);
            Series series = this.Chart1.Series.Add(ddlPers.SelectedValue.ToString());
            if (dt.Rows.Count >= 1)
            {
                series.Points.Add(int.Parse(dt.Rows[0][1].ToString()));
                series.Points.Add(int.Parse(dt.Rows[0][2].ToString()));
                series.Points.Add(int.Parse(dt.Rows[0][3].ToString()));
                series.Points.Add(int.Parse(dt.Rows[0][4].ToString()));
                GridPuntaje.DataSource = dt;                
                GridPuntaje.DataBind();
            }
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Inicio.aspx");
        }

        protected void btnBorrar_Click(object sender, EventArgs e)
        {
            if (System.Windows.Forms.MessageBox.Show("Esta a punto de eliminar todos los datos de encuesta de la base de datos" + Environment.NewLine + "¿Desea continuar?", "Encuestas", System.Windows.Forms.MessageBoxButtons.YesNo, System.Windows.Forms.MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                strSQL = "delete from encuestaadm";
                conex.GuardarDatos(strSQL);
                System.Windows.Forms.MessageBox.Show("La encuesta ha salido eliminada correctamente");
            }
        }

    }
}