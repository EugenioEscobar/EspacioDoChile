using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    private EspacioEntites context = new EspacioEntites();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void IniciarSesionButton_Click(object sender, EventArgs e)
    {
        string usuario = UsuarioTextBox.Text;
        string contrasena = ContrasenaTextBox.Text;

        // Aquí debes agregar tu lógica de autenticación.
        // Por ejemplo, puedes verificar las credenciales en una base de datos.

        if (Autenticar(usuario, contrasena))
        {
            var userDB = context.USUARIO.FirstOrDefault(user=>user.EMAIL == usuario);
            Session["UsuarioLogueado"] = userDB;
            var destinationPage = context.TIPO_USUARIO.FirstOrDefault(tipo => tipo.ID == userDB.ID_TIPO_USUARIO).ACCESS_PAGE;
            // Autenticación exitosa, redirige a la página de destino.
            Response.Redirect(destinationPage);
        }
        else
        {
            MensajeLabel.Text = "Credenciales incorrectas. Inténtalo de nuevo.";
            //LinkPassword.Visible = true;
        }
    }

    private bool Autenticar(string usuario, string contrasena)
    {
        var usuarioDB = context.USUARIO.FirstOrDefault(user => user.EMAIL == usuario);
        if (usuarioDB == null)
            return false;
        if (usuarioDB.PASSWORD == Encriptado(contrasena))
            return true;
        return false;
    }

    private string Encriptado(string contrasena)
    {
        using (SHA256 sha256 = SHA256.Create())
        {
            byte[] contrasenaBytes = Encoding.UTF8.GetBytes(contrasena);
            byte[] hashBytes = sha256.ComputeHash(contrasenaBytes);

            StringBuilder stringBuilder = new StringBuilder();
            for (int i = 0; i < hashBytes.Length; i++)
            {
                stringBuilder.Append(hashBytes[i].ToString("x2")); // Convierte el byte en formato hexadecimal
            }
            return stringBuilder.ToString();
        }
    }

    protected void Registrarse_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/TouristRegistrarse.aspx");
    }
}