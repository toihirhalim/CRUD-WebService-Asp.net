using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace showingData
{
    public partial class StudentUserControl : System.Web.UI.UserControl
    {
        public string test { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(test != null)
            Label2.Text = test;
        }

        protected void txtSave_Click(object sender, EventArgs e)
        {
            Label2.Text = "hi " + TextBox2.Text + " " + TextBox1.Text + " how ar you ?";
        }
    }
}