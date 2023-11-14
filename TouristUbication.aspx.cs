using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TouristUbication : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["ubicacionId"] != null)
            {
                int ubicacionId = Int16.Parse(Request.QueryString["ubicacionId"]);

                EspacioEntites context = new EspacioEntites();

                var ubicacionDB = context.UBICACION.FirstOrDefault(data => data.ID == ubicacionId);
                TitlePage.InnerText = ubicacionDB.NOMBRE.ToString();
                LongDescription.InnerText = ubicacionDB.DESCRIPCION_LARGA;


                RepeaterActividades.DataSource = context.ACTIVIDADES.Where(act=>act.ID_UBICACION == ubicacionId).ToList();
                RepeaterActividades.DataBind();
                // Ahora puedes utilizar ubicacionId para cargar los detalles de la ubicación desde tu base de datos
                // y mostrarlos en la página de detalles.
            }
        }
    }
}