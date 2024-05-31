using ApiStore.Dto;
using ApiStore.Models;
using AutoMapper;

namespace ApiStore
{
    public class mappingConfig : Profile
    {
        public mappingConfig()
        {
            // Store
            CreateMap<Store, StoreDto>()
                .ForMember(
                destDto => destDto.ProductsList,
                origen => origen.MapFrom(src => src.Products))
                .ReverseMap();

            //----------------------------------------------------------------------------------
            CreateMap<Product, ProductDto>()
                // concatena datos
                .ForMember(destino => destino.DescCod, origen => origen.MapFrom(mapa =>
                mapa.DescriptionProduct + "/" + mapa.Codigo))
                .ReverseMap();
            //----------------------------------------------------------------------------------
        }
    }
}
