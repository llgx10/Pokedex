
namespace Pokedex
{
    partial class Pokedex
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Pokedex));
            this.mainpanel = new System.Windows.Forms.Panel();
            this.photo = new System.Windows.Forms.Panel();
            this.name = new System.Windows.Forms.TextBox();
            this.ID = new System.Windows.Forms.TextBox();
            this.Des = new System.Windows.Forms.TextBox();
            this.info_panel = new System.Windows.Forms.Panel();
            this.Type2 = new System.Windows.Forms.Panel();
            this.Type1 = new System.Windows.Forms.Panel();
            this.info_panel.SuspendLayout();
            this.SuspendLayout();
            // 
            // mainpanel
            // 
            this.mainpanel.AutoScroll = true;
            this.mainpanel.Location = new System.Drawing.Point(12, 12);
            this.mainpanel.Name = "mainpanel";
            this.mainpanel.Size = new System.Drawing.Size(360, 444);
            this.mainpanel.TabIndex = 0;
            // 
            // photo
            // 
            this.photo.BackColor = System.Drawing.Color.Transparent;
            this.photo.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("photo.BackgroundImage")));
            this.photo.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.photo.Location = new System.Drawing.Point(41, 27);
            this.photo.Name = "photo";
            this.photo.Size = new System.Drawing.Size(186, 176);
            this.photo.TabIndex = 1;
            // 
            // name
            // 
            this.name.BackColor = System.Drawing.SystemColors.Menu;
            this.name.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.name.Font = new System.Drawing.Font("SVN-Avo", 27.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.name.Location = new System.Drawing.Point(233, 151);
            this.name.Name = "name";
            this.name.PlaceholderText = "Name of Pokemon";
            this.name.Size = new System.Drawing.Size(350, 52);
            this.name.TabIndex = 2;
            this.name.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // ID
            // 
            this.ID.BackColor = System.Drawing.SystemColors.Menu;
            this.ID.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.ID.Font = new System.Drawing.Font("SVN-Avo", 68.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.ID.Location = new System.Drawing.Point(326, 36);
            this.ID.Name = "ID";
            this.ID.PlaceholderText = "#ID";
            this.ID.Size = new System.Drawing.Size(170, 128);
            this.ID.TabIndex = 3;
            this.ID.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // Des
            // 
            this.Des.BackColor = System.Drawing.SystemColors.Menu;
            this.Des.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.Des.Font = new System.Drawing.Font("SVN-Avo", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.Des.Location = new System.Drawing.Point(41, 288);
            this.Des.Multiline = true;
            this.Des.Name = "Des";
            this.Des.PlaceholderText = "this pokemon ...";
            this.Des.Size = new System.Drawing.Size(539, 183);
            this.Des.TabIndex = 4;
            // 
            // info_panel
            // 
            this.info_panel.Controls.Add(this.Type2);
            this.info_panel.Controls.Add(this.Type1);
            this.info_panel.Controls.Add(this.photo);
            this.info_panel.Controls.Add(this.Des);
            this.info_panel.Controls.Add(this.name);
            this.info_panel.Controls.Add(this.ID);
            this.info_panel.Location = new System.Drawing.Point(378, 12);
            this.info_panel.Name = "info_panel";
            this.info_panel.Size = new System.Drawing.Size(583, 444);
            this.info_panel.TabIndex = 5;
            // 
            // Type2
            // 
            this.Type2.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("Type2.BackgroundImage")));
            this.Type2.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.Type2.Location = new System.Drawing.Point(138, 209);
            this.Type2.Name = "Type2";
            this.Type2.Size = new System.Drawing.Size(60, 60);
            this.Type2.TabIndex = 6;
            // 
            // Type1
            // 
            this.Type1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("Type1.BackgroundImage")));
            this.Type1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.Type1.Location = new System.Drawing.Point(60, 209);
            this.Type1.Name = "Type1";
            this.Type1.Size = new System.Drawing.Size(60, 60);
            this.Type1.TabIndex = 5;
            // 
            // Pokedex
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.ClientSize = new System.Drawing.Size(963, 468);
            this.Controls.Add(this.info_panel);
            this.Controls.Add(this.mainpanel);
            this.Cursor = System.Windows.Forms.Cursors.Hand;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Pokedex";
            this.Text = "Pokedex";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.info_panel.ResumeLayout(false);
            this.info_panel.PerformLayout();
            this.ResumeLayout(false);

        }


        #endregion

        private System.Windows.Forms.Panel mainpanel;
        private System.Windows.Forms.Panel photo;
        private System.Windows.Forms.TextBox name;
        private System.Windows.Forms.TextBox ID;
        private System.Windows.Forms.TextBox Des;
        private System.Windows.Forms.Panel info_panel;
        private System.Windows.Forms.Panel Type2;
        private System.Windows.Forms.Panel Type1;
    }
}

