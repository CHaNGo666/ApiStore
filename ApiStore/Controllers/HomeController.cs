using ApiStore.Dto;
using ApiStore.Interfaces;
using ApiStore.Logica;
using ApiStore.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore.Metadata.Internal;

namespace ApiStore.Controllers
{
    //[Route("api/[controller]")]

    [Route("api/[controller]")]
    [ApiController]
    public class HomeController : ControllerBase
    {
        #region constructor
        private readonly ILogger<HomeController> _logger;
        private readonly ILogica _logi;
        public HomeController(ILogger<HomeController> logger, ILogica logica)
        {
            _logger = logger;
            _logi = logica;
        }
        #endregion


        #region Producto Post
        [HttpPost]
        [Route("ProductoPost")]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult<ProductDto>> ProductoPost([FromBody] ProductDto entidad)
        {
            if (entidad == null)
                return BadRequest(entidad);

            ProductDto resp = await _logi.A_Product(entidad);

            return Ok(resp);
        }
        #endregion

        #region Producto GET - Buscar
        [HttpGet("idProduct:int", Name = "ProductoGetBusca")]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        public async Task<ActionResult<ProductDto>> ProductoGetBusca(int idProduct)
        {
            if (idProduct == 0)
            {
                _logger.LogError("Error no existe ID");
                return BadRequest();
            }

            ProductDto producto = await _logi.F_Product(idProduct);

            return Ok(producto);
        }
        #endregion

        #region Producto Update
        [HttpPut("idProduct:int")]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        public async Task<IActionResult> ProductoUpdate(int idProduct, [FromBody] ProductDto pDto)
        {
            if (pDto == null || idProduct != pDto.IdProduct)
                return BadRequest();


            ProductDto resp = await _logi.M_Product(pDto);

            return Ok(resp);
        }
        #endregion

        #region Producto Delete
        [HttpDelete("{idProduct:int}")]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        public async Task<IActionResult> ProductoDelete(int idProduct)
        {
            if(idProduct == 0)
            {
                return BadRequest();
            }

            await _logi.B_Product(idProduct);

            return Ok();

        }
        #endregion


        #region LISTA STORE
        [HttpGet]
        [Route("ListaStore")]
        public async Task<ActionResult> ListaStore()
        {

            var x = await _logi.ListaStore();


            if (x == null)
            {
                return NoContent();
            }
            return Ok(x);
        }
        #endregion

        #region ok 
        //[HttpPost]
        //public async Task<ActionResult> AStore(Store store)
        //{

        //    return Ok(await _logi.A_Store(store));
        //}
        #endregion

    }
}
