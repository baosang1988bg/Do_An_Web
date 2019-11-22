using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ElectronicManager.Models;

namespace ElectronicManager.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {
            return View();
        }

        dbQLdienTuDataContext data = new dbQLdienTuDataContext();

        private List<SanPham> laySanPham()
        {
            return data.SanPhams.OrderByDescending(a => a.ChuDe).ToList();
        }
        public ActionResult SanPham()
        {

            return View();
        }

    }
}
