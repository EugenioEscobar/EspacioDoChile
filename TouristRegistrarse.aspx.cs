using System;
using System.Collections.Generic;
using System.Linq;
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
            USUARIO nuevoUsuario = new USUARIO
            {
                EMAIL = txtEmail.Text,
                PASSWORD = txtPassword.Text, // Considera usar hash para la contraseña
                NOMBRE = txtNombre.Text,
                SEG_APELLIDO = txtSegApellido.Text,
                APELLIDO = txtApellido.Text,
                SEG_NOMBRE = txtSegNombre.Text,
                IDENTIFICADOR = txtIdentificador.Text,
                TELEFONO = int.Parse(txtTelefono.Text),
                DIRECCION = txtDireccion.Text,
                ID_TIPO_USUARIO = 1
            };

            using (EspacioEntites context = new EspacioEntites())
            {
                context.USUARIO.Add(nuevoUsuario);
                context.SaveChanges();
                LimpiarCampos();
                lblMensaje.Text = "Usuario Generado correctamente";
            }

            // Opcional: Mostrar mensaje de éxito o redirigir a otra página
        }
        catch (Exception ex)
        {
            // Manejar la excepción adecuadamente
            // Opcional: Mostrar mensaje de error
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
}