using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using api.Classes;
using Microsoft.Extensions.Configuration;

namespace api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AssetController : ControllerBase
    {
        public readonly IConfiguration config;

        public AssetController(IConfiguration configuration)
        {
            config = configuration;
        }
        // POST api/asset
        [HttpPost]
        public void Post([FromBody] NewConfigmap value)
        {
            //Console.WriteLine($"Asset Configuration: {value.assetConfiguration}, Resource Group Name: {value.rgName}, Resource Group Location: {value.rgLocation}");

            var allowedHosts = config["AllowedHosts"];
            Console.WriteLine($"Allowed Hosts: {allowedHosts}");
        }


    }
}