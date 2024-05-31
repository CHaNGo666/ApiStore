

//----------------------------------------------------------------------//
//              PATRON DE REPOSITORIO    Clase                          //
//----------------------------------------------------------------------//
using ApiStore.Models;
using ApiStore.Repositorio.IRepositorio;
using Microsoft.EntityFrameworkCore;
using System.Linq.Expressions;

namespace ApiStore.Repositorio
{
    public class Repositorio<T> : IRepositorio<T> where T : class
    {

        #region constructor
        public readonly GeneralStoreContext _bd;
        internal DbSet<T> dbSet;

        public Repositorio(GeneralStoreContext db)
        {
            _bd = db;
            this.dbSet = _bd.Set<T>();
        }
        #endregion

        #region crear
        public async Task<T> Crear(T entidad)
        {

          await dbSet.AddAsync(entidad);

           await Grabar();

            return entidad;

        }
        #endregion

        #region grabar
        public async Task Grabar()
        {
            await _bd.SaveChangesAsync();
        }
        #endregion

        #region obtener uno
        public async Task<T> Obtener(Expression<Func<T, bool>>? filtro = null, bool tracked = true)
        {
            IQueryable<T> query = dbSet;

            if (!tracked)
            {
                query = query.AsNoTracking();
            }
            if (filtro != null)
            {
                query = query.Where(filtro);
            }

            return await query.FirstOrDefaultAsync();

        }
        #endregion

        #region obtener todos


        public async Task<List<T>> ObtenerTodos(Expression<Func<T, bool>>? filtro = null)
        {
            //IQueryable<T> query = dbSet;

            IQueryable<T> query;

            Type tipo = typeof(T);

            if (tipo.Name == "Store")
            {
                query = dbSet.Include("Products");
            }
            else
            {
                query = dbSet;
            }



            if (filtro != null)
            {
                query = query.Where(filtro);
            }

            return await query.ToListAsync();

        }
        #endregion

        #region remover
        public async Task Remover(T emtidad)
        {
            dbSet.Remove(emtidad);
            await Grabar();

        }


        #endregion
    }
}
