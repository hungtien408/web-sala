using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class pay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Title = "Thanh Toán";
            var meta = new HtmlMeta() { Name = "description", Content = "Thanh Toán" };
            Header.Controls.Add(meta);
        }
    }
}