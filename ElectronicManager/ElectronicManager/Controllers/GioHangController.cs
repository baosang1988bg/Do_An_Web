using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ElectronicManager.Models;

namespace ElectronicManager.Controllers
{
    public class GioHangController : Controller
    {
        //
        // GET: /GioHang/
        dbElecDataContext data = new dbElecDataContext();
        public ActionResult Index()
        {
            return View();
        }

        public List<GioHang> layGioHang()
        { 
            List<GioHang> lstGioHang= Session["Giohang"] as List<GioHang>;

            if (lstGioHang == null)
            {
                lstGioHang = new List<GioHang>();
                Session["Giohang"] = lstGioHang;
            }

            return lstGioHang;
        }

        public ActionResult ThemGioHang(int iMaSp, string strURL)
        {
            List<GioHang> lstGiohang = layGioHang();

            GioHang sanpham = lstGiohang.Find(n => n.iMaSP == iMaSp);
            if (sanpham==null)
            {
                sanpham = new GioHang(iMaSp);
                lstGiohang.Add(sanpham);
                return Redirect(strURL);
            }
            else
            {
                sanpham.iSoLuong++;
                return Redirect(strURL);
            }
        }

        public int TongSoLuong()
        {
            int iTSL = 0;
            List<GioHang> lstGioHang = Session["Giohang"] as List<GioHang>;
            if (lstGioHang != null)
            {
                iTSL = lstGioHang.Sum(n => n.iSoLuong);
            }
            return iTSL;
        }

        public double TongTien()
        {
            double iTongTien = 0;
            List<GioHang> lstGioHang = Session["Giohang"] as List<GioHang>;
            if (lstGioHang !=null)
            {
                iTongTien = lstGioHang.Sum(n => n.dThanhTien);                
            }
            return iTongTien;
        }

        public ActionResult GioHang()
        {
            List<GioHang> lstGiohang = layGioHang();
            if (lstGiohang.Count == 0)
            {
                return RedirectToAction("Index", "Home");
            }
            ViewBag.Tongsoluong = TongSoLuong();
            ViewBag.Tongtien = TongTien();
            return View(lstGiohang);
        }

        public ActionResult GioHangPartical()
        {
            ViewBag.Tongsoluong = TongSoLuong();
            ViewBag.Tongtien = TongTien();
            return PartialView();
        }

        public ActionResult XoaGioHang(int iMaSP)
        {
            List<GioHang> lstGiohang = layGioHang();
            GioHang sanpham = lstGiohang.SingleOrDefault(n => n.iMaSP == iMaSP);
            if (sanpham != null)
            {
                lstGiohang.RemoveAll(n => n.iMaSP == iMaSP);
                return RedirectToAction("GioHang");
            }
            if (lstGiohang.Count == 0)
            {
                return RedirectToAction("Index", "Home");
            }
            return RedirectToAction("GioHang");
        }

        public ActionResult CapnhatGioHang(int iMaSP, FormCollection f)
        { 
            List<GioHang> lstGioHang = layGioHang();
            GioHang sanpham = lstGioHang.SingleOrDefault(n=>n.iMaSP == iMaSP);
            if (sanpham != null)
            {
                sanpham.iSoLuong = int.Parse(f["txtSoLuong"].ToString());
            }
            return RedirectToAction("GioHang");
        }

        [HttpGet]
        public ActionResult DatHang()
        {
            if (Session["Taikhoan"] == null || Session["Taikhoan"].ToString() == "")
            {
                return RedirectToAction("DangNhap", "Home");
            }
            if (Session["Giohang"] == null)
            {
                return RedirectToAction("Index", "Home");
            }
            List<GioHang> lstGioHang = layGioHang();
            ViewBag.Tongsoluong = TongSoLuong();
            ViewBag.Tongtien = TongTien();
            return View(lstGioHang);
        }

        public ActionResult DatHang(FormatException col)
        { 
            DonHang dh = new DonHang();
            KhachHang kh = (KhachHang)Session["Taikhoan"];
            List<GioHang> gh = layGioHang();
            dh.MaKH = kh.MaKH;
            dh.NgayDat = DateTime.Now;
            //dh.DaThanhToan = false;
            //dh.TinhTrangGiaoHang = false;


            return RedirectToAction("Xacnhandonhang", "Giohang");
        }

        public ActionResult Xacnhandonhang()
        {
            return View();
        }

    }
}
