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
}