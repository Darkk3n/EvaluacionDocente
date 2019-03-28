using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Windows.Forms;
namespace EvaluacionDocente
{
    public partial class EncuestaAdm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

            }
        }
        Conexion conex = new Conexion();
        string strSQL;
        
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            strSQL = "insert into encuestaadm values(" + int.Parse(txtC1.Text) + ",'" + txtObs1.Text + "'," +
                "" + int.Parse(txtC2.Text) + ",'" + txtObs2.Text + "'," + int.Parse(txtC3.Text) + ",'" + txtObs3.Text + "'," +
                "" + int.Parse(txtC4.Text) + ",'" + txtObs4.Text + "'," + int.Parse(txtC5.Text) + ",'" + txtObs5.Text + "'," +
                "" + int.Parse(txtC6.Text) + ",'" + txtObs6.Text + "'," + int.Parse(txtC7.Text) + ",'" + txtObs7.Text + "'," +
                "" + int.Parse(txtC8.Text) + ",'" + txtObs8.Text + "'," + int.Parse(txtC9.Text) + ",'" + txtObs9.Text + "'," +
                "" + int.Parse(txtC10.Text) + ",'" + txtObs10.Text + "'," + int.Parse(txtC11.Text) + ",'" + txtObs11.Text + "'," +                
                "" + int.Parse(txtC12.Text) + ",'" + txtObs12.Text + "'," + int.Parse(txtC13.Text) + ",'" + txtObs13.Text + "'," +
                "" + int.Parse(txtC14.Text) + ",'" + txtObs14.Text + "'," + int.Parse(txtC15.Text) + ",'" + txtObs15.Text + "','"  + txtSug.Text + "',";
            if(rbSi.Checked)
            {
                strSQL += "'" + txtFel.Text + "','" + txtPq.Text + "')";
            }
            else
            {
                strSQL += "'','')";
            }
            try
            {
                conex.GuardarDatos(strSQL);
            }
            catch (Exception ex)
            {
                Response.Write("<script type=text/javascript>alert('" + ex.Message + "')</script>");
                return;
            }
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Inicio.aspx");
        }

        protected void rbSi_CheckedChanged(object sender, EventArgs e)
        {
            if (rbSi.Checked)
            {
                rbNo.Checked = false;
                Fel1.Visible = true;
                Fel2.Visible = true;
                Fel3.Visible = true;
            }        
        }

        protected void rbNo_CheckedChanged(object sender, EventArgs e)
        {
            if (rbNo.Checked)
            {
                rbSi.Checked = false;
                Fel1.Visible = false;
                Fel2.Visible = false;
                Fel3.Visible = false;
            }
        }
    }
}