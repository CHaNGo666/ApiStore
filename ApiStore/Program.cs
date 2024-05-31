using ApiStore;
using ApiStore.Dato;
using ApiStore.Interfaces;
using ApiStore.Logica;
using ApiStore.Models;

//using ApiStore.Models;
using ApiStore.Repositorio.IRepositorio;
using Microsoft.EntityFrameworkCore;
using Microsoft.Net.Http.Headers;

#region builder x default

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
#endregion

#region Mapper
builder.Services.AddAutoMapper(typeof(mappingConfig));
#endregion

#region Carpeta-- > Logica
builder.Services.AddScoped<ILogica, Logica>();
#endregion

#region CONTEXTO
// https://medium.com/@kulasinghet/how-to-connect-to-a-database-in-asp-net-core-using-entity-framework-core-a11b291d0e0d

const string desarrollo = "appsettings.Desarrollo.json";
//const string produccion = "appsettings.produccion.json";

var builderConf = new ConfigurationBuilder();
builderConf.AddJsonFile(desarrollo);
var configuration = builderConf.Build();
var connString = configuration.GetConnectionString("connexion");

builder.Services.AddDbContext<GeneralStoreContext>(options => options.UseSqlServer(connString));
#endregion

#region Carpetas --> Repositorio/IRepositorio
builder.Services.AddScoped<IStockRepo, StockRepo>();
builder.Services.AddScoped<IStoreRepo, StoreRepo>();
builder.Services.AddScoped<IProductoRepo, ProductRepo>();
#endregion



#region Politica de ingreso (Para Cors)
//var proveedor = builder.Services.BuildServiceProvider();
//var config = proveedor.GetRequiredService<IConfiguration>();

builder.Services.AddCors(opciones =>
{
    // se toma del contexto
    //var frontendURL = configuration.GetConnectionString("frontend_url");

    //var frontendURL = config.GetValue<string>("frontend_url");
    //opciones.AddDefaultPolicy(builder =>
    //{
    //    //builder.WithOrigins(frontendURL).AllowAnyMethod().AllowAnyHeader();
    //});
    opciones.AddPolicy(name:"Policy1", configurePolicy:policyBuilder =>
    {
        policyBuilder.WithOrigins("http://localhost:3000");
        policyBuilder.AllowAnyHeader();
        policyBuilder.AllowAnyMethod();
        policyBuilder.AllowCredentials();
    });

});
#endregion





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


app.UseCors("Policy1"); // <-- para el front end

app.Run();
#endregion


