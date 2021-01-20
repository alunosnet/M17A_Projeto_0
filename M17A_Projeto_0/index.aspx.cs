using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M17A_Projeto_0
{
    public partial class index : System.Web.UI.Page
    {
        //sempre executado
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack==false)
                TextBox1.Text = "Insira o seu nome";

            //verificar se o cookie existe
            HttpCookie cookie = Request.Cookies["AvisoCookies"] as HttpCookie;
            if (cookie != null)
                avisoCookies.Visible = false;
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "olá mundo " + TextBox1.Text;
            divOlaMundo.Visible = false;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label2.Text = DropDownList1.SelectedValue;
        }

        protected void btCookies_Click(object sender, EventArgs e)
        {
            //aceitou cookies
            HttpCookie cookie = new HttpCookie("AvisoCookies");
            cookie.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(cookie);
            avisoCookies.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"~\Alunos\adicionar.aspx");
        }
    }
}