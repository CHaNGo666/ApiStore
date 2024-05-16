using System.Linq.Expressions;

namespace ApiStore.Repositorio.IRepositorio
{
    public interface IRepositorio<T> where T : class
    {
        Task<T> Crear(T entidad);
        Task<List<T>> ObtenerTodos(Expression<Func<T, bool>>? filtro = null);
        Task<T> Obtener(Expression<Func<T, bool>>? filtro = null, bool tracked = true);
        Task Remover(T emtidad);
        Task Grabar();
    }
}
