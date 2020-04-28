using Cuvid_19.Controller;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cuvid_19
{
    public partial class index : System.Web.UI.Page
    {
        HomeController homeController = new HomeController();
        public string data = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                data= JsonConvertertostring();
            }
        }

        private string JsonConvertertostring()
        {
            string json = JsonConvert.SerializeObject(homeController.LoadData());
            return json;
        }
    }
}