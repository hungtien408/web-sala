using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string page = Request.Url.AbsolutePath.Substring(Request.Url.AbsolutePath.LastIndexOf("/") + 1);
            string startScript = "<script type='text/javascript'>";
            string endScript = "')</script>";
            string activePage = "";
            string activePage1 = "";

            if (page.Contains("-pci-") || page.Contains("-pi-"))
                activePage = "products.aspx";
            else if (page.Contains("-oci-"))
                activePage = "online-shopping.aspx";
            else if (page.Contains("-tt-"))
                activePage = "news.aspx";
            else if (!page.EndsWith("default.aspx"))
                activePage = Path.GetFileName(page);

            if (!string.IsNullOrEmpty(activePage))
                runScript.InnerHtml = startScript + "changeActiveMenu('" + activePage + endScript;

            if (page.Contains("-pi-"))
                activePage1 = "-pci-" + Request.QueryString["pci"] + ".aspx";
            else if (page.Contains("-tt-"))
                activePage1 = "news.aspx";
            else if (!page.EndsWith("default.aspx"))
                activePage1 = Path.GetFileName(page);

            if (!string.IsNullOrEmpty(activePage1))
                runScript.InnerHtml += startScript + "changeSubActiveMenu('" + activePage1 + endScript;
        }

        lblUserOnline.Text = Application["visitors_online"].ToString();
        lblTatCa.Text = Application["TatCa"].ToString();
    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        if (Session["Cart"] != null)
        {
            var oShoppingCart = new ShoppingCart();
            var dt = oShoppingCart.Cart();
            if (dt.Rows.Count == 0)
            {
                lblSummary.Text = "0";
            }
            else
            {
                int quantity = 0;
                //double Total = 0;
                //for (int i = 0; i < dt.Rows.Count; i++)
                //{
                //    quantity += int.Parse(dt.Rows[i]["Quantity"].ToString());
                //}

                foreach (DataRow dr in dt.Rows)
                {
                    var Quantity = Convert.ToInt32(string.IsNullOrEmpty(dr["Quantity"].ToString()) ? "0" : dr["Quantity"]);
                    //var Price = Convert.ToDouble(string.IsNullOrEmpty(dr["Price"].ToString()) ? 0 : dr["Price"]);
                    //Total += Quantity * Price;
                    quantity += Quantity;
                }
                lblSummary.Text = quantity.ToString();
                //lblTotalPrice.Text = string.Format("{0:##,###.##}", Total).Replace('.', '*').Replace(',', '.').Replace('*', ',');
            }
        }
    }

    protected void btnVN_Click(object sender, ImageClickEventArgs e)
    {
        string path = Path.GetFileName(Request.Url.AbsolutePath);
        if (path.ToLower() == "default.aspx")
        {
            path = "";
        }
        Response.Redirect("~/" + path);
    }
    protected void btnEN_Click(object sender, ImageClickEventArgs e)
    {
        string path = Path.GetFileName(Request.Url.AbsolutePath);
        if (path.ToLower() == "default.aspx")
        {
            path = "";
        }
        Response.Redirect("~/en/" + path);
    }
}
