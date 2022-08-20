<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form1.aspx.cs" Inherits="ArqCapasHospital.form1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Codigo cita"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_codcita" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Fecha"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_fecha" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Hora"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_hora" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="ID paciente"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_idpacien" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Valor"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_valor" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Diagnostico"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_diag" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Nombre acompañante"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_nombacomp" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btn_consul_cita" runat="server" OnClick="btn_consul_cita_Click" Text="Consultar cita" Width="164px" />
                </td>
                <td>
                    <asp:Button ID="btn_actu_cit" runat="server" OnClick="btn_actu_cit_Click" Text="Actualizar cita" />
                </td>
                <td>
                    <asp:Button ID="btn_eliminar" runat="server" OnClick="btn_eliminar_Click" Text="Eliminar Cita" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label13" runat="server" Text="ID médico"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_idmed" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="Nombre médico"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_nomb_med" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label15" runat="server" Text="Especialidad"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_especial" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label16" runat="server" Text="Telefono médico"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_tel_med" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label17" runat="server" Text="Activo"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_med_activo" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lbl_mensa_med" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btn_consul_med" runat="server" OnClick="btn_consul_med_Click1" Text="Consultar médico" />
                </td>
                <td>
                    <asp:Button ID="btn_actu_med" runat="server" OnClick="btn_actu_med_Click" Text="Actualizar médico" />
                </td>
                <td>
                    <asp:Button ID="btn_elim_med" runat="server" OnClick="btn_elim_med_Click" Text="Eliminar médico" />
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label18" runat="server" Text="ID paciente"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_id_pac" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label19" runat="server" Text="Tipo de documento"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_tip_doc" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label20" runat="server" Text="Nombre de paciente"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_nomb_pac" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label21" runat="server" Text="Dirección"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_dir_pac" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label22" runat="server" Text="Telefono"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_tel_pac" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label23" runat="server" Text="Celular"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_cel_pac" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label24" runat="server" Text="Activo"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_activo_pac" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lbl_mensa_pac" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btn_consul_pacie" runat="server" OnClick="btn_consul_pacie_Click" Text="Consultar paciente" />
                </td>
                <td>
                    <asp:Button ID="btn_actu_paci" runat="server" OnClick="Button5_Click" Text="Actualizar paciente" />
                </td>
                <td>
                    <asp:Button ID="btn_elim_pac" runat="server" OnClick="btn_elim_pac_Click" Text="Eliminar paciente" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
