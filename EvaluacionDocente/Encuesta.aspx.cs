using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Text;
using System.Data;
namespace EvaluacionDocente
{
    public partial class Encuesta : System.Web.UI.Page
    {
        Conexion conex = new Conexion();
        string strSQL;
        string[] Pregs = new string[21];
        DataTable dt, dt2;
        int[] claves;
        bool r;
        int cont = 0, col = 2;

        private void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargaCombos();
                fila.Visible = false;
                FilaObserva.Visible = false;
                TextoObserva.Visible = false;
            }
            Preguntas();
        }

        private void Preguntas()
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
            Pregs[16] = "EMPLEA RECUSROS DIDECTICOS DIVERSOS PIZARRON, LAMINAS,PROYECTOR, VIDEOS EDUCATIVOS, MATERIAL IMPRESO, Etd.) Y TECNOLOGIAS DE LA INFORMACION Y COMUNICACION PARA FACILITAR EL APRENDIZAJE.";
            Pregs[17] = "EVALUA EL APRENDIZAJE DE ACUERDO A LOS PROPOSITOS DEL CURSO";
            Pregs[18] = "REVISA LAS TAREAS Y LAS DEVUELVE CON OBSERVACIONES.";
            Pregs[19] = "UTILIZA DIVERSAS FORMAS DE EVALUACION DE ACUERDO CON LOS DISTINTOS TIPOS DE APRENDIZAJE (CONCEPTUALES, PROCEDIMENTALESY ACTITUDINALES).";
            Pregs[20] = "REALIZA EL TRABAJO CON SENTIDO DE RESPONSABILIDAD Y COMPROMISO.";
        }

        private void CargaCombos()
        {
            strSQL = "select * from catcarrera";
            dt = conex.ObtenerDatos(strSQL);
            ddlCarrera.Items.Insert(0, "--SELECCIONE--");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ddlCarrera.Items.Add(new ListItem(dt.Rows[i]["nombre"].ToString(), dt.Rows[i]["CveCarrera"].ToString()));
            }
        }

        protected void ddlCuatri_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlCarrera.SelectedIndex != 0 && ddlCuatri.SelectedIndex != 0)
            {
                if (GV1.Rows.Count > 1)
                {
                    for (int i = 2; i < GV1.Columns.Count; i++)
                    {
                        GV1.Columns[i].Visible = false;
                    }
                }
                strSQL = "select id, Nombre from catMateria where CveCarrera='" + ddlCarrera.SelectedValue.ToString() + "' and CveCuatri='" + ddlCuatri.SelectedValue.ToString() + "'";
                dt2 = conex.ObtenerDatos(strSQL);
                claves = new int[dt2.Rows.Count];
                for (int i = 0; i < dt2.Rows.Count; i++)
                {
                    claves[i] = int.Parse(dt2.Rows[i]["id"].ToString());
                }
                Session["columnas"] = dt2.Rows.Count;
                Session["claves"] = claves;
                DataTable dt = new DataTable();
                DataRow row;

                for (int i = 0; i < 21; i++)
                {
                    row = dt.NewRow();
                    dt.Rows.Add(row);
                }
                GV1.DataSource = dt;
                GV1.DataBind();
                for (int j = 1; j < 21; j++)
                {
                    GV1.Rows[j].Cells[0].Text = j.ToString();
                    GV1.Rows[j].Cells[1].Text = Pregs[j];
                }
                GV1.Columns[0].Visible = true;
                GV1.Columns[1].Visible = true;
                for (int k = 2; cont < dt2.Rows.Count; k++)
                {
                    GV1.HeaderRow.Cells[k].Text = dt2.Rows[cont]["nombre"].ToString();
                    cont++;
                    if (!GV1.HeaderRow.Cells[k].Text.Contains("Materia"))
                    {
                        GV1.Columns[k].Visible = true;
                    }
                    else
                    {
                        GV1.Columns[k].Visible = false;
                    }
                }
            }
            GV1.Rows[0].Visible = false;
            FilaObserva.Visible = true;
            TextoObserva.Visible = true;
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            r = Valida();
            if (r)
            {
                int cl = 0;
                int total = 0;
                int colum = (int)Session["columnas"];
                int[] claves1 = (int[])Session["claves"];
                col = 1;
                for (int j = 1; j <= colum; j++)
                {
                    strSQL = "insert into evaluacion values(";
                    for (int i = 1; i < 21; i++)
                    {

                        TextBox t1 = (GV1.Rows[i].Cells[j].FindControl("txt" + col) as TextBox);
                        strSQL += int.Parse(t1.Text) + ",";
                        total += int.Parse(t1.Text);
                    }
                    col++;
                    strSQL += total + ",'" + ddlGpo.SelectedItem.ToString() + "','" + Convert.ToDateTime(txtFecha.Text) + "','" + txtObserva.Text + "'," + claves1[cl] + ")";
                    cl++;
                    try
                    {
                        conex.GuardarDatos(strSQL);
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script type=text/javascript>alert('" + ex.Message + "')</script>");
                        return;
                    }
                    strSQL = "";
                    total = 0;
                }
            }
            Response.Write("<script type=text/javascript>alert('¡Gracias por responder la encuesta!')</script>");
            GV1.Dispose();
            Response.Redirect("~/Inicio.aspx");
        }

        private bool Valida()
        {
            foreach (Control ctl in this.Controls)
            {
                if (ctl is TextBox)
                {
                    TextBox t = (TextBox)ctl;
                    if (t.Text == "")
                    {
                        Response.Write("<script type=text/javascript>alert('Asegurese de que TODOS los campos de la encuesta esten llenos')</script>");
                        return false;
                    }
                }
            }
            if (ddlGpo.SelectedIndex == 0)
            {
                Response.Write("<script type=text/javascript>alert('Seleccione un Grupo')</script>");
                return false;
            }
            return true;
        }

        protected void ddlCarrera_SelectedIndexChanged(object sender, EventArgs e)
        {
            int cont = 1;
            if (ddlCarrera.SelectedIndex != 0)
            {
                for (int i = 0; i < GV1.Columns.Count; i++)
                {
                    GV1.Columns[i].Visible = false;
                    FilaObserva.Visible = false;
                    TextoObserva.Visible = false;
                }
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

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Inicio.aspx");
        }
    }
}
