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
        public void Post([FromBody] NewConfigmap value)
        {
            Console.WriteLine("Got a post from somewhere.");
        }


    }
}