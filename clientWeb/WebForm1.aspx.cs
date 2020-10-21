using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clientWeb
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        srvc.maService client = new srvc.maService();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = client.recherche(TextBox1.Text);
        }
    }
}