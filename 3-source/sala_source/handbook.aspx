<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="handbook.aspx.cs" Inherits="handbook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrap-main">
        <div class="container">
            <div class="id-page">
                <h1>
                    cẩm nang thực dưỡng</h1>
                <div class="flower">
                    <img src="assets/images/hoa-line.png" alt="" />
                </div>
            </div>
            <div class="wrap-about">
                <div class="hand-item">
                    <asp:ListView ID="lstHandbook" runat="server" DataSourceID="odsHandbook" EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="item">
                                <div class="it-left">
                                    <asp:HiddenField ID="hdnProductID" runat="server" Value='<%# Eval("ProductID") %>' />
                                    <div class="owl-carousel">
                                        <asp:ListView ID="lstImageHandbook" runat="server" DataSourceID="odsImageHandbook"
                                            EnableModelValidation="True">
                                            <ItemTemplate>
                                                <div class="item">
                                                    <img id="Img2" alt='<%# Eval("ImageName") %> ' src='<%# "~/res/product/album/" + Eval("ImageName") %>'
                                                        visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                                        runat="server" /></div>
                                            </ItemTemplate>
                                            <LayoutTemplate>
                                                <span runat="server" id="itemPlaceholder" />
                                            </LayoutTemplate>
                                        </asp:ListView>
                                        <asp:ObjectDataSource ID="odsImageHandbook" runat="server" SelectMethod="ProductImageSelectAll"
                                            TypeName="TLLib.ProductImage">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="hdnProductID" Name="ProductID" PropertyName="Value"
                                                    Type="String" />
                                                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                                <asp:Parameter Name="Priority" Type="String" />
                                                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                            </SelectParameters>
                                        </asp:ObjectDataSource>
                                    </div>
                                </div>
                                <div class="it-right">
                                    <span>Tip
                                        <%# Container.DataItemIndex + 1 %>:</span>
                                    <h2>
                                        <%# Eval("ProductName") %></h2>
                                    <p>
                                        <%# Eval("Description") %></p>
                                </div>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsHandbook" runat="server" SelectMethod="ProductSelectAll"
                        TypeName="TLLib.Product">
                        <SelectParameters>
                            <asp:Parameter Name="StartRowIndex" Type="String" />
                            <asp:Parameter Name="EndRowIndex" Type="String" />
                            <asp:Parameter Name="Keyword" Type="String" />
                            <asp:Parameter Name="ProductName" Type="String" />
                            <asp:Parameter Name="Description" Type="String" />
                            <asp:Parameter Name="PriceFrom" Type="String" />
                            <asp:Parameter Name="PriceTo" Type="String" />
                            <asp:Parameter DefaultValue="4" Name="CategoryID" Type="String" />
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
            </div>
        </div>
    </div>
</asp:Content>
