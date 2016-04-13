using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HRMS.Repository;
using HRMS.Models;
using System.Text;
using System.Net;
using System.Net.Mail;
using System.IO;

namespace HRMS.Controllers
{
    public class AccountController : Controller
    {
        //
        // GET: /Account/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Login()
        {
            ModelState.Clear();

            string UserName = Request.Form["UserName"];
            string Password = Request.Form["Password"];

            ViewBag.Title = "HRMS - User Login";
            string name = ViewBag.ErrorMessage;
            string name1 = ViewBag.Message;

            if (UserName != null && UserName.Trim() != "" && Password != null && Password != "")
            {
                UserRepository ur = new UserRepository();

                bool ValidUser = ur.CheckUserLogin(UserName, Password);

                if (ValidUser)
                    return RedirectToAction("GetAllEmpDetails", "Index");

                TempData["Message"] = "";
                TempData["ErrorMessage"] = "Invalid user name or password!";
            }
            return View();
        }

        [HttpGet]
        public ActionResult AddUser()
        {
            ViewBag.Title = "HRMS - New User";
            return View();
        }

        [HttpPost]
        public ActionResult AddUser(UserModel usr)
        {
            ModelState.Clear();

            string UserName = Request.Form["UserName"];
            string Email = Request.Form["Email"];

            ViewBag.Title = "HRMS - Add User";

            if (UserName != null && UserName.Trim() != "")
            {
                SmtpClient sc = new SmtpClient();
                sc.Host = "127.0.0.1";
                StringBuilder sb = new StringBuilder();

                var ss = RenderRazorViewToString("UserMailTemplate", usr);

                sb.Append("<h3>Login Credentials</h3>");
                sb.Append("<hr />");
                sb.Append("<b>User Name:</b> " + UserName);
                sb.Append("<b>Password:</b> ChangeIt123");

                var mail = new MailMessage("developer.2k20@gmail.com", Email)
                {
                    Subject = "Login Credentials",
                    Body = sb.ToString()
                };

                //sc.Send(mail);

                TempData["Message"] = "User added successfully." + Environment.NewLine + "Password has been send to user's registered email id.";
                TempData["ErrorMessage"] = "";

                return RedirectToAction("Login");
            }

            return View();
        }

        public ActionResult CheckUserName(string UserName)
        {
            UserRepository usr = new UserRepository();

            bool RetValue = usr.CheckDuplicateUserName(UserName);

            return Json(!RetValue, JsonRequestBehavior.AllowGet);
        }


        private string RenderRazorViewToString(string viewName, object model)
        {
            ViewData.Model = model;
            using (var sw = new StringWriter())
            {
                var viewResult = ViewEngines.Engines.FindPartialView(ControllerContext, viewName);
                var viewContext = new ViewContext(ControllerContext, viewResult.View, ViewData, TempData, sw);
                viewResult.View.Render(viewContext, sw);
                viewResult.ViewEngine.ReleaseView(ControllerContext, viewResult.View);
                return sw.GetStringBuilder().ToString();
            }
        }
    }
}
