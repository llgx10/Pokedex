using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Common;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace Pokedex
{
    public partial class Pokedex : Form
    {


        public Pokedex()
        {
           

            InitializeComponent();
            Grid();
        }

        private void Form1_Load(object sender, EventArgs e)
        {


            MessageBox.Show("PokedeX Loaded");
        }
        void Grid()
        {
         
        Button basebutton = new Button() { Width = 0, Location = new Point(0, 0) };
            int counter = 1;
            for (int i=0; i<33;++i)
            {
                for (int j=0; j<=3;++j)
                {
                    Button pkm = new Button()
                    {
                        Width = Cons.box_width,
                        Height = Cons.box_height,
                        Location = new Point(basebutton.Location.X + basebutton.Width, basebutton.Location.Y),
                        BackgroundImageLayout= ImageLayout.Zoom
                        
                    };
                    
                    pkm.Tag =counter;
                    pkm.Click += Pkm_Click;
                    ++counter;
                    mainpanel.Controls.Add(pkm);
                    basebutton = pkm;
                    pkm.BackgroundImage = Image.FromFile(Application.StartupPath + "\\Resource\\First 100 pokemon\\" +(counter - 1) + ".png");
                }
                counter--;
                basebutton.Location = new Point(0, basebutton.Location.Y + Cons.box_height);
                basebutton.Width = 0;
                basebutton.Height = 0;
            }    
        
        }

        private void Pkm_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            int id = (int)btn.Tag;
            MySqlConnection conn = new MySqlConnection(Cons.connString);
            try
            {
                conn.Open();
            }
            catch (MySqlException exc)
            {
                switch (exc.Number)
                {
                    case 0:
                        MessageBox.Show("Cannot connect to server");
                        break;
                    case 1045:
                        MessageBox.Show("Wrong username or password");
                        break;
                }

            }
            string querry = "SELECT * FROM pokemon WHERE Id="+id;
            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = querry;
            using (DbDataReader reader = cmd.ExecuteReader())
            {
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        int indexid = reader.GetOrdinal("Id");
                        string poke_id = reader.GetString(indexid);
                        int indexname = reader.GetOrdinal("name");
                        string poke_name = reader.GetString(indexname);
                        int indexdes = reader.GetOrdinal("Description");
                        string poke_des = reader.GetString(indexdes);
                        int indeximage = reader.GetOrdinal("Image");
                        string poke_Image = reader.GetString(indeximage);
                        int indexType1 = reader.GetOrdinal("Type_1");
                        string poke_Type1 = reader.GetString(indexType1);
                        Type1.BackgroundImage = Image.FromFile(Application.StartupPath + "\\Resource\\" + poke_Type1 + ".png");
                        int indexType2 = reader.GetOrdinal("Type_2");
                        string poke_Type2 = reader.GetString(indexType2);
                        if (poke_Type2 != "")
                        {
                            Type2.BackgroundImage = Image.FromFile(Application.StartupPath + "\\Resource\\" + poke_Type2 + ".png");

                        }
                        else
                        {
                            Type2.BackgroundImage = null;
                        }
                        int indexRegion = reader.GetOrdinal("Region");
                        string poke_Region = reader.GetString(indexRegion);
                        System.Net.WebRequest request =  System.Net.WebRequest.Create(poke_Image);
                        System.Net.WebResponse response = request.GetResponse();
                        System.IO.Stream responseStream =response.GetResponseStream();
                        Bitmap bitmap2 = new Bitmap(responseStream);
                        photo.BackgroundImage = bitmap2;
                        ID.Text ="#"+poke_id;
                        name.Text = poke_name;
                        Des.Text = poke_des;
                    }
                }
            }

            
          
        }

        
    }
}
