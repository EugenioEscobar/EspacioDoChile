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
                ViewState["UbicacionId"] = ubicacionId;
                EspacioEntites context = new EspacioEntites();

                var ubicacionDB = context.UBICACION.FirstOrDefault(data => data.ID == ubicacionId);
                TitlePage.InnerText = ubicacionDB.NOMBRE.ToString();
                LongDescription.InnerText = ubicacionDB.DESCRIPCION_LARGA;
                MainImage.Src = ubicacionDB.IMAGENES.FirstOrDefault().RUTA;


                RepeaterActividades.DataSource = context.ACTIVIDADES.Where(act => act.ID_UBICACION == ubicacionId).ToList();
                RepeaterActividades.DataBind();

                var alojamientos = context.ALOJAMIENTO.Where(alo => alo.ID_COMUNA == ubicacionDB.ID_COMUNA)
                    .Select(a => new
                    {
                        a.NOMBRE,
                        a.DESCRIPCION_CORTA,
                        a.DORMITORIOS,
                        a.BANIOS,
                        a.ID,
                        IMAGEN = a.IMAGENES
                                  .Select(ia => ia.RUTA)
                                  .FirstOrDefault()
                    })
                    .ToList();
                RepeaterAlojamientos.DataSource = alojamientos;
                RepeaterAlojamientos.DataBind();

                var reseñas = context.RESEÑA_UBICACION.Where(res => res.ID_UBICACION == ubicacionDB.ID)
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

                var images = context.UBICACION
                    .FirstOrDefault(ubi => ubi.ID == ubicacionId).IMAGENES;
                RepeaterCarouselIndicators.DataSource = images;
                RepeaterCarouselIndicators.DataBind();
                RepeaterCarouselImages.DataSource = images;
                RepeaterCarouselImages.DataBind();

                // Ahora puedes utilizar ubicacionId para cargar los detalles de la ubicación desde tu base de datos
                // y mostrarlos en la página de detalles.
            }
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
            int ubicacionId = int.Parse(ViewState["UbicacionId"].ToString());
            RESEÑA_UBICACION newResena = new RESEÑA_UBICACION
            {
                DESCRIPCION = descripcion,
                FECHA = DateTime.Now,
                ID_USUARIO = loggedUser.ID,
                ID_UBICACION = ubicacionId,
                PUNTUACION = puntuacion
            };

            context.RESEÑA_UBICACION.Add(newResena);
            context.SaveChanges();

            var reseñas = context.RESEÑA_UBICACION.Where(res => res.ID_UBICACION == ubicacionId)
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