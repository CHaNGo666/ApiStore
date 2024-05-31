using ApiStore.Models;

namespace ApiStore.Dto
{
    public class StoreDto
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

        public virtual IEnumerable<ProductDto> ProductsList { get; set; } = new List<ProductDto>();
    }
}
