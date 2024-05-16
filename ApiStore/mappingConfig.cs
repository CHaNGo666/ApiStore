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
            CreateMap<Store, StoreDto>().ReverseMap();
            CreateMap<Product, ProductDto>().ReverseMap();
        }
    }
}
