using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TouristAlojamiento : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int alojamientoId = Int16.Parse(Request.QueryString["alojamientoId"]);

            EspacioEntites context = new EspacioEntites();

            var alojamientoDB = context.ALOJAMIENTO.FirstOrDefault(alo => alo.ID == alojamientoId);

            // Obtén los valores desde tu fuente de datos o de donde corresponda.
            string capacidad = alojamientoDB.CANT_MAX_PERSONAS == 1 ?
                        alojamientoDB.CANT_MAX_PERSONAS + " persona" :
                        alojamientoDB.CANT_MAX_PERSONAS + " personas";
            int dormitorios = alojamientoDB.DORMITORIOS.Value;
            int banios = alojamientoDB.BANIOS.Value;
            string servicios = "WiFi, TV, Cocina, Estacionamiento";
            int precioNoche = alojamientoDB.VALOR_NOCHE.Value;



            var reseñas = context.RESEÑA_ALOJAMIENTO.Where(res => res.ID_ALOJAMIENTO == alojamientoDB.ID)
                .Select(res => new
                {
                    res.DESCRIPCION,
                    FECHA = res.FECHA.Value.ToString(),
                    res.PUNTUACION,
                    res.USUARIO.NOMBRE,
                    res.USUARIO.RUTA_IMAGEN
                })
                .ToList();
            RepeaterResenas.DataSource = reseñas;
            RepeaterResenas.DataBind();

            // Asigna los valores a los controles de servidor Label.
            lblCapacidad.Text = capacidad;
            lblDormitorios.Text = dormitorios.ToString();
            lblBanios.Text = banios.ToString();
            lblServicios.Text = servicios;
            lblPrecioNoche.Text = precioNoche.ToString("C"); // Formatea el precio como moneda.

            // Opcional: Puedes asignar el valor del enlace del botón de cotización aquí también.
            btnCotizar.PostBackUrl = "./TouristCotizador.aspx?alojamientoId=" + alojamientoId;
        }

    }

    protected void btnAddResena_Click(object sender, EventArgs e)
    {

        var userSession = Session["UsuarioLogueado"];
        if (userSession == null) { Response.Redirect("~/Default.aspx"); }
        using (EspacioEntites context = new EspacioEntites())
        {

            string descripcion = txtResena.Text;
            var loggedUser = Session["UsuarioLogueado"] as USUARIO;
            int puntuacion = int.Parse(ddlPuntuacion.SelectedValue);
            int alojamientoId = Int16.Parse(Request.QueryString["alojamientoId"]);
            RESEÑA_ALOJAMIENTO newResena = new RESEÑA_ALOJAMIENTO
            {
                DESCRIPCION = descripcion,
                FECHA = DateTime.Now,
                ID_USUARIO = loggedUser.ID,
                ID_ALOJAMIENTO = alojamientoId,
                PUNTUACION = puntuacion
            };

            context.RESEÑA_ALOJAMIENTO.Add(newResena);
            context.SaveChanges();

            var reseñas = context.RESEÑA_ALOJAMIENTO.Where(res => res.ID_ALOJAMIENTO == alojamientoId)
                .Select(res => new
                {
                    res.DESCRIPCION,
                    FECHA = res.FECHA.Value.ToString(),
                    res.PUNTUACION,
                    res.USUARIO.NOMBRE,
                    res.USUARIO.RUTA_IMAGEN
                })
                .ToList();
            RepeaterResenas.DataSource = reseñas;
            RepeaterResenas.DataBind();

            txtResena.Text = "";
        }
    }
}