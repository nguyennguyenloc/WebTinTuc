﻿using System.Web.Mvc;
using WebTin.Service;


namespace WebTin.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        // GET: Admin/Login
        public ActionResult Index()
        {
            if (Session["UserId"] != null)
            {
                return Redirect("/Home");
            }
            return View();
        }

        public ActionResult LoginByCredential(UserLoginModel model)
        {
            UserService userService = new UserService();
            if (ModelState.IsValid)
            {
                var login = userService.LoginByCredential(model.Username, model.Password);
                if (login == null)
                {
                    ModelState.AddModelError("LoginError", "Đăng nhập không thành công");
                }
                else
                {
                    Session["UserId"] = login.Id;
                    Session["Username"] = login.Username;
                    Session["Fullname"] = login.LastName + " " + login.FirstName;
                    return Redirect("/Admin/Home");
                }
            }
            else
            {
                ModelState.AddModelError("LoginError", "Đăng nhập không thành công");
            }
            return View("Index");
        }
        public ActionResult Logout()
        {
            Session.Clear();
            return Redirect("/Admin/Login");
        }
    }

}