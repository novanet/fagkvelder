using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace SuperDuperWebApp.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class HealthzController : ControllerBase
    {
        [HttpGet]
        public ActionResult<string> Get()
        {
            return "my shoes are nice";
        }
    }
}