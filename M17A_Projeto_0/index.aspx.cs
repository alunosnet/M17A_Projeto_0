﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M17A_Projeto_0
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack==false)
                TextBox1.Text = "Insira o seu nome";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "olá mundo " + TextBox1.Text;
        }
    }
}