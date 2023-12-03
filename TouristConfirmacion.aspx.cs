using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TouristConfirmacion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            RESERVA reserva = Session["NuevaReserva"] as RESERVA;
            using (EspacioEntites context = new EspacioEntites())
            {
                var alojamiento = context.ALOJAMIENTO.FirstOrDefault(alo => alo.ID == reserva.ID_ALOJAMIENTO);
                if (reserva != null)
                {
                    nombreAlojamiento.InnerHtml = reserva.ToString();
                    fechaLlegada.InnerHtml = reserva.FECHA_INICIO.ToString();
                    fechaSalida.InnerHtml = reserva.FECHA_TERMINO.ToString();
                    totalCLP.InnerHtml = reserva.TOTAL.ToString();
                    totalUSD.InnerHtml = Math.Round((reserva.TOTAL.Value / 859.09),2).ToString();
                }
            }
        }
    }
}