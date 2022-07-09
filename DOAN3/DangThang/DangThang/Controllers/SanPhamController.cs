using DangThang.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DangThang.Controllers
{
    public class SanPhamController : Controller
    {
        private DecorPhongEntities1 db = new DecorPhongEntities1();

        // GET: SanPham
        public ActionResult CuaHang()
        {
            return View();
        }
        public ActionResult ChiTiet(int MaSP)
        {
            ViewBag.MaSP = MaSP;
            return View();
        }
        public ActionResult Trang2()
        {
            return View();
        }
        public ActionResult Trang3()
        {
            return View();
        }
        public JsonResult GetChiTiet(int MaSP)
        {
            var list = db.SanPham.Select(a => new
            {
                MaSP = a.MaSP,
                TenSP = a.TenSP,
                Anh = a.Anh,
                Gia = a.Gia,
                BaoHanh = a.BaoHanh,
                MoTa = a.MoTa,
            }).SingleOrDefault(x=>x.MaSP==MaSP);
            return Json(list, JsonRequestBehavior.AllowGet);
        }
    }
}