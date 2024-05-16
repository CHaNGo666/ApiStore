using ApiStore.Models;
using System.Threading.Tasks;

namespace ApiStore.Repositorio.IRepositorio
{
    public interface IStockRepo : IRepositorio<Stock>
    {
        Task<Stock> MStock(Stock stock);
    }
}
