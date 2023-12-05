using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TouristCotizador : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            int alojamientoId = Int16.Parse(Request.QueryString["alojamientoId"]);

            EspacioEntites context = new EspacioEntites();

            var alojamientoDB = context.ALOJAMIENTO.FirstOrDefault(alo => alo.ID == alojamientoId);

            var userSession = Session["UsuarioLogueado"];
            if (userSession == null) { Response.Redirect("~/Default.aspx"); }
            var user = (USUARIO)userSession;

            txtNombre.Text = user.NOMBRE;
            txtEmail.Text = user.EMAIL;
            txtTelefono.Text = user.TELEFONO.ToString();

            // Obtén los valores ingresados por el usuario
            txtFechaLlegada.Text = DateTime.Today.ToString("yyyy-MM-dd");
            txtFechaSalida.Text = DateTime.Today.AddDays(7).ToString("yyyy-MM-dd");
            for (int i = 1; i <= alojamientoDB.CANT_MAX_PERSONAS; i++)
            {
                ddlCantidadHuespedes.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }

            resumenValorNoche.InnerText = alojamientoDB.VALOR_NOCHE.Value.ToString("c");
            hdnPrecioPorNoche.Value = alojamientoDB.VALOR_NOCHE.Value.ToString();
        }
    }

    protected void btnEnviar_Click(object sender, EventArgs e)
    {

        RESERVA newReserva = new RESERVA();
        newReserva.ID_ALOJAMIENTO = Int16.Parse(Request.QueryString["alojamientoId"]);
        newReserva.ID_USUARIO = ((USUARIO)Session["UsuarioLogueado"]).ID;
        newReserva.COMENTARIO = txtSolicitudesEspeciales.Text;
        newReserva.FECHA_INICIO = DateTime.Parse(txtFechaLlegada.Text).AddHours(15);
        newReserva.FECHA_TERMINO = DateTime.Parse(txtFechaSalida.Text).AddHours(12);
        newReserva.TOTAL = double.Parse(hdnTotalAPagar.Value);

        if (EstaDisponible(newReserva))
        {
            Session["NuevaReserva"] = newReserva;

            // Crear una nueva cookie
            HttpCookie miCookie = new HttpCookie("ValorArriendo");
            miCookie.Value = hdnTotalAPagar.Value;

            // Establecer la cookie en la respuesta
            Response.Cookies.Add(miCookie);

            Response.Redirect("TouristConfirmacion.aspx");
        }
        else
        {
            lblMensaje.Text = "Este Alojamiento está reservado en esta fechas";
        }
    }

    private bool EstaDisponible(RESERVA nuevareserva)
    {
        EspacioEntites context = new EspacioEntites();
        var reservasExistentes = context.RESERVA
                .Where(r => r.ID_ALOJAMIENTO == nuevareserva.ID_ALOJAMIENTO)
                .ToList();

        foreach (var reservas in reservasExistentes)
        {
            if ((reservas.FECHA_INICIO <= nuevareserva.FECHA_INICIO && reservas.FECHA_TERMINO > nuevareserva.FECHA_INICIO) ||
                (reservas.FECHA_INICIO >= nuevareserva.FECHA_INICIO && reservas.FECHA_INICIO < nuevareserva.FECHA_TERMINO) ||
                (reservas.FECHA_INICIO <= nuevareserva.FECHA_INICIO && reservas.FECHA_TERMINO >= nuevareserva.FECHA_TERMINO))
            {
                return false;
            }
        }

        return true;
    }
}