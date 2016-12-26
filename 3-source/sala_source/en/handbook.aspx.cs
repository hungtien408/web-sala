using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class handbook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Title = "Cẩm Nang Thực Dưỡng";
            var meta = new HtmlMeta() { Name = "description", Content = "Cẩm Nang Thực Dưỡng" };
            Header.Controls.Add(meta);
        }
    }
}