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
        DateTime ahora = DateTime.Now;
        RESERVA nuevaReserva = Session["NuevaReserva"] as RESERVA;
        nuevaReserva.CODIGO_RESERVA = int.Parse($"{ahora.ToString("ddMMyymmss")}");


        fechaLlegada.InnerText = nuevaReserva.FECHA_INICIO.ToString();
        fechaSalida.InnerText = nuevaReserva.FECHA_TERMINO.ToString();
        codReserva.InnerText = nuevaReserva.CODIGO_RESERVA.ToString();

        EspacioEntites context = new EspacioEntites();
        context.RESERVA.Add(nuevaReserva);
        context.SaveChanges();
    }
}