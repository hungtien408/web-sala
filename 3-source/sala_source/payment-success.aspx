<%@ Page Title="" Language="C#" MasterPageFile="~/site-cart.master" AutoEventWireup="true"
    CodeFile="payment-success.aspx.cs" Inherits="payment_success" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapcart-content">
        <h1 class="title-4">
            Xác nhận đơn hàng</h1>
        <div class="cart-w">
            <div class="tb-wrap tb-success">
                <div class="cart-content">
                    <div class="note">
                        <h1 class="title-info">
                            Kính chào quý khách !</h1>
                        <br />
                        <h3 class="title-success">
                            Giao dịch thành công</h3>
                        <p class="code-dh">
                            Mã số đơn hàng của quý khách là: <strong>
                                <%= Session["OrderNumber"] %></strong>
                        </p>
                        <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource1" EnableModelValidation="True">
                            <ItemTemplate>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="ArticleSelectAll"
                            TypeName="TLLib.Article">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                                <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
                                <asp:Parameter Name="Keyword" Type="String" />
                                <asp:Parameter Name="ArticleTitle" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter DefaultValue="6" Name="ArticleCategoryID" Type="String" />
                                <asp:Parameter Name="Tag" Type="String" />
                                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                <asp:Parameter Name="IsHot" Type="String" />
                                <asp:Parameter Name="IsNew" Type="String" />
                                <asp:Parameter Name="FromDate" Type="String" />
                                <asp:Parameter Name="ToDate" Type="String" />
                                <asp:Parameter DefaultValue="true" Name="IsAvailable" Type="String" />
                                <asp:Parameter DefaultValue="" Name="Priority" Type="String" />
                                <asp:Parameter DefaultValue="true" Name="SortByPriority" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                </div>
            </div>
            <div class="btn-button-tk btn-button-ps">
                <a id="A1" class="btn-button btn-order" href="~/" runat="server">Trở về trang chủ</a>
            </div>
        </div>
    </div>
</asp:Content>
