using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DangThang.Models;

namespace DangThang.Controllers
{
    public class AdminSPController : Controller
    {
        private DecorPhongEntities1 db = new DecorPhongEntities1();
        // GET: AdminSP
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Product()
        {
            return View();
        }
        [HttpGet]
        public JsonResult GetSP()
        {
            var list = db.SanPham.Select(a => new
            {
                MaSP = a.MaSP,
                TenSP = a.TenSP,
                Anh = a.Anh,
                Gia = a.Gia
            }).ToList();
            return Json(list, JsonRequestBehavior.AllowGet);
        }
        [HttpGet]


        public ActionResult GetSPID(int id)
        {
            return Json(new { data = db.SanPham.Select(x => new { x.MaSP, x.TenSP, x.Anh, x.Gia }).FirstOrDefault(y => y.MaSP == id) }, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]

        public ActionResult AddSanPham(SanPham sp)
        {
            int data = 0;
            try
            {
                db.SanPham.Add(sp);
                db.SaveChanges();
                data = 1;
            }
            catch (Exception e)
            {

                data = 0;
            }
            return Json(new { data = data }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult DeleteSP(SanPham sp)
        {
            var ls = db.SanPham.FirstOrDefault(x => x.MaSP == sp.MaSP);
            db.SanPham.Remove(ls);
            db.SaveChanges();
            return Json(new { data = "Ok", }, JsonRequestBehavior.AllowGet);
        }



        public JsonResult Upload()
        {
            try
            {
                HttpPostedFileBase file = Request.Files[0];
                if (file != null)
                {
                    string path = Server.MapPath("~") + "\\assets\\img\\product\\";
                    string fileName = file.FileName;
                    if (!Directory.Exists(path))
                    {
                        Directory.CreateDirectory(path);
                    }
                    string fullPath = path + "\\" + fileName;
                    file.SaveAs(fullPath);
                    return Json("/assets/img/product/" + fileName, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(null, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception ex)
            {
                return Json(null, JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult UpdateSanPham(SanPham sp)
        {
            try
            {
                var a = db.SanPham.SingleOrDefault(x => x.MaSP == sp.MaSP);
                a.MaSP = sp.MaSP;
                a.TenSP = sp.TenSP;
                a.Anh = sp.Anh;
                a.Gia = sp.Gia;
                db.SaveChanges();
                return Json(1, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(null, JsonRequestBehavior.AllowGet);
            }
        }

    }


}