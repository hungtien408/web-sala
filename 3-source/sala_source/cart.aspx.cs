using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["GioHang"] == null)
        {
            Response.Redirect("~/");
        }

        if (!IsPostBack)
        {
            Page.Title = "Giỏ Hàng";
            var meta = new HtmlMeta() { Name = "description", Content = "Giỏ Hàng" };
            Header.Controls.Add(meta);

            ListView1.DataSource = ObjectDataSource1;
            ListView1.DataBind();
        }
    }

    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {

        var item = e.Item as ListViewDataItem;

        var cmd = e.CommandName;
        if (cmd == "Remove")
        {
            var Quantity = (item.FindControl("hdnQuantity") as HiddenField).Value;
            var ProductID = (item.FindControl("hdnProductID") as HiddenField).Value;

            var oShoppingCart = new ShoppingCart();
            oShoppingCart.DeleteItem(ProductID);
            ListView1.DataSource = ObjectDataSource1;
            ListView1.DataBind();
        }
    }
    protected void ListView1_DataBound(object sender, EventArgs e)
    {

        var dtCart = Session["Cart"] as DataTable;
        double Total = 0;
        if (dtCart != null)
        {
            if (lbSubTotal != null)
            {
                foreach (DataRow dr in dtCart.Rows)
                {
                    var Quantity = Convert.ToInt32(dr["Quantity"]);
                    var Price = Convert.ToDouble(string.IsNullOrEmpty(dr["ProductPrice"].ToString()) ? 0 : dr["ProductPrice"]);
                    Total += Quantity * Price;
                }

                Session["thanhtien"] = Total;
                Session["tongtien"] = Total;
                lbTotal.Text = lbSubTotal.Text = string.Format("{0:##,###.##}", Total).Replace('.', '*').Replace(',', '.').Replace('*', ',');
                hdnSubTotal.Value = Total.ToString();
            }
        }
    }
    protected void ListView1_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        //Size DropDownList
        if (e.Item.ItemType == ListViewItemType.DataItem)
        {
        }
    }
    protected void txtQuantity_TextChanged(object sender, EventArgs e)
    {

        var textbox = (TextBox)sender;
        var parent = textbox.NamingContainer;

        var oShoppingCart = new ShoppingCart();

        var Quantity = (parent.FindControl("txtQuantity") as TextBox).Text.Trim();
        var ProductID = (parent.FindControl("hdnProductID") as HiddenField).Value;
        int Quantity1 = Int32.Parse(Quantity);
        if (Quantity1 > 0 && Quantity1 < 12)
        {
            oShoppingCart.UpdateQuantity(ProductID, Quantity);

            ListView1.DataSource = oShoppingCart.Cart();
            ListView1.DataBind();
        }
        else
        {
            Quantity = "1";
            ScriptManager.RegisterClientScriptBlock((TextBox)sender, sender.GetType(), "runtime", "alert('Bạn nhập quá số lượng cho phép (1 - 12)')", true);
        }

    }
    protected void lkbUpdate_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {

            //if (ddlCity.SelectedValue != "0")
            //{
            var oShoppingCart = new ShoppingCart();
            if (Page.IsValid)
            {
                if (Session["Cart"] != null)
                {
                    var dtCart = Session["Cart"] as DataTable;
                    if (dtCart.Rows.Count != 0)
                    {
                        Session["OrderNumber"] = Guid.NewGuid().GetHashCode().ToString("X");

                        var lblSubTotal = lbSubTotal.Text.Trim();
                        //number of rows in the gridview
                        //Session["SubTotal"] = string.Format("{0:##,###.##}", lblSubTotal).Replace('.', '*').Replace(',', '.').Replace('*', ',');

                        int Quantity = 0;
                        double TotalPrice = 0;
                        foreach (DataRow dr in dtCart.Rows)
                        {
                            string ProductID = dr["ProductID"].ToString();
                            string ProductName = dr["ProductName"].ToString();
                            string MaSanPham = dr["ProductCode"].ToString();
                            Quantity = Convert.ToInt32(dr["Quantity"].ToString());
                            //var Price = Convert.ToInt32(dr["ProductPrice"].ToString());
                            var Price = Convert.ToDouble(dr["ProductPrice"].ToString());
                            TotalPrice += Quantity * Price;
                        }
                        Session["thanhtien"] = TotalPrice;
                        Session["Quantity"] = Quantity;
                        Session["tongtien"] = TotalPrice;
                    }
                }

                Session["ThongTin"] = "true";
                Response.Redirect("info-payment.aspx");
                //if (Session["IsLogin"] != null)
                //{
                //    string UserName = Page.User.Identity.Name;
                //    string[] roleUser = Roles.GetRolesForUser(UserName.ToString());
                //    for (int i = 0; i < roleUser.Length; i++)
                //    {
                //        if (roleUser[i] == "khachhang")
                //        {

                //            Response.Redirect("thong-tin-tai-khoan.aspx");
                //        }
                //        else
                //        {
                //            Response.Redirect("dang-ky-dang-nhap.aspx");
                //        }
                //    }
                //}
                //else
                //{
                //    Response.Redirect("dang-ky-dang-nhap.aspx");
                //}

            }

            //}
            //else
            //    ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", "alert('Vui lòng chọn Tỉnh/Thành!')", true);
        }
    }
}