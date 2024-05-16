using ApiStore.Dto;
using ApiStore.Interfaces;
using ApiStore.Models;
using ApiStore.Repositorio.IRepositorio;
using AutoMapper;

namespace ApiStore.Logica
{
    public class Logica : ILogica
    {

        #region constructor
        private readonly IStoreRepo _store;
        private readonly IProductoRepo _producto;
        private readonly IMapper _mapper;

        public Logica(IStoreRepo s, IProductoRepo p, IMapper mapper)
        {
            _store = s;
            _producto = p;
            _mapper = mapper;
        }
        #endregion

        #region Alta tienda
        public async Task<Store> A_Store(Store store)
        {
            return await _store.Crear(store);

        }
        #endregion

        #region Lista de tienda
        public async Task<IEnumerable<StoreDto>> ListaStore()
        {
            try
            {
                IEnumerable<Store> x = await _store.ObtenerTodos();
                return _mapper.Map<IEnumerable<StoreDto>>(x);

            }
            catch (Exception e)
            {

                throw;
            }
        }
        #endregion

        #region Alta Producto
        public async Task<ProductDto> A_Product(ProductDto entidad)
        {
            

           Product producto = _mapper.Map<Product>(entidad);

            //producto.IdStore = 1;
            producto.Abm = "A";
            producto.Borrado = false;
            producto.FechaAlta = DateTime.Now;
            producto.Usuario = "sistemas";


            //Product x = new Product()
            //{
            //    IdStore = 1,
            //    ProductName = "Producto 1",
            //    DescriptionProduct = "Descrip 1",
            //    Codigo = "AAAA000",
            //    Imagen = 1,
            //    Abm = "A",
            //    Borrado = false,
            //    FechaAlta = DateTime.Now,
            //    Usuario = "sistemas",
            //};

            Product resp = await _producto.Crear(producto);

            return _mapper.Map<ProductDto>(resp);

        }


        #endregion

        #region Modifica Producto
        public async Task<ProductDto> M_Product(ProductDto entidad)
        {

            Product producto = _mapper.Map<Product>(entidad);

            producto = await _producto.MProduct(producto);



            return _mapper.Map<ProductDto>(producto);
        }


        #endregion


        #region producto Find
        public async Task<ProductDto> F_Product(int idProducto)
        {
            Product producto = await _producto.Obtener(x => x.IdProduct == idProducto, tracked:false);

            return _mapper.Map<ProductDto>(producto);

        }

        #endregion

        #region Borra producto
        public async Task B_Product(int idProducto)
        {
            Product producto = await _producto.Obtener(x => x.IdProduct == idProducto, tracked: false);

           await _producto.Remover(producto);
          
        }
        #endregion



    }
}
