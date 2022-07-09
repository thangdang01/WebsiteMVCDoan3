using DangThang.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DangThang.Controllers
{
    public class ShoppingController : Controller
    {
        private DecorPhongEntities1 db = new DecorPhongEntities1();
        // GET: Shopping
        public ActionResult Cart(string MaSP)
        {
            db.Configuration.ProxyCreationEnabled = false;
            ViewBag.MaSP = MaSP;
            return View();
        }
        public ActionResult pay()
        {
            db.Configuration.ProxyCreationEnabled = false;
            return View();
        }
        public JsonResult CreateHoaDon(HoaDon model)
        {
            try
            {
                model.MaHoaDon = Guid.NewGuid().ToString();
                if (model.ChiTietHoaDon.Count > 0)
                {
                    foreach (var item in model.ChiTietHoaDon)
                    {
                        item.MaHoaDon = model.MaHoaDon;
                    }
                }
                db.HoaDon.Add(model);
                db.SaveChanges();
                return Json(new { ok = 1 }, JsonRequestBehavior.AllowGet);
            }
            catch
            {
                return Json(new { ok = 0 }, JsonRequestBehavior.AllowGet);
            }

        }
    }
}