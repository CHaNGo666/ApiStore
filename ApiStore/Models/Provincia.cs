using System;
using System.Collections.Generic;

namespace ApiStore.Models;

public partial class Provincia
{
    public int Codigo { get; set; }

    public string? Provincia1 { get; set; }

    public virtual ICollection<Departamento> Departamentos { get; set; } = new List<Departamento>();

    public virtual ICollection<Store> Stores { get; set; } = new List<Store>();
}
