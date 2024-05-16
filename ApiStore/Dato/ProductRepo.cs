using ApiStore.Models;
using ApiStore.Repositorio.IRepositorio;
using ApiStore.Repositorio;
using ApiStore.Dto;

namespace ApiStore.Dato
{
    public class ProductRepo : Repositorio<Product>, IProductoRepo
    {


        #region constructor
        public readonly GeneralStoreContext _bd;

        public ProductRepo(GeneralStoreContext db) : base(db)
        {
            _bd = db;
        }
        #endregion

        #region modifica
        public async Task<Product> MProduct(Product entidad)
        {
           
            entidad.Abm = "A";
            entidad.Borrado = false;
            entidad.FechaAlta = DateTime.Now;
            entidad.Usuario = "sistemas";

            _bd.Products.Update(entidad);
            await _bd.SaveChangesAsync();

            return entidad;
        }
        #endregion




    }
}
