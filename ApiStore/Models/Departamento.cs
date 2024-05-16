using System;
using System.Collections.Generic;

namespace ApiStore.Models;

public partial class Departamento
{
    public int Id { get; set; }

    public int Codigo { get; set; }

    public string? Departamento1 { get; set; }

    public virtual Provincia CodigoNavigation { get; set; } = null!;

    public virtual ICollection<Store> Stores { get; set; } = new List<Store>();
}
