using System;
using System.Collections.Generic;

namespace ApiStore.Models;

public partial class Store
{
    public int IdStore { get; set; }

    public int IdMasterHome { get; set; }

    public string RazonSocial { get; set; } = null!;

    public string? Cuit { get; set; }

    public int Provincia { get; set; }

    public int Departamento { get; set; }

    public string? Calle { get; set; }

    public string? Altura { get; set; }

    public string? Barrio { get; set; }

    public string? Telefono { get; set; }

    public string? Celular { get; set; }

    public string Abm { get; set; } = null!;

    public bool Borrado { get; set; }

    public string Usuario { get; set; } = null!;

    public virtual ICollection<Category> Categories { get; set; } = new List<Category>();

    public virtual Departamento DepartamentoNavigation { get; set; } = null!;

    public virtual Store IdMasterHomeNavigation { get; set; } = null!;

    public virtual ICollection<Store> InverseIdMasterHomeNavigation { get; set; } = new List<Store>();

    public virtual ICollection<Product> Products { get; set; } = new List<Product>();

    public virtual Provincia ProvinciaNavigation { get; set; } = null!;

    public virtual ICollection<RelPCSc> RelPCScs { get; set; } = new List<RelPCSc>();

    public virtual ICollection<StockDetail> StockDetails { get; set; } = new List<StockDetail>();

    public virtual ICollection<Stock> Stocks { get; set; } = new List<Stock>();

    public virtual ICollection<SubCategory> SubCategories { get; set; } = new List<SubCategory>();
}
