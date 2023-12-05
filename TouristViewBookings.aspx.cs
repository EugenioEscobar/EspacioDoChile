using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TouristViewBookings : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            USUARIO user = Session["UsuarioLogueado"] as USUARIO;
            EspacioEntites context = new EspacioEntites();
            var reservas = context.RESERVA.Where(res => res.ID_USUARIO == user.ID)
                .Select(res =>

                    new
                    {
                        NombreAlojamiento = res.ALOJAMIENTO.NOMBRE,
                        Comuna=res.ALOJAMIENTO.COMUNA.NOMBRE,
                        Descripcion = res.ALOJAMIENTO.DESCRIPCION_CORTA,
                        FechaInicio = res.FECHA_INICIO,
                        FechaFin = res.FECHA_TERMINO,
                        Valor = "$"+res.TOTAL,
                        DatosReserva = res.COMENTARIO
                    }
                ).ToList() ;
            ReservasRepeater.DataSource = reservas;
            ReservasRepeater.DataBind();
        }
    }
}