using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TouristZones : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["zoneId"] != null)
                {
                    int zoneId = Int16.Parse(Request.QueryString["zoneId"]);
                    ViewState["zoneId"] = zoneId;
                    EspacioEntites context = new EspacioEntites();

                    var zonaDB = context.ZONA_GEOGRAFICA.FirstOrDefault(zona => zona.ID == zoneId);
                    txtNombre.InnerText = zonaDB.NOMBRE;
                    txtDescripcionLarga.InnerText = zonaDB.DESCRIPCION_LARGA;


                    var ubicaciones = context.UBICACION.Where(ubi => ubi.ID_ZONA == zonaDB.ID)
                        .Select(ubi => new
                        {
                            IdUbicacion = ubi.ID,
                            Nombre = ubi.NOMBRE,
                            Descripcion = ubi.DESCRIPCION_CORTA
                        })
                        .ToList();
                    RepeaterLugaresTuristicos.DataSource = ubicaciones;
                    RepeaterLugaresTuristicos.DataBind();


                    var alojamientos = context.ALOJAMIENTO.Where(alo => alo.ID_COMUNA == zonaDB.ID_COMUNA)
                        .Select(alo => new
                        {
                            IdAlojamiento = alo.ID,
                            Nombre = alo.NOMBRE,
                            Descripcion = alo.DESCRIPCION_CORTA,
                            Dorms = alo.DORMITORIOS,
                            Banios = alo.BANIOS
                        })
                        .ToList();

                    RepeaterAlojamientos.DataSource = alojamientos;
                    RepeaterAlojamientos.DataBind();
                }
            }
        }
    }
}