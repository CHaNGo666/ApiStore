using System;
using System.Collections.Generic;

namespace ApiStore.Models;

public partial class Category
{
    public int IdCategory { get; set; }

    public int IdStore { get; set; }

    public string CategoryName { get; set; } = null!;

    public string Abm { get; set; } = null!;

    public bool Borrado { get; set; }

    public string Usuario { get; set; } = null!;

    public DateTime FechaAlta { get; set; }

    public virtual Store IdStoreNavigation { get; set; } = null!;

    public virtual ICollection<RelPCSc> RelPCScs { get; set; } = new List<RelPCSc>();
}
