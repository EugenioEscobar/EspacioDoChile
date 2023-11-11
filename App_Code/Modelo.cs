﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class ALOJAMIENTO
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public ALOJAMIENTO()
    {
        this.RESEÑA = new HashSet<RESEÑA>();
        this.RESERVA = new HashSet<RESERVA>();
    }

    public int ID { get; set; }
    public string NOMBRE { get; set; }
    public string DESCRIPCION_CORTA { get; set; }
    public string DESCRIPCION_LARGA { get; set; }
    public string UBICACION { get; set; }
    public Nullable<double> LATITUD { get; set; }
    public Nullable<double> LONGITUD { get; set; }
    public Nullable<int> ID_COMUNA { get; set; }

    public virtual COMUNA COMUNA { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<RESEÑA> RESEÑA { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<RESERVA> RESERVA { get; set; }
}

public partial class COMUNA
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public COMUNA()
    {
        this.ALOJAMIENTO = new HashSet<ALOJAMIENTO>();
        this.UBICACION = new HashSet<UBICACION>();
        this.USUARIO = new HashSet<USUARIO>();
        this.ZONA_GEOGRAFICA = new HashSet<ZONA_GEOGRAFICA>();
    }

    public int ID { get; set; }
    public string NOMBRE { get; set; }
    public Nullable<int> ID_REGION { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<ALOJAMIENTO> ALOJAMIENTO { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<UBICACION> UBICACION { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<USUARIO> USUARIO { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<ZONA_GEOGRAFICA> ZONA_GEOGRAFICA { get; set; }
    public virtual REGION REGION { get; set; }
}

public partial class IMAGENES
{
    public int ID { get; set; }
    public string NOMBRE { get; set; }
    public string TIPO_IMAGEN { get; set; }
    public string UBICACION { get; set; }
}

public partial class REGION
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public REGION()
    {
        this.COMUNA = new HashSet<COMUNA>();
    }

    public int ID { get; set; }
    public string NOMBRE { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<COMUNA> COMUNA { get; set; }
}

public partial class RESEÑA
{
    public int ID { get; set; }
    public string DESCRIPCION { get; set; }
    public Nullable<System.DateTime> FECHA { get; set; }
    public Nullable<int> ID_USUARIO { get; set; }
    public Nullable<int> ID_ALOJAMIENTO { get; set; }
    public Nullable<double> PUNTUACION { get; set; }

    public virtual ALOJAMIENTO ALOJAMIENTO { get; set; }
    public virtual USUARIO USUARIO { get; set; }
}

public partial class RESERVA
{
    public int ID { get; set; }
    public string NOMBRE { get; set; }
    public Nullable<System.DateTime> FECHA_INICIO { get; set; }
    public Nullable<System.DateTime> FECHA_TERMINO { get; set; }
    public Nullable<int> TOTAL { get; set; }
    public string COMENTARIO { get; set; }
    public Nullable<int> ID_ALOJAMIENTO { get; set; }
    public Nullable<int> ID_USUARIO { get; set; }

    public virtual ALOJAMIENTO ALOJAMIENTO { get; set; }
    public virtual USUARIO USUARIO { get; set; }
}

public partial class ROL
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public ROL()
    {
        this.TIPO_USUARIO = new HashSet<TIPO_USUARIO>();
    }

    public int ID { get; set; }
    public string NOMBRE { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<TIPO_USUARIO> TIPO_USUARIO { get; set; }
}

public partial class TIPO_USUARIO
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public TIPO_USUARIO()
    {
        this.USUARIO = new HashSet<USUARIO>();
    }

    public int ID { get; set; }
    public string NOMBRE { get; set; }
    public Nullable<int> ID_ROL { get; set; }
    public Nullable<int> TELEFONO { get; set; }

    public virtual ROL ROL { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<USUARIO> USUARIO { get; set; }
}

public partial class UBICACION
{
    public int ID { get; set; }
    public string NOMBRE { get; set; }
    public string DESCRIPCION_CORTA { get; set; }
    public string DESCRIPCION_LARGA { get; set; }
    public Nullable<int> ID_COMUNA { get; set; }
    public Nullable<int> ID_ZONA { get; set; }

    public virtual COMUNA COMUNA { get; set; }
    public virtual ZONA_GEOGRAFICA ZONA_GEOGRAFICA { get; set; }
}

public partial class USUARIO
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public USUARIO()
    {
        this.RESEÑA = new HashSet<RESEÑA>();
        this.RESERVA = new HashSet<RESERVA>();
    }

    public int ID { get; set; }
    public string EMAIL { get; set; }
    public string PASSWORD { get; set; }
    public string NOMBRE { get; set; }
    public string SEG_NOMBRE { get; set; }
    public string APELLIDO { get; set; }
    public string SEG_APELLIDO { get; set; }
    public string IDENTIFICADOR { get; set; }
    public Nullable<int> TELEFONO { get; set; }
    public string DIRECCION { get; set; }
    public Nullable<int> ID_COMUNA { get; set; }
    public Nullable<int> ID_TIPO_USUARIO { get; set; }

    public virtual COMUNA COMUNA { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<RESEÑA> RESEÑA { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<RESERVA> RESERVA { get; set; }
    public virtual TIPO_USUARIO TIPO_USUARIO { get; set; }
}

public partial class ZONA_GEOGRAFICA
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public ZONA_GEOGRAFICA()
    {
        this.UBICACION = new HashSet<UBICACION>();
    }

    public int ID { get; set; }
    public string NOMBRE { get; set; }
    public string DESCRIPCION_CORTA { get; set; }
    public string DESCRIPCION_LARGA { get; set; }
    public Nullable<int> ID_COMUNA { get; set; }

    public virtual COMUNA COMUNA { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<UBICACION> UBICACION { get; set; }
}
