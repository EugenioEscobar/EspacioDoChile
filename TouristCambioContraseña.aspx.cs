using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TouristCambioContraseña : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ChangePasswordButton_Click(object sender, EventArgs e)
    {
        var loggedUser = Session["UsuarioLogueado"] as USUARIO;
        EspacioEntites context = new EspacioEntites();
        var userDB = context.USUARIO.FirstOrDefault(user => user.ID == loggedUser.ID);

        var contraseniaActual = currentPassword.Text;
        var nuevaContrasenia = newPassword.Text;
        var confirmacionContrasenia = confirmNewPassword.Text;
        var correcto = true;
        
        var contraseniaActualEncriptada = Encriptador(contraseniaActual);
        var contraseniaEncriptada = Encriptador(nuevaContrasenia);

        mensajeDiv.Attributes.CssStyle.Clear();
        mensajeDiv.Attributes.CssStyle.Add("display","none");
        mensajeDiv.InnerText = "";

        if (contraseniaActual.Length==0 || nuevaContrasenia.Length==0 || confirmacionContrasenia.Length ==0)
        {
            correcto = false;
            mensajeDiv.InnerText = "Todos los campos son obligatorios.";
            mensajeDiv.Attributes.CssStyle.Clear();
            mensajeDiv.Attributes.CssStyle.Add("display", "block");
        }

        if (!nuevaContrasenia.Equals(confirmacionContrasenia))
        {
            correcto = false;
            mensajeDiv.InnerHtml = "La nueva contraseña y la confirmación no coinciden.";
            mensajeDiv.Attributes.CssStyle.Clear();
            mensajeDiv.Attributes.CssStyle.Add("display", "block");
        }

        if (!userDB.PASSWORD.Equals(contraseniaActualEncriptada))
        {
            correcto = false;
            mensajeDiv.InnerHtml = "Contraseña Incorrecta.";
            mensajeDiv.Attributes.CssStyle.Clear();
            mensajeDiv.Attributes.CssStyle.Add("display", "block");
        }

        if (correcto)
        {
            userDB.PASSWORD = contraseniaEncriptada;
            context.SaveChanges();
            mensajeDiv.InnerText = "Contraseña modificada.";
            mensajeDiv.Attributes.CssStyle.Clear();
            mensajeDiv.Attributes.CssStyle.Add("display", "block");
        }
    }
    private string Encriptador(string contrasena)
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
}