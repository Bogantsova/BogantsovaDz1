using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Homework1.Entites;

namespace Homework1
{
    public class UserSingleton

    {
        private static Users users;
        public static Users Instance()
        {
            if (users == null)
                users = new Users();
            return users;
        }
    }
}
