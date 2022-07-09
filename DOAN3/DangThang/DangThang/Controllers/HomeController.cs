using DangThang.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DangThang.Controllers
{
    public class HomeController : Controller
    {
        private DecorPhongEntities1 db = new DecorPhongEntities1();

        // GET: Home
        public ActionResult Index()
        {
            return View();
        }
        public JsonResult AjaxGetHome()
        {
            var list = db.SanPham.Select(a => new
            {
                MaSP = a.MaSP,
                TenSP = a.TenSP,
                Anh = a.Anh,
                Gia = a.Gia,
                BaoHanh = a.BaoHanh,
                MoTa = a.MoTa,

            }).ToList();
            return Json(list, JsonRequestBehavior.AllowGet);
        }
        public ActionResult DanhSach(string MaLoaiSP)
        {
            ViewBag.MaLoaiSP = MaLoaiSP;
            return View();
        }
        public JsonResult GetDanhsach(string MaLoaiSP)
        {
            var list = db.LoaiSP.Select(a => new
            {
                MaLoaiCha = a.MaLoaiCha,
                TenLoai = a.TenLoai,
                MaLoaiSP = a.MaLoaiSP,
                MaMenu = a.MaMenu,
            }).ToList();
            return Json(list, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetSP()
        {
            var list = db.SanPham.Select(a => new
            {
                MaSP = a.MaSP,
                TenSP = a.TenSP,
                Anh = a.Anh,
                Gia = a.Gia,
                BaoHanh = a.BaoHanh,
                MoTa = a.MoTa,
            }).ToList();
            return Json(list, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetTinTuc()
        {
            var list = db.TinTuc.Select(a => new
            {
                Ma = a.MaTT,
                TieuDe = a.TieuDe,
                NgayDang = a.NgayDang,
                Anh = a.Anh,
                MaLoai = a.MaLoaiTT,
                NoiDung = a.NoiDung,
            }).ToList();
            return Json(list, JsonRequestBehavior.AllowGet);
        }
    }
}