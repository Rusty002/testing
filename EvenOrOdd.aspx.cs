using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CureTravels
{
    public partial class EvenOrOdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static bool CheckIsEvenOrOdd(string inputValue)
        {
            int input = Convert.ToInt32(inputValue);
            return input % 2 == 0;
        }
    }
}