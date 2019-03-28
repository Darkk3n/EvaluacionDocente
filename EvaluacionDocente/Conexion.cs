using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;
namespace EvaluacionDocente
{
    public class Conexion
    {
        public bool GuardarDatos(string strSQL)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["EvalDoc"].ConnectionString);
            DataTable dt= new DataTable();
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            SqlDataAdapter adap = new SqlDataAdapter(cmd);
            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                MessageBox.Show("Error al guardar la información: " + ex.Message, "Error de procesamiento de datos", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
            finally
            {
                cmd.Dispose();
                conn.Dispose();
                conn.Close();
            }
            return true;
        }
        public DataTable ObtenerDatos(string strSQL)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["EvalDoc"].ConnectionString);
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            SqlDataAdapter adap = new SqlDataAdapter(cmd);
            DataTable dt= new DataTable();

            try
            {
                conn.Open();
                adap.Fill(dt);
            }
            catch (SqlException ex)
            {
                MessageBox.Show("No fue posible obtener los datos: " + Environment.NewLine + ex.Message, "Error de procesamiento de datos", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return null;
            }
            finally
            {
                conn.Close();
                cmd.Dispose();
                adap.Dispose();
                conn.Dispose();
            }
            return dt;
        }
    }
}