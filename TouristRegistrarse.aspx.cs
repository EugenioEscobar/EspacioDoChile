using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TouristRegistrarse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegistrar_Click(object sender, EventArgs e)
    {
        try
        {
            string rut = txtIdentificador.Text;
            if (!ValidarFormatoRUT(rut))
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "El RUT ingresado es inválido. Por favor, corrige el formato.";
                return;
            }
            if (!ValidarRUT(rut))
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "El digito verificador del RUT ingresado es inválido.";
                return; // No continúa con el registro
            }

            using (EspacioEntites context = new EspacioEntites())
            {
                var userDB = context.USUARIO.FirstOrDefault(user => user.IDENTIFICADOR == txtIdentificador.Text);
                if (userDB != null)
                {
                    lblMensaje.ForeColor = System.Drawing.Color.Red;
                    lblMensaje.Text = "Este rut ya está registrado";
                }
                userDB = context.USUARIO.FirstOrDefault(user => user.EMAIL == txtEmail.Text);
                if (userDB != null)
                {
                    lblMensaje.ForeColor = System.Drawing.Color.Red;
                    lblMensaje.Text = "Este Email ya está registrado";
                }
                else
                {
                    USUARIO nuevoUsuario = new USUARIO
                    {
                        EMAIL = txtEmail.Text,
                        PASSWORD = Encriptado(txtPassword.Text), // Considera usar hash para la contraseña
                        NOMBRE = txtNombre.Text,
                        SEG_APELLIDO = txtSegApellido.Text,
                        APELLIDO = txtApellido.Text,
                        SEG_NOMBRE = txtSegNombre.Text,
                        IDENTIFICADOR = txtIdentificador.Text,
                        TELEFONO = txtTelefono.Text.Equals("") ? 0 : int.Parse(txtTelefono.Text),
                        DIRECCION = txtDireccion.Text,
                        ID_TIPO_USUARIO = 1
                    };

                    context.USUARIO.Add(nuevoUsuario);
                    context.SaveChanges();
                    LimpiarCampos();
                    lblMensaje.ForeColor = System.Drawing.Color.Green;
                    lblMensaje.Text = "Usuario Generado correctamente";

                }
            }
            // Opcional: Mostrar mensaje de éxito o redirigir a otra página
        }
        catch (Exception ex)
        {
            lblMensaje.ForeColor = System.Drawing.Color.Red;
            lblMensaje.Text = ex.Message;
        }
    }
    private void LimpiarCampos()
    {
        // Limpiar campos de texto
        txtEmail.Text = string.Empty;
        txtPassword.Text = string.Empty;
        txtNombre.Text = string.Empty;
        txtSegApellido.Text = string.Empty;
        txtApellido.Text = string.Empty;
        txtSegNombre.Text = string.Empty;
        txtIdentificador.Text = string.Empty;
        txtTelefono.Text = string.Empty;
        txtDireccion.Text = string.Empty;

        // Restablecer cualquier otro control si es necesario, por ejemplo:
        // ddlComuna.SelectedIndex = -1; // Si estás usando un DropDownList para la comuna
    }
    protected bool ValidarFormatoRUT(string rut)
    {// Expresión regular para validar el formato del RUT
        var regex = new Regex(@"^\d{7,8}-[0-9Kk]$");

        // Verificar el formato del RUT
        if (!regex.IsMatch(rut))
        {
            return false; // Formato incorrecto
        }
        return true;
    }

    protected bool ValidarRUT(string rut)
    {
        // Separar el cuerpo del dígito verificador
        var partes = rut.Split('-');
        var cuerpo = partes[0];
        var dv = partes[1].ToUpper(); // Convertir a mayúscula para estandarizar

        // Calcular el dígito verificador
        int suma = 0;
        int multiplicador = 2;

        for (int i = cuerpo.Length - 1; i >= 0; i--)
        {
            suma += multiplicador * int.Parse(cuerpo[i].ToString());
            multiplicador = (multiplicador == 7) ? 2 : multiplicador + 1;
        }

        var dvCalculado = (11 - (suma % 11)).ToString();
        if (dvCalculado == "11")
        {
            dvCalculado = "0";
        }
        else if (dvCalculado == "10")
        {
            dvCalculado = "K";
        }

        // Comparar el DV calculado con el DV ingresado
        return dv == dvCalculado;
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

}