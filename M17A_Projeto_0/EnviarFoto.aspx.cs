using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M17A_Projeto_0
{
    public partial class EnviarFoto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt_Click(object sender, EventArgs e)
        {
            //verificar se foi enviado ficheiro
            if (FileUpload1.HasFile)
            {
                //validar o tipo de ficheiro
                if (FileUpload1.PostedFile.ContentType == "image/jpeg")
                {
                    //validar o tamanho
                    if(FileUpload1.PostedFile.ContentLength>0 &&
                       FileUpload1.PostedFile.ContentLength < 500000)
                    {
                        string ficheiro = Server.MapPath(@"~\Imagens");
                        ficheiro += @"\" + FileUpload1.FileName;
                        FileUpload1.SaveAs(ficheiro);
                    }
                }
            }
        }
    }
}