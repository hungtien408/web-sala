<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="products-detail.aspx.cs" Inherits="products_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrap-pro-detail container">
        <asp:ListView ID="lstProductDetails" runat="server" DataSourceID="odsProductDetails"
            EnableModelValidation="True" OnItemCommand="lstProductDetails_ItemCommand">
            <ItemTemplate>
                <div class="id-product">
                    <h2>
                        <%# Eval("ProductCategoryName") %></h2>
                </div>
                <div class="product-wrap">
                    <div class="product-img">
                        <img id="Img1" alt='<%# Eval("ProductName") %> ' src='<%# "~/res/product/" + Eval("ImageName") %>'
                            visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                            runat="server" />
                    </div>
                    <div class="product-details">
                        <h3>
                            <%# Eval("ProductName") %></h3>
                        <p>
                            <%# Eval("Content") %></p>
                        <p>
                            Trọng lượng:
                            <%# Eval("Tag") %></p>
                        <div class="number">
                            Số lượng:
                            <div class="sp-quantity">
                                <div class="sp-btn" data-id="sp-plus">
                                </div>
                                <div class="sp-btn" data-id="sp-minus">
                                </div>
                                <div class="sp-input">
                                    <%--<input type="text" class="quntity-input" value="0" disabled="disabled" />--%>
                                    <asp:TextBox ID="txtQuantity" CssClass="quntity-input" runat="server" Text="0"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <p>
                            Giá: <span>
                                <%# !string.IsNullOrEmpty(Eval("Price").ToString()) ? "<strong>" + (string.Format("{0:##,###.##}", Eval("Price")).Replace('.', '*').Replace(',', '.').Replace('*', ',')) + "</strong>" : ""%><%# string.IsNullOrEmpty(Eval("Price").ToString()) ? "" : " vnđ"%></span></p>
                        <asp:HiddenField ID="hdnProductID" Value='<%# Eval("ProductID") %>' runat="server" />
                        <asp:HiddenField ID="hdnImageName" Value='<%# Eval("ImageName") %>' runat="server" />
                        <asp:HiddenField ID="hdnProductCode" Value='<%# Eval("Tag") %>' runat="server" />
                        <asp:HiddenField ID="hdnProductCategory" Value='<%# Eval("CategoryID") %>' runat="server" />
                        <asp:HiddenField ID="hdnPrice" Value='<%# string.IsNullOrEmpty(Eval("Price").ToString()) ? "0" : Eval("Price") %>'
                            runat="server" />
                        <asp:HiddenField ID="hdnProductName" Value='<%# Eval("ProductName") %>' runat="server" />
                        <asp:Label ID="lblProductName" Visible="False" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                        <asp:Label ID="lblProductNameEn" Visible="False" runat="server" Text='<%# Eval("ProductNameEn") %>'></asp:Label>
                        <div class="btn-order">
                            <asp:LinkButton ID="lkbAddToCart" runat="server" CommandName="AddToCart">Đặt hàng</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsProductDetails" runat="server" SelectMethod="ProductSelectOne"
            TypeName="TLLib.Product">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductID" QueryStringField="pi" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <div class="more-product">
            <h3>
                Sản phẩm liên quan</h3>
            <div class="online-item">
                <asp:ListView ID="lstProductSame" runat="server" DataSourceID="odsProductSame" EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="item">
                            <div class="sp-img">
                                <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                    <img id="Img1" alt='<%# Eval("ProductName") %> ' src='<%# "~/res/product/" + Eval("ImageName") %>'
                                        visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                        runat="server" />
                                </a>
                            </div>
                            <div class="sp-info">
                                <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                    <h3>
                                        <%# Eval("ProductName") %></h3>
                                </a>
                                <p>
                                    <%# TLLib.Common.SplitSummary(Eval("Description").ToString(), 120)%></p>
                                <div class="btn-order">
                                    <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                        xem chi tiết</a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsProductSame" runat="server" SelectMethod="ProductSameSelectAll"
                    TypeName="TLLib.Product">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="10" Name="RerultCount" Type="String" />
                        <asp:QueryStringParameter Name="ProductID" QueryStringField="pi" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
        </div>
    </div>
</asp:Content>
