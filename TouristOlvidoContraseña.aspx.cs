using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TouristOlvidoContraseña : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRecuperar_Click(object sender, EventArgs e)
    {

        // Crear un objeto MailMessage
        MailMessage mail = new MailMessage();
        mail.IsBodyHtml = true;
        mail.From = new MailAddress("info@espaciodochile.cl", "Nomina Actualización Personal");
        mail.Subject = "Nomina de personal Actualizado";
        mail.Body = "Este es un correo automático. Por favor no responder.";

        // Limpiar destinatarios (To, CC, BCC)
        mail.To.Clear();
        mail.CC.Clear();
        mail.Bcc.Clear();

        // Agregar destinatarios
        mail.To.Add("e.escobar@infycom.cl");

        // Crear un objeto SmtpClient
        SmtpClient smtp = new SmtpClient();
        smtp.UseDefaultCredentials = false;
        smtp.Host = "mail.espaciodochile.cl";
        smtp.Port = 465;
        smtp.Credentials = new NetworkCredential("info@espaciodochile.cl", "espacio.2023");
        smtp.EnableSsl = true;

        // Enviar el correo
        try
        {
            smtp.Send(mail);
            lblMensaje.Text = "Se ha enviado un correo electrónico de recuperación de contraseña.";
            lblMensaje.Visible = true;
        }
        catch (Exception ex)
        {
            lblMensaje.Text = ex.Message;
            lblMensaje.Visible = true;
        }
    }
}