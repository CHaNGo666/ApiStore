using ApiStore.Dto;
using ApiStore.Models;

namespace ApiStore.Interfaces
{
    public interface ILogica
    {
        // Alta de tienda
        Task<Store> A_Store(Store store);
        // Lista de tiendas
        Task<IEnumerable<StoreDto>> ListaStore();
        // ALTA PRODUCTO
        Task<ProductDto> A_Product(ProductDto entidad);
        // MODIFICA PRODUCTO
        Task<ProductDto> M_Product(ProductDto entidad);
        Task<ProductDto> F_Product(int idProducto);

        Task B_Product(int idProducto);
    }
}
