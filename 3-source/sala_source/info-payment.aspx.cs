using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TLLib;

public partial class info_payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ThongTin"] == null)
        {
            Response.Redirect("~/");
        }
        if (!IsPostBack)
        {
            Page.Title = "Giỏ Hàng";
            var meta = new HtmlMeta() { Name = "description", Content = "Giỏ Hàng" };
            Header.Controls.Add(meta);
        }
    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        var dtCart = Session["Cart"] as DataTable;
        if (dtCart != null)
        {
            double TotalPrice = 0;
            double SumTotalPrice = 0;
            if (lblTotalPrice != null)
            {
                foreach (DataRow dr in dtCart.Rows)
                {
                    var Quantity = Convert.ToInt32(string.IsNullOrEmpty(dr["Quantity"].ToString()) ? 0 : dr["Quantity"]);
                    var Price = Convert.ToDouble(string.IsNullOrEmpty(dr["ProductPrice"].ToString()) ? 0 : dr["ProductPrice"]);
                    TotalPrice += Quantity * Price;
                }
                //hdnTotalPrice.Value = TotalPrice.ToString();
                hdnSumTotalPrice.Value = SumTotalPrice.ToString();
                lblTotalPrice.Text = string.IsNullOrEmpty(TotalPrice.ToString()) ? "0 đ" : (string.Format("{0:##,###.##}", TotalPrice).Replace('.', '*').Replace(',', '.').Replace('*', ','));
                lblSumTotalPrice.Text = string.IsNullOrEmpty(SumTotalPrice.ToString()) ? "0 đ" : (string.Format("{0:##,###.##}", SumTotalPrice).Replace('.', '*').Replace(',', '.').Replace('*', ','));
            }
        }
        //if (Session["Cart"] != null)
        //{
        //    var oShoppingCart = new ShoppingCart();
        //    var dt = oShoppingCart.Cart();
        //    if (dt.Rows.Count == 0)
        //    {
        //        lblCountProduct.Text = "0";
        //    }
        //    else
        //    {
        //        int quantity = 0;
        //        foreach (DataRow dr in dt.Rows)
        //        {
        //            var Quantity = Convert.ToInt32(string.IsNullOrEmpty(dr["Quantity"].ToString()) ? "0" : dr["Quantity"]);
        //            //var Price = Convert.ToDouble(string.IsNullOrEmpty(dr["ProductPrice"].ToString()) ? 0 : dr["ProductPrice"]);
        //            //Total += Quantity * Price;
        //            quantity += Quantity;
        //        }
        //        lblCountProduct.Text = quantity.ToString();
        //        //lblTotalPrice.Text = string.Format("{0:##,###.##}", Total).Replace('.', '*').Replace(',', '.').Replace('*', ',');
        //    }
        //}
    }


    protected void ddlCity_DataBound(object sender, EventArgs e)
    {
        var cbo = (DropDownList)sender;
        cbo.Items.Insert(0, new ListItem("-Chọn tỉnh thành-", "0"));
    }
    protected void btnOrder_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            if (chkAgee.Checked)
            {
                var dtCart = Session["Cart"] as DataTable;
                if (dtCart != null)
                {
                    Session["HoanThanh"] = "true";
                    string CreateBy = "admin";
                    string OrderNumber = DateTime.Now.ToString("ddMMyy") + Guid.NewGuid().GetHashCode().ToString("X").Substring(0, 4);
                    Session["OrderNumber"] = OrderNumber;
                    string Email = "";
                    string FirstName = "";
                    string Address = "";
                    string PhoneNumber = "";
                    string TotalPrice = "0";
                    string PaymentMethods = "";
                    string OrderQuantity = "0";
                    string OrderStatusID = "";

                    Email = txtEmail1.Text.Trim().ToString();
                    FirstName = txtFullName1.Text.Trim().ToString();
                    Address = txtAddress1.Text.Trim().ToString();
                    // City = txtTinh.Text.Trim().ToString();
                    PhoneNumber = txtPhone1.Text.Trim().ToString();

                    TotalPrice = Session["tongtien"].ToString();
                    OrderQuantity = Session["Quantity"].ToString();
                    OrderStatusID = "1";
                    PaymentMethods = "Thanh Toán Trực Tiếp";

                    string Price = "0";
                    // them don hang
                    var oOrders = new Orders();
                    oOrders.OrdersInsert(
                        OrderNumber,
                        CreateBy,
                        OrderStatusID,
                        "1",
                        PaymentMethods,
                        "",
                        "",
                        txtMessage1.Text,
                        "",
                        "",
                        "",
                        Address,
                        "",
                        DateTime.Now.ToString("MM/dd/yyyy"),
                        FirstName,
                        Address,
                        PhoneNumber,
                        "",
                        Email
                        );

                    // don hang chi tiet
                    var oOrderDetail = new OrderDetail();
                    foreach (DataRow dr in dtCart.Rows)
                    {
                        string ProductID = dr["ProductID"].ToString();
                        var Quantity = Convert.ToInt32(dr["Quantity"]);
                        if (dr["ProductPrice"] != null)
                        {
                            Price = (Convert.ToInt32(dr["Quantity"]) * (Convert.ToDouble(string.IsNullOrEmpty(dr["ProductPrice"].ToString()) ? 0 : dr["ProductPrice"]))).ToString();
                        }
                        if (Session["UserName"] != null)
                        {
                            CreateBy = Session["UserName"].ToString();
                        }

                        oOrderDetail.OrderDetailInsert(
                           OrderNumber,
                           ProductID,
                           Quantity.ToString(),
                           Price,
                           CreateBy,
                           "",
                           ""
                        );
                    }

                    // hinh thuc thanh toan
                    if (rbtMoney.Checked == true)
                    {
                        string FullName = FirstName;
                        Session["FullName"] = FullName;
                        Session["Address"] = Address;
                        Session["PhoneNumber"] = PhoneNumber;
                        PaymentMethods = "Thanh Toán Trực Tiếp";

                        // noi dung mail xac nhan
                        string Body = "<div style='width: 100%; font-size: 11px; font-family: Arial;'>";
                        Body += "<h3 style='color: rgb(204,102,0); font-size: 22px; border-bottom-color: gray; border-bottom-width: 1px;border-bottom-style: dashed; margin-bottom: 20px; font-family: Times New Roman;'>Cảm ơn bạn đã đặt hàng/Thanks for Your Order!</h3>";

                        Body += "<div style='padding: 10px; background-color: rgb(255,244,234); font-family: Verdana;font-size: 11px; margin-bottom: 20px;'>";
                        Body += "<p>Mã số đơn hàng của bạn là <b>" + Session["OrderNumber"] + "</b>. Chi tiết đơn hàng được liệt kê ở phía dưới. </p>";
                        Body += "</div>";
                        Body += "<div style='font-family: Verdana; font-size: 11px; margin-bottom: 20px;'><table style='width: 100%' cellpadding='0' cellspacing='0'><tr><td style='width: 50%;'><h4 style='font-size: 18px; margin-bottom: 5px; margin-bottom: 20px;'>Người nhận</h4><div style='font-size: 11px;font-family: Verdana;'><p><b>" + Session["FullName"] + "</b></p><p>" + Session["Address"] + "</p><p>" + Session["PhoneNumber"] + "</p></div></td></tr></table></div>";
                        Body += "<div style='font-family: Verdana; font-size: 11px; margin-bottom: 20px;'><h4 style='font-size: 18px;'>Chi tiết đơn hàng</h4>";

                        Body += "<div style='font-size: 11px; font-family: Verdana'>";
                        Body += "<p><b>* Phương thức thanh toán</b>: " + PaymentMethods + "</p>";

                        Body += "</div>";

                        Body += "<table style='font-size: 11px; font-family: Verdana; padding: 10px; border: 1px solid #C7D7DB; width: 100%;border-collapse: collapse;' cellpadding='0' cellspacing='0'>";
                        Body += "<tr><th align='left' style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Sản phẩm/Cart Items</th><th style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Số lượng/Qty</th><th align='center' style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Giá/Item Price</th><th align='right' style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Thành tiền/Item Total</th></tr>";


                        foreach (DataRow dr in dtCart.Rows)
                        {
                            string ProductCode = dr["ProductCode"].ToString();
                            string ProductID = dr["ProductID"].ToString();
                            string ProductName = dr["ProductName"].ToString();
                            string Quantity = dr["Quantity"].ToString();
                            string ProductPrice = dr["ProductPrice"].ToString();
                            double tPrice = Convert.ToDouble(Price) * Convert.ToDouble(Quantity);

                            var itemPrice = string.Format("{0:##,###.##}", tPrice).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " VND";
                            var sPrice = string.Format("{0:##,###.##}", dr["ProductPrice"]).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " VND";
                            Body += "<tr>";
                            Body += "<td style='padding: 5px; border-collapse: collapse; border-bottom: 1px solid #C7D7DB;'>" + ProductName + " - " + ProductCode + "</td>";
                            Body += "<td align='center' style='padding: 5px; border-collapse: collapse; border-bottom: 1px solid #C7D7DB;'>" + Quantity + "</td>";
                            Body += "<td align='center' style='padding: 5px; border-collapse: collapse; border-bottom: 1px solid #C7D7DB;'>" + sPrice + "</td>";
                            Body += "<td align='right' style='padding: 5px; border-collapse: collapse; border-bottom: 1px solid #C7D7DB;'>" + itemPrice + "</td>";
                            Body += "</tr>";
                        }
                        Body += "</table>";
                        Body += "<div style='clear: both;'></div>";
                        Body += "<table style='font-size: 11px; font-family: Verdana; text-align: right; margin: 10px 0; width: 100%; float: right;' cellpadding='0' cellspacing='0'>";
                        Body += "<tr><td style='width:85%;'>Thành tiền:</td><td style='width:15%;'>" + string.Format("{0:##,###.##}", Session["thanhtien"]).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " VNĐ" + "</td></tr>";
                        Body += "<tr><td><b>Tổng tiền:</b></td><td><b>" + string.Format("{0:##,###.##}", Session["tongtien"]).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " VNĐ" + "</b></td></tr>";
                        Body += "</table>";
                        Body += "<div style='clear: both;'></div>";
                        Body += "</div>";
                        Body += "</div>";
                        Body += "</div>";
                        Body += "</div>";
                        SendMail(Body);
                        /////////////////////////////////////////////////////////////////////////////////
                        Session["Cart"] = null;
                        Response.Redirect("~/payment-success.aspx");

                    }
                    else if (rbtEmail.Checked == true)
                    {
                        string FullName = FirstName;
                        Session["FullName"] = FullName;
                        Session["Address"] = Address;
                        Session["PhoneNumber"] = PhoneNumber;
                        PaymentMethods = "Thanh Toán Chuyển Khoản";
                        oOrders.OrdersUpdate(
                            OrderNumber,
                            CreateBy,
                            OrderStatusID,
                            "",
                            PaymentMethods,
                            "",
                            "",
                            txtMessage1.Text,
                            "",
                            "",
                            Address,
                            "",
                            FirstName,
                            Address,
                            PhoneNumber,
                            "",
                            Email
                            );

                        // noi dung mail xac nhan
                        string Body = "<div style='width: 100%; font-size: 11px; font-family: Arial;'>";
                        Body += "<h3 style='color: rgb(204,102,0); font-size: 22px; border-bottom-color: gray; border-bottom-width: 1px;border-bottom-style: dashed; margin-bottom: 20px; font-family: Times New Roman;'>Cảm ơn bạn đã đặt hàng/Thanks for Your Order!</h3>";

                        Body += "<div style='padding: 10px; background-color: rgb(255,244,234); font-family: Verdana;font-size: 11px; margin-bottom: 20px;'>";
                        Body += "<p>Mã số đơn hàng của bạn là <b>" + Session["OrderNumber"] + "</b>. Chi tiết đơn hàng được liệt kê ở phía dưới. </p>";
                        Body += "</div>";
                        Body += "<div style='font-family: Verdana; font-size: 11px; margin-bottom: 20px;'><table style='width: 100%' cellpadding='0' cellspacing='0'><tr><td style='width: 50%;'><h4 style='font-size: 18px; margin-bottom: 5px; margin-bottom: 20px;'>Người nhận</h4><div style='font-size: 11px;font-family: Verdana;'><p><b>" + Session["FullName"] + "</b></p><p>" + Session["Address"] + "</p><p>" + Session["PhoneNumber"] + "</p></div></td></tr></table></div>";
                        Body += "<div style='font-family: Verdana; font-size: 11px; margin-bottom: 20px;'><h4 style='font-size: 18px;'>Chi tiết đơn hàng</h4>";

                        Body += "<div style='font-size: 11px; font-family: Verdana'>";
                        Body += "<p><b>* Phương thức thanh toán</b>: " + PaymentMethods + "</p>";

                        Body += "</div>";

                        Body += "<table style='font-size: 11px; font-family: Verdana; padding: 10px; border: 1px solid #C7D7DB; width: 100%;border-collapse: collapse;' cellpadding='0' cellspacing='0'>";
                        Body += "<tr><th align='left' style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Sản phẩm/Cart Items</th><th style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Số lượng/Qty</th><th align='center' style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Giá/Item Price</th><th align='right' style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Thành tiền/Item Total</th></tr>";


                        foreach (DataRow dr in dtCart.Rows)
                        {
                            string ProductCode = dr["ProductCode"].ToString();
                            string ProductID = dr["ProductID"].ToString();
                            string ProductName = dr["ProductName"].ToString();
                            string Quantity = dr["Quantity"].ToString();
                            string ProductPrice = dr["ProductPrice"].ToString();
                            double tPrice = Convert.ToDouble(Price) * Convert.ToDouble(Quantity);

                            var itemPrice = string.Format("{0:##,###.##}", tPrice).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " VND";
                            var sPrice = string.Format("{0:##,###.##}", dr["ProductPrice"]).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " VND";
                            Body += "<tr>";
                            Body += "<td style='padding: 5px; border-collapse: collapse; border-bottom: 1px solid #C7D7DB;'>" + ProductName + " - " + ProductCode + "</td>";
                            Body += "<td align='center' style='padding: 5px; border-collapse: collapse; border-bottom: 1px solid #C7D7DB;'>" + Quantity + "</td>";
                            Body += "<td align='center' style='padding: 5px; border-collapse: collapse; border-bottom: 1px solid #C7D7DB;'>" + sPrice + "</td>";
                            Body += "<td align='right' style='padding: 5px; border-collapse: collapse; border-bottom: 1px solid #C7D7DB;'>" + itemPrice + "</td>";
                            Body += "</tr>";
                        }
                        Body += "</table>";
                        Body += "<div style='clear: both;'></div>";
                        Body += "<table style='font-size: 11px; font-family: Verdana; text-align: right; margin: 10px 0; width: 100%; float: right;' cellpadding='0' cellspacing='0'>";
                        Body += "<tr><td style='width:85%;'>Thành tiền:</td><td style='width:15%;'>" + string.Format("{0:##,###.##}", Session["thanhtien"]).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " VNĐ" + "</td></tr>";
                        Body += "<tr><td><b>Tổng tiền:</b></td><td><b>" + string.Format("{0:##,###.##}", Session["tongtien"]).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " VNĐ" + "</b></td></tr>";
                        Body += "</table>";
                        Body += "<div style='clear: both;'></div>";
                        Body += "</div>";
                        Body += "</div>";
                        Body += "</div>";
                        Body += "</div>";
                        SendMail(Body);
                        /////////////////////////////////////////////////////////////////////////////////
                        Session["Cart"] = null;
                        Response.Redirect("~/payment-success.aspx");

                    }

                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", "alert('Bạn hãy đọc, hiểu và đồng ý với các điều khoản của SALA')", true);

            }
        }

    }

    protected void SendMail(string Body)
    {
        //var dv = new Article().ArticleSelectAll("1", "1",
        //   "", "", "", "4", "", "", "", "", "", "", "", "", "").DefaultView;
        //if (dv.Count > 0)
        //{
        //    string Subject = "";
        //    string Host = dv[0]["Tag"].ToString();
        //    int Port = Convert.ToInt32(dv[0]["Priority"]);
        //    string From = dv[0]["ArticleTitle"].ToString();
        //    string MailUsername = dv[0]["MetaTittle"].ToString();
        //    string mPassword = dv[0]["MetaDescription"].ToString();
        //    string MailTo = dv[0]["TagEn"].ToString();
        //    string MailCC = dv[0]["MetaTittleEn"].ToString();
        //    string MailBCC = dv[0]["MetaDescriptionEn"].ToString();

        //    bool Gmail = Convert.ToBoolean(dv[0]["IsNew"]);

        //    Common.SendMail(Host, Port, From, MailUsername, mPassword, MailTo, MailCC, MailBCC, Subject, Body, Gmail);
        //}
        var OrderNumber = Session["OrderNumber"].ToString();
        var To = "ship@salaboutique.net";
        var Subject = "Chúng tôi đã nhận được đơn hàng: " + OrderNumber;
        var Host = "smtp.gmail.com";
        int Port = 587;
        var strDisplayNameMailFrom = "";
        var From = "webmastersendmail0401@gmail.com";
        var sPassword = "web123master";
        var Email = txtEmail1.Text;
        bool bEnableSSL = true;
        Common.SendMail(Host, Port, From, sPassword, Email, To, Subject, Body, true);

    }
}