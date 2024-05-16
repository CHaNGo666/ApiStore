using ApiStore.Models;
using ApiStore.Repositorio;
using ApiStore.Repositorio.IRepositorio;

namespace ApiStore.Dato
{
    public class StockRepo : Repositorio<Stock>, IStockRepo
    {

        #region constructor
        public readonly GeneralStoreContext _bd;

        public StockRepo(GeneralStoreContext db) : base(db)
        {
                _bd = db;
        }
        #endregion


        #region Modifica
        public async Task<Stock> MStock(Stock stock)
        {
            stock.Abm = "A";
            _bd.Stocks.Update(stock);
            await _bd.SaveChangesAsync();
            return stock;
        }
        #endregion





    }
}
