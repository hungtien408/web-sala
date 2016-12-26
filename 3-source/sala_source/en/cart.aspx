<%@ Page Title="" Language="C#" MasterPageFile="~/en/site-cart.master" AutoEventWireup="true"
    CodeFile="cart.aspx.cs" Inherits="cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapcart-content">
        <h1 class="title-4">
            Info cart</h1>
        <div class="cart-w">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table class="tb-cart" cellpadding="0" cellspacing="0">
                        <thead>
                            <tr>
                                <th colspan="2" class="col-1">
                                    <h2>
                                        Product</h2>
                                </th>
                                <th class="col-2">
                                    <h2>
                                        Quantity</h2>
                                </th>
                                <th class="col-3">
                                    <h2>
                                        Price</h2>
                                </th>
                                <th class="col-4">
                                    <h2>
                                        Total</h2>
                                </th>
                                <th class="col-5">
                                    <h2>
                                    </h2>
                                </th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <td colspan="3">
                                </td>
                                <td>
                                    <h2 class="title-5">
                                        Total</h2>
                                </td>
                                <td class="col-4" colspan="2">
                                    <h3>
                                        <strong>
                                            <asp:Label ID="lbTotal" runat="server"></asp:Label></strong>USD</h3>
                                </td>
                            </tr>
                            <%--  <tr>
                        <td colspan="3">
                            <fieldset class="wrap-choise">
                                <h2>
                                    Chọn Tỉnh/Thành</h2>
                                <div class="select-wrap">
                                    <asp:DropDownList ID="DropDownList1" CssClass="selectb" runat="server">
                                        <asp:ListItem>-- Chọn Tỉnh/Thành --</asp:ListItem>
                                        <asp:ListItem>Tp Hồ Chí Minh</asp:ListItem>
                                        <asp:ListItem>Tiền Giang</asp:ListItem>
                                        <asp:ListItem>Long An</asp:ListItem>
                                        <asp:ListItem>Bến Tre</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </fieldset>
                        </td>
                        <td>
                            <h2 class="title-5">
                                Phí ship</h2>
                        </td>
                        <td class="col-4" colspan="2">
                            <h3>
                                <strong>20.000</strong>VNĐ</h3>
                        </td>
                    </tr>--%>
                            <tr>
                                <td colspan="3">
                                </td>
                                <td>
                                    <h2 class="title-5">
                                        Sum</h2>
                                </td>
                                <td class="col-4" colspan="2">
                                    <h3>
                                        <asp:HiddenField ID="hdnSubTotal" runat="server" />
                                        <strong>
                                            <asp:Label ID="lbSubTotal" runat="server"></asp:Label></strong>USD</h3>
                                </td>
                            </tr>
                        </tfoot>
                        <tbody>
                            <asp:ListView ID="ListView1" runat="server" OnDataBound="ListView1_DataBound" OnItemCommand="ListView1_ItemCommand"
                                EnableModelValidation="True" OnItemDataBound="ListView1_ItemDataBound">
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <div class="cart-img">
                                                <img id="Img1" src='<%# "~/res/product/thumbs/" + Eval("ImageName") %>' runat="server"
                                                    alt='<%# Eval("ImageName") %> ' />
                                            </div>
                                        </td>
                                        <td>
                                            <div class="cart-des">
                                                <p>
                                                    <strong>
                                                        <%# Eval("ProductName") %></strong>
                                                </p>
                                                <p>
                                                    <span>
                                                        Weight: <%# Eval("ProductCode") %></span>
                                                </p>
                                            </div>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtQuantity" CssClass="number-input" AutoPostBack="true" OnTextChanged="txtQuantity_TextChanged"
                                                runat="server" Text='<%# Eval("Quantity") %>'></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtQuantity"
                                                Display="Dynamic" ErrorMessage="Vui lòng nhập số!" ValidationExpression="^[0-9]+$"
                                                ValidationGroup="cart"></asp:RegularExpressionValidator>
                                            <asp:RangeValidator ID="RangeValidator1" Type="Integer" Display="Dynamic" ControlToValidate="txtQuantity"
                                                ValidationGroup="cart" MaximumValue="12" MinimumValue="1" runat="server" ErrorMessage="Số lượng từ 1 -> 12"></asp:RangeValidator>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Thông tin bắt buộc"
                                                ControlToValidate="txtQuantity" ValidationGroup="cart"></asp:RequiredFieldValidator>
                                            <asp:HiddenField ID="hdnQuantity" runat="server" Value='<%# Eval("Quantity") %>' />
                                            <asp:HiddenField ID="hdnProductID" runat="server" Value='<%# Eval("ProductID") %>' />
                                            <asp:HiddenField ID="hdnShopingCartID" Value='<%# Container.DataItemIndex + 1 %>'
                                                runat="server" />
                                        </td>
                                        <td>
                                            <h3>
                                                <strong>
                                                    <%#string.Format("{0:##,###.##}", Eval("ProductPrice")).Replace('.', 
'*').Replace(',', '.').Replace('*', ',')%></strong>USD</h3>
                                        </td>
                                        <td>
                                            <h3>
                                                <strong>
                                                    <%# string.Format("{0:##,###.##}", Convert.ToInt16(Eval("Quantity")) * Convert.ToDouble(Eval("ProductPrice"))).Replace('.', '*').Replace(',', '.').Replace('*', ',')%></strong>USD</h3>
                                        </td>
                                        <td>
                                            <asp:LinkButton ID="btnDelete" CommandName="Remove" CssClass="delete" runat="server">delete</asp:LinkButton>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <span runat="server" id="itemPlaceholder" />
                                </LayoutTemplate>
                            </asp:ListView>
                        </tbody>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <asp:LinkButton ID="lkbUpdate" class="btn-a btn-cart" runat="server" OnClick="lkbUpdate_Click"
            ValidationGroup="giohang">Payment</asp:LinkButton>
        <a class="btn-a btn-cart" href="online-shopping.aspx">Choose more product</a>
    </div>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="Cart" TypeName="ShoppingCart">
    </asp:ObjectDataSource>
</asp:Content>
