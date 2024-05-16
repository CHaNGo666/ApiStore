using System;
using System.Collections.Generic;

namespace ApiStore.Models;

public partial class StockDetail
{
    public int IdStockDetail { get; set; }

    public int IdStore { get; set; }

    public int IdProduct { get; set; }

    public int IdStateEstado { get; set; }

    public int IdStateOperacion { get; set; }

    public int Cantidad { get; set; }

    public decimal Precio { get; set; }

    public DateTime FechaCompra { get; set; }

    public bool Abm { get; set; }

    public string Borrado { get; set; } = null!;

    public string Usuario { get; set; } = null!;

    public DateTime FechaAlta { get; set; }

    public virtual Product IdProductNavigation { get; set; } = null!;

    public virtual State IdStateEstadoNavigation { get; set; } = null!;

    public virtual State IdStateOperacionNavigation { get; set; } = null!;

    public virtual Store IdStoreNavigation { get; set; } = null!;
}
