using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ElectronicManager.Models;
namespace ElectronicManager.Controllers
{
    public class UserController : Controller
    {
        //
        // GET: /User/

        dbElecDataContext db = new dbElecDataContext();

        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult SignIn()
        {
            return View();
        }

        [HttpPost]
        public ActionResult SingIn(FormCollection col, KhachHang kh)
        {
            var ten = col["ten"];
            var email = col["email"];
            var tendn = col["user"];
            var matkhau = col["matkhau"];

            kh.HoTen = ten;
            kh.Email = email;
            kh.TaiKhoan = tendn;
            kh.MatKhau = matkhau;

            db.KhachHangs.InsertOnSubmit(kh);
            db.SubmitChanges();

            return this.SignIn();
        }

        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(FormCollection col) 
        {

            return View();
        }
    }
}
