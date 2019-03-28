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
    public partial class ResAdmonCuat1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                strSQL = "select * from catcarrera";
                dt = conex.ObtenerDatos(strSQL);
                ddlCarrera.Items.Insert(0, "--SELECCIONE--");
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    ddlCarrera.Items.Add(new ListItem(dt.Rows[i]["nombre"].ToString(), dt.Rows[i]["CveCarrera"].ToString()));
                }
            }
        }

        Conexion conex = new Conexion();
        string strSQL;
        DataTable dt;
        string[] Pregs = new string[21];

        protected void ddlCarrera_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlCarrera.SelectedIndex != 0)
            {
                int cont = 1;
                ddlCuatri.Items.Clear();
                strSQL = "select ct.CveCuatri from catCarrera c, catCuatrimestre ct where c.CveCarrera=ct.CveCarrera and c.cvecarrera='" + ddlCarrera.SelectedValue.ToString() + "'";
                dt = conex.ObtenerDatos(strSQL);
                ddlCuatri.Items.Insert(0, "--SELECCIONE--");
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    ddlCuatri.Items.Add(new ListItem(cont.ToString(), dt.Rows[i]["cvecuatri"].ToString()));
                    cont++;
                }
            }
        }
        protected void ddlCuatri_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlCuatri.SelectedIndex != 0)
            {
                GridPuntaje.DataSource = null;
                ddlMateria.Items.Clear();
                strSQL = "select id,nombre from catmateria where cvecarrera='" + ddlCarrera.SelectedValue.ToString() + "' and cvecuatri=" + ddlCuatri.SelectedValue.ToString() + "";
                dt = conex.ObtenerDatos(strSQL);
                ddlMateria.Items.Insert(0, "--SELECCIONE--");
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    ddlMateria.Items.Add(new ListItem(dt.Rows[i]["nombre"].ToString(), dt.Rows[i]["id"].ToString()));
                }
            }

        }

        protected void ddlPreg_SelectedIndexChanged(object sender, EventArgs e)
        {
            GeneraGrafico(int.Parse(ddlPreg.SelectedValue), ddlMateria.SelectedValue);
        }
        private void GeneraGrafico(int preg, string materia)
        {
            Pregs[0] = "";
            Pregs[1] = "PRESENTA EL PROGRAMA DE LA ASIGNATURA AL INICIO DEL CURSO ESPECIFICANDO: OBJETIVOS, CONTENIDOS Y CALENDARIO DE ACTIVIDADES.";
            Pregs[2] = "DA A CONOCER AL INICIO DEL CURSO LOS CRITERIOS Y PROCEDIMIENTOS DE EVALUACION QUE UTILIZARIA PARAVALORAR LOS CONOCIMIENTOS TEORICOS, LAS HABILIDADESPRACTICAS Y ACTITUDES.";
            Pregs[3] = "MOTIVA Y DEMUESTRA ENTUSIASMO A LOS ALUMNOS PARAAPRENDER NUEVOS CONOCIMIENTOS POR SI MISMOS.";
            Pregs[4] = "GENERA UN CLIMA DE CORDIALIDAD Y RESPETO EN EL GRUPO.";
            Pregs[5] = "ESTABLECE Y MANTIENE DE FORMA CONSISTENTE LAS REGLASDE DISCIPLINA ESTABLECIDAS AL INICIO DEL CURSO.";
            Pregs[6] = "MUESTRA DOMINIO DE LOS CONOCIMIENTOS DE LA MATERIAQUE IMPARTE. UTILIZANDO EJEMPLOS CERCANOS A LAREALIDAD (VIDA DIARIA) PARA FACILITAR LA COMPRENSIONDE CONCEPTOS, PRINCIPIOS O PROCEDIMIENTOS.";
            Pregs[7] = "PROMUEVE LA REALIZACION DE TRABAJOS Y TAREAS PARAANALIZAR E INTEGRAR DIVERSOS CONOCIMIENTOS.";
            Pregs[8] = "ESTRUCTURA DE MANERA CLARA Y COHERENTE LA PRESENTACIONDE LAS IDEAS EN EL DESARROLLO DE LAS CLASES.";
            Pregs[9] = "ESTABLECE RELACIONES DE UN TEMA CON OTRO.";
            Pregs[10] = "LOGRA QUE LOS ESTUDIANTES DISTINGAN LOS TEMAS CENTRALESDE LA ASIGNATURA.";
            Pregs[11] = "ORGANIZA FORMAS COOPERATIVAS, AL DISTRIBUIR RESPONSABILIDADESY TAREAS A LOS MIEMBROS DEL EQUIPO.";
            Pregs[12] = "PROPICIA EL DIALOGO Y LA PARTICIPACION DE TODOS LOS INTEGRANTES DEL GRUPO.";
            Pregs[13] = "RESUELVE CON PRECISIÓN LAS DUDAS Y PREGUNTAS DE LOSESTUDIANTES.";
            Pregs[14] = "FORMULA PREGUNTAS QUE PROMUEVEN EL PENSAMIENTO CRITICO.";
            Pregs[15] = "VERIFICA DURANTE LA CLASE, SI EL GRUPO ESTABA ENTENDIENDOSUS EXPLICACIONES.";
            Pregs[16] = "EMPLEA RECUSROS DIDECTICOS DIVERSOS PIZARRON, LAMINAS,PROYECTOR, VIDEOS EDUCATIVOS, MATERIAL IMPRESO, ETC.) Y TECNOLOGIAS DE LA INFORMACION Y COMUNICACION PARA FACILITAR EL APRENDIZAJE.";
            Pregs[17] = "EVALUA EL APRENDIZAJE DE ACUERDO A LOS PROPOSITOS DEL CURSO";
            Pregs[18] = "REVISA LAS TAREAS Y LAS DEVUELVE CON OBSERVACIONES.";
            Pregs[19] = "UTILIZA DIVERSAS FORMAS DE EVALUACION DE ACUERDO CON LOSDISTINTOS TIPOS DE APRENDIZAJE (CONCEPTUALES, PROCEDIMENTALESY ACTITUDINALES).";
            Pregs[20] = "REALIZA EL TRABAJO CON SENTIDO DE RESPONSABILIDAD Y COMPROMISO.";
            Chart1.Series.Clear();
            GridPuntaje.DataSource = null;
            strSQL = "select IDMat, " +
                     " (select count(cal" + preg + ") from Evaluacion where cal" + preg + " =5 and idmat=" + materia + ") as '5 Puntos'," +
                     " (select count(cal" + preg + ") from Evaluacion where cal" + preg + " =4 and idmat=" + materia + ") as '4 Puntos'," +
                     " (select count(cal" + preg + ") from Evaluacion where cal" + preg + " =3 and idmat=" + materia + ") as '3 Puntos'," +
                     " (select count(cal" + preg + ") from Evaluacion where cal" + preg + " =2 and idmat=" + materia + ") as '2 Puntos'," +
                     " (select count(cal" + preg + ") from Evaluacion where cal" + preg + " =1 and idmat=" + materia + ") as '1 Punto'" +
                     " from Evaluacion where idmat=" + materia + " group by IDMat";
            dt = conex.ObtenerDatos(strSQL);
            this.Chart1.Titles.Add("Pregunta: " + Pregs[preg] + "");
            Series series = this.Chart1.Series.Add("Pregunta " + Pregs[preg] + "");
            if (dt.Rows.Count >= 1)
            {
                series.Points.Add(int.Parse(dt.Rows[0][1].ToString()));
                series.Points.Add(int.Parse(dt.Rows[0][2].ToString()));
                series.Points.Add(int.Parse(dt.Rows[0][3].ToString()));
                series.Points.Add(int.Parse(dt.Rows[0][4].ToString()));
                series.Points.Add(int.Parse(dt.Rows[0][5].ToString()));
                Chart1.DataSource = dt;
                GridPuntaje.DataSource = dt;
                GridPuntaje.DataBind();
                //GridPuntaje.Columns[0].Visible = false;
            }
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Inicio.aspx");
        }

        protected void bntBorrar_Click(object sender, EventArgs e)
        {
            if (System.Windows.Forms.MessageBox.Show("Esta a punto de eliminar todos los datos de encuesta de la base de datos" + Environment.NewLine + "¿Desea continuar?", "Encuestas", System.Windows.Forms.MessageBoxButtons.YesNo, System.Windows.Forms.MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                strSQL = "delete from evaluacion";
                conex.GuardarDatos(strSQL);
                System.Windows.Forms.MessageBox.Show("La encuesta ha salido eliminada correctamente");
            }
        }
    }
}