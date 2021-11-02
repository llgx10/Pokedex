using System;
using System.Collections.Generic;
using System.Text;

namespace Pokedex
{
    public class Cons
    {
        public static int box_width = 90;
        public static int box_height = 90;
        public static string host = "localhost";
        public static int port = 3306;
        public static string database = "Pokedex";
        public static string username = "root";
        public static string password = "";
        public static string connString = "Server=" + host + ";Database=" + database + ";port=" + port + ";User Id=" + username + ";password=" + password;
    }
}
