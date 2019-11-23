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

        dbElecDataContext db = new dbElecDataContext();

        public ActionResult SanPham(string m)
        {
            List<SanPham> lst = db.SanPhams.Where(t => t.MaCD == m).ToList();
            return View(lst);
        }

    }
}
