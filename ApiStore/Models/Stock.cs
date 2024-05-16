using System;
using System.Collections.Generic;

namespace ApiStore.Models;

public partial class Stock
{
    public int IdStock { get; set; }

    public int IdStore { get; set; }

    public int IdProduct { get; set; }

    public int StockTotal { get; set; }

    public decimal Precio { get; set; }

    public DateTime FechaIngreso { get; set; }

    public DateTime? FechaBaja { get; set; }

    public string Abm { get; set; } = null!;

    public bool Borrado { get; set; }

    public string Usuario { get; set; } = null!;

    public virtual Product IdProductNavigation { get; set; } = null!;

    public virtual Store IdStoreNavigation { get; set; } = null!;
}
