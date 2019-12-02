using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ElectronicManager.Models;

namespace ElectronicManager.Models
{
    public class GioHang
    {
        public int iMaSP { set; get; }
        public string sTenSP { set; get; }
        public string sAnhBia { set; get; }
        public double dDonGia { set; get; }
        public int iSoLuong { set; get; }

        public Double dThanhTien {
            get { return iSoLuong * dDonGia; }
        }

        dbElecDataContext data = new dbElecDataContext();

        public GioHang(int MaSP)
        {
            iMaSP = MaSP;
            SanPham sp = data.SanPhams.Single(n => n.MaSP == iMaSP);
            sTenSP = sp.TenSP;
            sAnhBia = sp.AnhBia;
            dDonGia = double.Parse(sp.GiaBan.ToString());
            iSoLuong = 1;
        }



    }
}