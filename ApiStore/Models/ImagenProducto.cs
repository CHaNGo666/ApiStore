using System;
using System.Collections.Generic;

namespace ApiStore.Models;

public partial class ImagenProducto
{
    public int IdImagen { get; set; }

    public int IdStore { get; set; }

    public int IdProducto { get; set; }

    public string? Nombre { get; set; }

    public string? Descripcion { get; set; }

    public byte[]? Imagen { get; set; }

    public DateTime FechaAlta { get; set; }

    public string Abm { get; set; } = null!;

    public bool Borrado { get; set; }
}
