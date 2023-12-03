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
        RepeaterZonas.DataSource = context.ZONA_GEOGRAFICA.ToList().GetRange(0, cantidadElementos);
        RepeaterZonas.DataBind();
    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        EspacioEntites context = new EspacioEntites();
        
        string descripcion = txtBuscar.Text;

        if(ddlUbicacionTuristica.SelectedValue== "geo")
        {
            divAtracciones.Visible = false;
            divZonas.Visible = true;

            var elements = context.ZONA_GEOGRAFICA.Where(zona => zona.NOMBRE.Contains(descripcion)).ToList();
            RepeaterZonas.DataSource = elements;
            RepeaterZonas.DataBind();
        }
        else
        {
            divAtracciones.Visible = true;
            divZonas.Visible = false;

            var elements = context.UBICACION.Where(zona => zona.NOMBRE.Contains(descripcion)).ToList();
            RepeaterSitiosTuristicos.DataSource = elements;
            RepeaterSitiosTuristicos.DataBind();
        }


        
    }
}