using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using api.Classes;

namespace api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AssetController : ControllerBase
    {
        // POST api/asset
        [HttpPost]
        public ActionResult<IEnumerable<string>> Post([FromBody] NewConfigmap value)
        {
            Console.WriteLine($"Asset Configuration: {value.assetConfiguration}, Resource Group Name: {value.rgName}, Resource Group Location: {value.rgLocation}");
            return new string[] { value.assetConfiguration, value.rgName, value.rgLocation };
        }


    }
}