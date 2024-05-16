using System;
using System.Collections.Generic;

namespace ApiStore.Models;

public partial class State
{
    public int IdState { get; set; }

    public string NameList { get; set; } = null!;

    public string Descripcion { get; set; } = null!;

    public string DescripcionCorta { get; set; } = null!;

    public string Abm { get; set; } = null!;

    public bool Borrado { get; set; }

    public string Usuario { get; set; } = null!;

    public DateTime FechaAlta { get; set; }

    public virtual ICollection<StockDetail> StockDetailIdStateEstadoNavigations { get; set; } = new List<StockDetail>();

    public virtual ICollection<StockDetail> StockDetailIdStateOperacionNavigations { get; set; } = new List<StockDetail>();
}
