using ApiStore.Models;
using ApiStore.Repositorio.IRepositorio;
using ApiStore.Repositorio;

namespace ApiStore.Dato
{
    public class StoreRepo : Repositorio<Store>, IStoreRepo
    {


        #region constructor
        public readonly GeneralStoreContext _bd;

        public StoreRepo(GeneralStoreContext db) : base(db)
        {
            _bd = db;
        }
        #endregion

        #region modifica
        public async Task<Store> MStore(Store store)
        {
            store.Abm = "A";
            _bd.Stores.Update(store);
            await _bd.SaveChangesAsync();
            return store;
        }
        #endregion



    }
}
