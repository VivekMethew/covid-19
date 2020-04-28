using Cuvid_19.Modal;
using Newtonsoft.Json.Linq;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Cuvid_19.Controller
{
    public class HomeController
    {
        //private List<CoronaModal> coronaModal = null;
        //public string data = "";

        public string LoadData()
        {
            

            //List<string> list = new List<string>();
            var client = new RestClient("https://corona.lmao.ninja/v2/all");
            client.Timeout = -1;
            var request = new RestRequest(Method.GET);
            request.AddHeader("Cookie", "__cfduid=df3d0d5fad45f5a6d2b369a7e1ce141051587846599");
            IRestResponse response = client.Execute(request);
            Console.WriteLine(response.Content);
            JObject obj = JObject.Parse(response.Content);
            string bm = obj["cases"].ToString();
            return Convert.ToString(response.Content);
        }
    }
}