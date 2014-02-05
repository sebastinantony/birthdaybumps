using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;

namespace birthdaybumps
{
    public class FacebookToken
    {
        public string Access_token;
        public string Token_type;
        public int Expires_in;
        public string Refresh_token;

        //Empty Constructor
        public FacebookToken() { }
        public FacebookToken(string access_token, string expires)
        {
            Access_token = access_token;
            Expires_in = int.Parse(expires);
        }

        public string Serialize()
        {
            return JsonConvert.SerializeObject(this);
        }

        public static FacebookToken FromJson(string json)
        {
            var googletoken = JsonConvert.DeserializeObject<FacebookToken>(json);

            return googletoken;
        }
    }

    public class Hometown
    {
        public string id { get; set; }
        public string name { get; set; }
    }

    public class Datum
    {
        public string birthday { get; set; }
        public string gender { get; set; }
        public string name { get; set; }
        public Hometown hometown { get; set; }
        public string relationship_status { get; set; }
        public string id { get; set; }
        public string about { get; set; }
    }

    public class Paging
    {
        public string next { get; set; }
    }

    public class Friends
    {
        public List<Datum> data { get; set; }
        public Paging paging { get; set; }
    }

    public class FacebookResult
    {
        public string id { get; set; }
        public string name { get; set; }
        public Friends friends { get; set; }

        public static FacebookResult FromJson(string json)
        {
            var facebookResult = JsonConvert.DeserializeObject<FacebookResult>(json);

            return facebookResult;
        }
    }
}