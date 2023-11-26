using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TouristPagoExitoso : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RESERVA nuevaReserva = Session["NuevaReserva"] as RESERVA;
        fechaLlegada.InnerText = nuevaReserva.FECHA_INICIO.ToString();
        fechaSalida.InnerText = nuevaReserva.FECHA_TERMINO.ToString();
    }
}