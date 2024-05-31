using System;
using System.Collections.Generic;

namespace ApiStore.Models;

public partial class Product
{
    public int IdProduct { get; set; }

    public int IdStore { get; set; }

    public string ProductName { get; set; } = null!;

    public string? DescriptionProduct { get; set; }

    public string? Codigo { get; set; }

    public string Abm { get; set; } = null!;

    public bool Borrado { get; set; }

    public string Usuario { get; set; } = null!;

    public DateTime FechaAlta { get; set; }

    public virtual Store IdStoreNavigation { get; set; } = null!;

    public virtual ICollection<StockDetail> StockDetails { get; set; } = new List<StockDetail>();

    public virtual ICollection<Stock> Stocks { get; set; } = new List<Stock>();
}
