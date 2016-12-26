<%@ Page Title="" Language="C#" MasterPageFile="~/en/site.master" AutoEventWireup="true"
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
                        <%# Eval("ProductCategoryNameEn") %></h2>
                </div>
                <div class="product-wrap">
                    <div class="product-img">
                        <img id="Img1" alt='<%# Eval("ProductNameEn") %> ' src='<%# "~/res/product/" + Eval("ImageName") %>'
                            visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                            runat="server" />
                    </div>
                    <div class="product-details">
                        <h3>
                            <%# Eval("ProductNameEn") %></h3>
                        <p>
                            <%# Eval("ContentEn") %></p>
                        <p>
                            Weight:
                            <%# Eval("Tag") %></p>
                        <div class="number">
                            Quantity:
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
                            Price: <span>
                                <%# !string.IsNullOrEmpty(Eval("SavePrice").ToString()) ? "<strong>" + (string.Format("{0:##,###.##}", Eval("SavePrice")).Replace('.', '*').Replace(',', '.').Replace('*', ',')) + "</strong>" : ""%><%# string.IsNullOrEmpty(Eval("SavePrice").ToString()) ? "" : " USD"%></span></p>
                        <asp:HiddenField ID="hdnProductID" Value='<%# Eval("ProductID") %>' runat="server" />
                        <asp:HiddenField ID="hdnImageName" Value='<%# Eval("ImageName") %>' runat="server" />
                        <asp:HiddenField ID="hdnProductCode" Value='<%# Eval("Tag") %>' runat="server" />
                        <asp:HiddenField ID="hdnProductCategory" Value='<%# Eval("CategoryID") %>' runat="server" />
                        <asp:HiddenField ID="hdnPrice" Value='<%# string.IsNullOrEmpty(Eval("SavePrice").ToString()) ? "0" : Eval("SavePrice") %>'
                            runat="server" />
                        <asp:HiddenField ID="hdnProductName" Value='<%# Eval("ProductNameEn") %>' runat="server" />
                        <asp:Label ID="lblProductName" Visible="False" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                        <asp:Label ID="lblProductNameEn" Visible="False" runat="server" Text='<%# Eval("ProductNameEn") %>'></asp:Label>
                        <div class="btn-order">
                            <asp:LinkButton ID="lkbAddToCart" runat="server" CommandName="AddToCart">Order</asp:LinkButton>
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
                Product Same</h3>
            <div class="online-item">
                <asp:ListView ID="lstProductSame" runat="server" DataSourceID="odsProductSame" EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="item">
                            <div class="sp-img">
                                <a href='<%# progressTitle(Eval("ProductNameEn")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                    <img id="Img1" alt='<%# Eval("ProductNameEn") %> ' src='<%# "~/res/product/" + Eval("ImageName") %>'
                                        visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                        runat="server" />
                                </a>
                            </div>
                            <div class="sp-info">
                                <a href='<%# progressTitle(Eval("ProductNameEn")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                    <h3>
                                        <%# Eval("ProductNameEn") %></h3>
                                </a>
                                <p>
                                    <%# TLLib.Common.SplitSummary(Eval("DescriptionEn").ToString(), 120)%></p>
                                <div class="btn-order">
                                    <a href='<%# progressTitle(Eval("ProductNameEn")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                        detail</a>
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
