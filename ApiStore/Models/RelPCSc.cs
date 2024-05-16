using System;
using System.Collections.Generic;

namespace ApiStore.Models;

public partial class RelPCSc
{
    public int IdPcsc { get; set; }

    public int IdStore { get; set; }

    public int IdCategory { get; set; }

    public int IdSubcategory { get; set; }

    public bool Abm { get; set; }

    public string Borrado { get; set; } = null!;

    public string Usuario { get; set; } = null!;

    public DateTime FechaAlta { get; set; }

    public virtual Category IdCategoryNavigation { get; set; } = null!;

    public virtual Store IdStoreNavigation { get; set; } = null!;

    public virtual SubCategory IdSubcategoryNavigation { get; set; } = null!;
}
