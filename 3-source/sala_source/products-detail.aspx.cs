using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class products_detail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strTitle, strDescription, strMetaTitle, strMetaDescription;
            if (!string.IsNullOrEmpty(Request.QueryString["pi"]))
            {
                var oProduct = new TLLib.Product();
                var dv = oProduct.ProductSelectOne(Request.QueryString["pi"]).DefaultView;

                if (dv != null && dv.Count <= 0) return;
                var row = dv[0];

                strTitle = Server.HtmlDecode(row["ProductName"].ToString());
                strDescription = Server.HtmlDecode(row["Description"].ToString());
                strMetaTitle = Server.HtmlDecode(row["MetaTittle"].ToString());
                strMetaDescription = Server.HtmlDecode(row["MetaDescription"].ToString());

                //hdnSanPham.Value = progressTitle(dv[0]["ProductCategoryName"].ToString()) + "-pci-" + dv[0]["ProductCategoryID"].ToString() + ".aspx";
            }
            else
            {
                strTitle = strMetaTitle = "Sản Phẩm";
                strDescription = "";
                strMetaDescription = "";
            }
            Page.Title = !string.IsNullOrEmpty(strMetaTitle) ? strMetaTitle : strTitle;
            var meta = new HtmlMeta() { Name = "description", Content = !string.IsNullOrEmpty(strMetaDescription) ? strMetaDescription : strDescription };
            Header.Controls.Add(meta);
        }
    }

    protected string progressTitle(object input)
    {
        return TLLib.Common.ConvertTitle(input.ToString());
    }

    protected void lstProductDetails_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        var item = e.Item as ListViewDataItem;
        var cmd = e.CommandName;
        string ProductID = (item.FindControl("hdnProductID") as HiddenField).Value;
        string ProductName = (item.FindControl("hdnProductName") as HiddenField).Value;
        string ImageName = (item.FindControl("hdnImageName") as HiddenField).Value;
        string ProductCode = (item.FindControl("hdnProductCode") as HiddenField).Value; ;
        string Quantity = (item.FindControl("txtQuantity") as TextBox).Text;
        if (Quantity.Equals("0"))
            Quantity = "1";
        double ProductPrice = Convert.ToDouble((item.FindControl("hdnPrice") as HiddenField).Value);
        double ProductSavePrice = 0;
        if (cmd == "AddToCart")
        {

            //var dv = (DataView)odsProductDetails.Select();
            //if (dv.Count > 0)
            //{
            //    ProductID = dv[0]["ProductID"].ToString();
            //    ImageName = dv[0]["ImageName"].ToString();
            //    ProductName = dv[0]["ProductName"].ToString();
            //    ProductCode = dv[0]["Tag"].ToString();
            //    if (dv[0]["Price"] != DBNull.Value)
            //    {
            //        ProductPrice = Convert.ToDouble(dv[0]["Price"]);
            //    }
            //    //if (dv[0]["SavePrice"] != DBNull.Value)
            //    //{
            //    //    ProductSavePrice = Convert.ToDouble(dv[0]["SavePrice"]);
            //    //}
            //}
            Session["GioHang"] = "true";
            new ShoppingCart().CreateCart(ProductID, ImageName, ProductName, "", ProductCode, "", ProductPrice, ProductSavePrice, "", Quantity);
            Response.Redirect("cart.aspx");
        }
    }
}