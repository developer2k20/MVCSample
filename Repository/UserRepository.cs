using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HRMS.Repository
{
    public class UserRepository
    {
        HRMSEntities db = new HRMSEntities();

        public bool CheckUserLogin(string UserName, string Password)
        {
            bool ValidUser = false;

            var query = db.Users.Where(u => u.UserName == UserName && u.Password == Password);
            int count = query.Count();

            if (count > 0)
                ValidUser = true;

            return ValidUser;
        }

        public bool CheckDuplicateUserName(string UserName)
        {
            return db.Users.Any(u => u.UserName == UserName);
        }
    }
}