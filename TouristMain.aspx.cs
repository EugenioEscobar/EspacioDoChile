using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TouristMain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        EspacioEntites context = new EspacioEntites();

        var cantidadElementos = context.UBICACION.ToList().Count < 4 ? context.UBICACION.ToList().Count : 4;
        RepeaterSitiosTuristicos.DataSource = context.UBICACION.ToList().GetRange(0, cantidadElementos);
        RepeaterSitiosTuristicos.DataBind();

        cantidadElementos = context.ZONA_GEOGRAFICA.ToList().Count < 4 ? context.ZONA_GEOGRAFICA.ToList().Count : 4;
        RepeaterZonas.DataSource = context.ZONA_GEOGRAFICA.ToList().GetRange(0, 4);
        RepeaterZonas.DataBind();
    }
}