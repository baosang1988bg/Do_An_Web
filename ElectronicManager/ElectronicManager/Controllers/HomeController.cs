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
        dbElecDataContext db = new dbElecDataContext();

        private List<SanPham> laySP(int count)
        {
            return db.SanPhams.OrderByDescending(a => a.NgayCapNhat).Take(count).ToList();
        }

        public ActionResult Index()
        {
            var sanpham = laySP(60);
            return View(sanpham);
        }

        public ActionResult ChuDe()
        {
            var chude = from cd in db.ChuDes select cd;
            return PartialView(chude);
        }


    }
}
