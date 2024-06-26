﻿using ApiStore.Models;

namespace ApiStore.Dto
{
    public class ProductDto
    {
        public int IdProduct { get; set; }

        public int IdStore { get; set; }

        public string ProductName { get; set; } = null!;

        public string? DescriptionProduct { get; set; }

        public string? Codigo { get; set; }

        // PRUEBA DE COMPOSICION
        public string DescCod { get; set; } = null!;

        //public string Abm { get; set; } = null!;

        //public bool Borrado { get; set; }

        //public string Usuario { get; set; } = null!;

        //public DateTime FechaAlta { get; set; }



    }
}
