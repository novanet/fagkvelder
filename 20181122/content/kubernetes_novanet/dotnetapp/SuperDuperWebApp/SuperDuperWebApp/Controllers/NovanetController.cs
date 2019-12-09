using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace SuperDuperWebApp.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class NovanetController : ControllerBase
    {
        // GET
        [HttpGet]
        public ActionResult<IEnumerable<string>> Get()
        {
            return new string[] {"HAV", "real", "dev"};
        }
    }
}