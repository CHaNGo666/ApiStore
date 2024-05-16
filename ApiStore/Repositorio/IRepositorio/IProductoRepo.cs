using ApiStore.Models;

namespace ApiStore.Repositorio.IRepositorio
{
    public interface IProductoRepo : IRepositorio<Product>
    {
        Task<Product> MProduct(Product entidad);
    }
}
