<%@ Page Title="" Language="C#" MasterPageFile="~/en/site.master" AutoEventWireup="true"
    CodeFile="online-shopping.aspx.cs" Inherits="online_shopping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrap-main">
        <div class="container">
            <div class="id-page">
                <h1>
                    Product</h1>
                <div class="flower">
                    <img src="../assets/images/hoa-line.png" alt="" />
                </div>
            </div>
            <div class="wrap-online">
                <div class="cate-online">
                    <asp:ListView ID="lstProductCategory" runat="server" DataSourceID="odsProductCategory"
                        EnableModelValidation="True">
                        <ItemTemplate>
                            <li><a href='<%# progressTitle(Eval("ProductCategoryNameEn")) + "-oci-" + Eval("ProductCategoryID") + ".aspx" %>'>
                                <%# Eval("ProductCategoryNameEn") %></a></li>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <ul>
                                <li class="active"><a href="products.aspx">All</a></li>
                                <li runat="server" id="itemPlaceholder"></li>
                            </ul>
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsProductCategory" runat="server" SelectMethod="ProductCategorySelectAll"
                        TypeName="TLLib.ProductCategory">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="3" Name="parentID" Type="Int32" />
                            <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                            <asp:Parameter Name="IsShowOnMenu" Type="String" />
                            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
                <div class="online-item">
                    <asp:ListView ID="lstProduct" runat="server" DataSourceID="odsProduct" EnableModelValidation="True" OnItemCommand="lstProduct_ItemCommand"> 
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
                                                <input type="text" class="quntity-input" value="0" disabled="disabled" />
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
                    <asp:ObjectDataSource ID="odsProduct" runat="server" SelectMethod="ProductSelectAll"
                        TypeName="TLLib.Product">
                        <SelectParameters>
                            <asp:Parameter Name="StartRowIndex" Type="String" />
                            <asp:Parameter Name="EndRowIndex" Type="String" />
                            <asp:Parameter Name="Keyword" Type="String" />
                            <asp:Parameter Name="ProductName" Type="String" />
                            <asp:Parameter Name="Description" Type="String" />
                            <asp:Parameter Name="PriceFrom" Type="String" />
                            <asp:Parameter Name="PriceTo" Type="String" />
                            <asp:QueryStringParameter DefaultValue="3" Name="CategoryID" QueryStringField="oci"
                                Type="String" />
                            <asp:Parameter Name="ManufacturerID" Type="String" />
                            <asp:Parameter Name="OriginID" Type="String" />
                            <asp:Parameter Name="Tag" Type="String" />
                            <asp:Parameter Name="InStock" Type="String" />
                            <asp:Parameter Name="IsHot" Type="String" />
                            <asp:Parameter Name="IsNew" Type="String" />
                            <asp:Parameter Name="IsBestSeller" Type="String" />
                            <asp:Parameter Name="IsSaleOff" Type="String" />
                            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                            <asp:Parameter Name="FromDate" Type="String" />
                            <asp:Parameter Name="ToDate" Type="String" />
                            <asp:Parameter Name="Priority" Type="String" />
                            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
                <div class="pager">
                    <asp:DataPager ID="DataPager1" runat="server" PageSize="10" PagedControlID="lstProduct">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="true" ShowNextPageButton="false"
                                ShowPreviousPageButton="false" ButtonCssClass="first fa fa-backward" RenderDisabledButtonsAsLabels="true"
                                FirstPageText="" />
                            <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowNextPageButton="false"
                                ShowPreviousPageButton="true" ButtonCssClass="prev fa fa-caret-left" RenderDisabledButtonsAsLabels="true"
                                PreviousPageText="" />
                            <asp:NumericPagerField ButtonCount="5" NumericButtonCssClass="numer-paging" CurrentPageLabelCssClass="current" />
                            <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="false" ButtonCssClass="next fa fa-caret-right"
                                ShowNextPageButton="true" ShowPreviousPageButton="false" RenderDisabledButtonsAsLabels="true"
                                NextPageText="" />
                            <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True" ButtonCssClass="last fa fa-forward"
                                ShowNextPageButton="false" ShowPreviousPageButton="false" RenderDisabledButtonsAsLabels="true"
                                LastPageText="" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
