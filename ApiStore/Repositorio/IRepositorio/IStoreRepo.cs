using ApiStore.Models;

namespace ApiStore.Repositorio.IRepositorio
{
    public interface IStoreRepo : IRepositorio<Store>
    {
        Task<Store> MStore(Store store);
    }
}
