using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
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

    /*public class Hometown
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
    } */

    public static class FacebookHeper
    {
        public static DataTable ToDataTable<T>(this List<T> items)
        {
            var tb = new DataTable(typeof(T).Name);

            PropertyInfo[] props = typeof(T).GetProperties(BindingFlags.Public | BindingFlags.Instance);

            foreach (var prop in props)
            {
                tb.Columns.Add(prop.Name, prop.PropertyType);
            }

            foreach (var item in items)
            {
                var values = new object[props.Length];
                for (var i = 0; i < props.Length; i++)
                {
                    values[i] = props[i].GetValue(item, null);
                }

                tb.Rows.Add(values);
            }

            return tb;
        }
    }

    public class Data
    {
        public string url { get; set; }
        public bool is_silhouette { get; set; }
    }

    public class Picture
    {
        public Data data { get; set; }
    }

    public class Datum
    {
        public string name { get; set; }
        public string gender { get; set; }
        public string birthday { get; set; }
        public string relationship_status { get; set; }
        public string id { get; set; }
        public Picture picture { get; set; }
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

    public class Data2
    {
        public string url { get; set; }
        public bool is_silhouette { get; set; }
    }

    public class Picture2
    {
        public Data2 data { get; set; }
    }

    public class Datum2
    {
        public string name { get; set; }
        public string gender { get; set; }
        public string id { get; set; }
        public Picture2 picture { get; set; }
        public string birthday { get; set; }
        public string relationship_status { get; set; }
    }

    public class Paging2
    {
        public string next { get; set; }
    }

    public class Family
    {
        public List<Datum2> data { get; set; }
        public Paging2 paging { get; set; }
    }

    public class Data3
    {
        public string url { get; set; }
        public bool is_silhouette { get; set; }
    }

    public class Picture3
    {
        public Data3 data { get; set; }
    }

    public class FacebookResult
    {
        public string name { get; set; }
        public string gender { get; set; }
        public string email { get; set; }
        public string birthday { get; set; }
        public string id { get; set; }
        public Friends friends { get; set; }
        public Family family { get; set; }
        public Picture3 picture { get; set; }

        public static FacebookResult FromJson(string json)
        {
            var facebookResult = JsonConvert.DeserializeObject<FacebookResult>(json);

            return facebookResult;
        }
    }

   
}