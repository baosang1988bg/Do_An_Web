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
            List<SanPham> lst = db.SanPhams.ToList();
            return View(lst);
        }

        public ActionResult Loai()
        {
            List<Loai> lst = db.Loais.ToList();
            return PartialView(lst);
        }
        public ActionResult HangNSX()
        {
            List<NhaSanXuat> lst = db.NhaSanXuats.ToList();
            return PartialView(lst);
        }

        public ActionResult ChuDeDM()
        {
            List<ChuDe> lst = db.ChuDes.ToList();
            return PartialView(lst);
        }

        public ActionResult chiTiet(int id)
        {
            var sp = db.SanPhams.Where(m => m.MaSP == id).First();
            return View(sp);
        }
        public ActionResult SanPhamChuDe(int m)
        {
            List<SanPham> lst = db.SanPhams.Where(t => t.MaCD == m).ToList();
            return View(lst);
        }
        public ActionResult SanPhamNSX(int m)
        {
            List<SanPham> lst = db.SanPhams.Where(t => t.MaNSX == m).ToList();
            return View(lst);
        }
        public ActionResult SanPhamLoai(int m)
        {
            List<SanPham> lst = db.SanPhams.Where(t => t.MaLoai == m).ToList();
            return View(lst);
        }
        [HttpGet]
        public ActionResult DangKy()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DangKy(FormCollection col, KhachHang kh)
        {
            var ten = col["tenUser"];
            var tenUser = col["userUser"];
            var mk = col["matkhauUser"];

            if (String.IsNullOrEmpty(ten))
            {
                ViewData["Loi1"] = "khong duoc de trong";
            }
            else
            {
                kh.HoTen = ten;
                kh.TaiKhoan = tenUser;
                kh.MatKhau = mk;

                db.KhachHangs.InsertOnSubmit(kh);
                db.SubmitChanges();

                return RedirectToAction("DangNhap", "Home");
            }
            

            return this.DangKy();
        }

        [HttpGet]
        public ActionResult DangNhap()
        {
            return View();
        }

        [HttpPost]
        public ActionResult DangNhap(FormCollection col)
        {
            var tendn = col["TenDN"];
            var mk = col["MatKhau"];
            if (String.IsNullOrEmpty(tendn))
            {
                ViewData["Loi1"] = "Error";
            }
            else if (String.IsNullOrEmpty(mk))
                {
                    ViewData["Loi2"] = "Error 2";
                }
            else
            {
                KhachHang kh = db.KhachHangs.SingleOrDefault(n => n.TaiKhoan == tendn && n.MatKhau == mk);
                if (kh != null)
                {
                    Session["TaiKhoan"] = kh;
                    ViewBag.ThongBao = "thanh cong";
                }
            }
            return View();
        }
    }
}
