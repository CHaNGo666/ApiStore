using ApiStore;
using ApiStore.Dato;
using ApiStore.Interfaces;
using ApiStore.Logica;
using ApiStore.Models;

//using ApiStore.Models;
using ApiStore.Repositorio.IRepositorio;
using Microsoft.EntityFrameworkCore;

#region builder x default

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
#endregion

//  mapper
builder.Services.AddAutoMapper(typeof(mappingConfig));


#region CONTEXTO
// https://medium.com/@kulasinghet/how-to-connect-to-a-database-in-asp-net-core-using-entity-framework-core-a11b291d0e0d

const string desarrollo = "appsettings.json";
//const string produccion = "appsettings.produccion.json";

var builderConf = new ConfigurationBuilder();
builderConf.AddJsonFile(desarrollo);
var configuration = builderConf.Build();
var connString = configuration.GetConnectionString("connexion");

builder.Services.AddDbContext<GeneralStoreContext>(options => options.UseSqlServer(connString));
#endregion



// Carpeta-- > Logica
builder.Services.AddScoped<ILogica, Logica>();


// Carpetas --> Repositorio/IRepositorio
builder.Services.AddScoped<IStockRepo, StockRepo>();
builder.Services.AddScoped<IStoreRepo, StoreRepo>();
builder.Services.AddScoped<IProductoRepo, ProductRepo>();


#region Configure the HTTP request pipeline.

var app = builder.Build();

if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
#endregion


