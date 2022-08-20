using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using CapEntidad;
using CapReglas;

namespace ArqCapasHospital
{
    public partial class form1 : System.Web.UI.Page
    {
        CRCitas ONCitas = new CRCitas();
        CECitas OENCitas = new CECitas();

        CRMedico ONMedico = new CRMedico();
        CEMedico OENMedico = new CEMedico();

        CRPaciente ONPaciente = new CRPaciente();
        CEPaciente OENPaciente = new CEPaciente();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_consul_cita_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            OENCitas.Cod_cita = Convert.ToString(txt_codcita);
            ds = ONCitas.consultar_cita(OENCitas);
            if (ds.Tables[0].Rows.Count == 0)
            {
                lblmensaje.Text = "No hay cita";
            }
            else
            {
                lblmensaje.Text = ds.Tables[0].Rows[0]["cod_cita"].ToString();

                txt_fecha.Text = ds.Tables[0].Rows[0]["fecha"].ToString();
                txt_hora.Text = ds.Tables[0].Rows[0]["hora"].ToString();
                txt_idpacien.Text = ds.Tables[0].Rows[0]["id_paciente"].ToString();
                txt_idmed.Text = ds.Tables[0].Rows[0]["id_medico"].ToString();
                txt_valor.Text = ds.Tables[0].Rows[0]["valor"].ToString();
                txt_diag.Text = ds.Tables[0].Rows[0]["diagnostico"].ToString();
                txt_nombacomp.Text = ds.Tables[0].Rows[0]["nom_acompanante"].ToString();
            }
        }

        protected void btn_consul_pacie_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            OENPaciente.Id_paciente = Convert.ToString(txt_idpacien);

            ds = ONPaciente.consultar_paciente(OENPaciente);
            if (ds.Tables[0].Rows.Count == 0)
            {
                lbl_mensa_pac.Text = "Paciente no existente";
            }
            else
            {
                txt_idpacien.Text = ds.Tables[0].Rows[0]["id_paciente"].ToString();
                txt_tip_doc.Text = ds.Tables[0].Rows[0]["tip_doc"].ToString();
                txt_nomb_pac.Text = ds.Tables[0].Rows[0]["nom_paciente"].ToString();
                txt_dir_pac.Text = ds.Tables[0].Rows[0]["dir_paciente"].ToString();
                txt_tel_pac.Text = ds.Tables[0].Rows[0]["tel_paciente"].ToString();
                txt_cel_pac.Text = ds.Tables[0].Rows[0]["cel_paciente"].ToString();
            }

        }

        protected void btn_consul_med_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            OENMedico.Id_medico = txt_idmed.Text;

            ds = ONMedico.consultar_medico(OENMedico);
            if (ds.Tables[0].Rows.Count == 0)
            {
                lbl_mensa_med.Text = "Médico no existente";
            }
            else
            {
                txt_idmed.Text = ds.Tables[0].Rows[0]["id_medico"].ToString();
                txt_nomb_med.Text = ds.Tables[0].Rows[0]["nom_medico"].ToString();
                txt_especial.Text = ds.Tables[0].Rows[0]["especialidad"].ToString();
                txt_tel_med.Text = ds.Tables[0].Rows[0]["tel_medico"].ToString();
            }
        }

        protected void btn_eliminar_Click(object sender, EventArgs e)
        {
            OENCitas.Cod_cita = Convert.ToString(txt_codcita.Text);
            if (ONCitas.anular_cita(OENCitas))
            {
                lblmensaje.Text = "Cita anulada correctamente";
            }
            else
            {
                lblmensaje.Text = "No se ha podido eliminar la cita";
            }
        }

        protected void btn_actu_cit_Click(object sender, EventArgs e)
        {
            OENCitas.Cod_cita = txt_codcita.Text;
            OENCitas.Fecha = Convert.ToDateTime(txt_fecha.Text);
            OENCitas.Hora = Convert.ToDateTime( txt_hora.Text);
            OENCitas.Id_paciente = txt_idpacien.Text;
            OENCitas.Id_medico = txt_idmed.Text;
            OENCitas.Valor = Convert.ToInt32(txt_valor);
            OENCitas.Diagnostico = txt_diag.Text;
            OENCitas.Nomb_acompanante = txt_nombacomp.Text;
            OENCitas.Activo = Convert.ToByte(txt_activo_pac);
            if (ONCitas.actualizar_cita(OENCitas))
            {
                lblmensaje.Text = "Cita guardada";
            }
            else
            {
                lblmensaje.Text = "Error al guardar la cita";
            }
        }

        protected void btn_consul_med_Click1(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            OENMedico.Id_medico = txt_idmed.Text;

            ds = ONMedico.consultar_medico(OENMedico);
            if (ds.Tables[0].Rows.Count == 0)
            {
                lbl_mensa_med.Text = "Médico no existente";
            }
            else
            {
                txt_idmed.Text = ds.Tables[0].Rows[0]["id_medico"].ToString();
                txt_nomb_med.Text = ds.Tables[0].Rows[0]["nom_medico"].ToString();
                txt_especial.Text = ds.Tables[0].Rows[0]["especialidad"].ToString();
                txt_tel_med.Text = ds.Tables[0].Rows[0]["tel_medico"].ToString();
            }
        }

        protected void btn_actu_med_Click(object sender, EventArgs e)
        {
            OENMedico.Id_medico = txt_idmed.Text;
            OENMedico.Nom_medico = txt_nomb_med.Text;
            OENMedico.Especialidad = txt_especial.Text;
            OENMedico.Tel_medico = txt_tel_med.Text;
            if (ONMedico.actualizar_medico(OENMedico))
            {
                lbl_mensa_med.Text = "Médico guardado";
            }
            else
            {
                lbl_mensa_med.Text = "Error al guardar el médico";
            }
        }

        protected void btn_elim_med_Click(object sender, EventArgs e)
        {
            OENMedico.Id_medico = txt_idmed.Text;
            if (ONMedico.anular_medico(OENMedico))
            {
                lbl_mensa_med.Text = "Médico anulado correctamente";
            }
            else
            {
                lbl_mensa_med.Text = "No se ha podido eliminar el médico";
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            OENPaciente.Id_paciente = txt_id_pac.Text;
            OENPaciente.Tip_doc = txt_tip_doc.Text;
            OENPaciente.Nom_paciente = txt_nomb_pac.Text;
            OENPaciente.Dir_paciente = txt_dir_pac.Text;
            OENPaciente.Tel_paciente = txt_tel_pac.Text;
            OENPaciente.Cel_paciente = txt_cel_pac.Text;
            if (ONPaciente.actualizar_paciente(OENPaciente))
            {
                lbl_mensa_pac.Text = "Paciente guardado";
            }
            else
            {
                lbl_mensa_pac.Text = "Error al guardar el paciente";
            }
        }

        protected void btn_elim_pac_Click(object sender, EventArgs e)
        {
            OENPaciente.Id_paciente = txt_idmed.Text;
            if (ONPaciente.anular_paciente(OENPaciente))
            {
                lbl_mensa_pac.Text = "Paciente anulado correctamente";
            }
            else
            {
                lbl_mensa_pac.Text = "No se ha podido eliminar el paciente";
            }
        }
    }


}