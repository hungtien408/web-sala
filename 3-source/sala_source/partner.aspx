<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="partner.aspx.cs" Inherits="partner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper-partner">
        <div class="id-page">
            <h1>
                Đối tác</h1>
            <div class="flower">
                <img src="assets/images/hoa-line.png" alt="" />
            </div>
        </div>
        <asp:ListView ID="lstPartner" runat="server" DataSourceID="odsPartner" EnableModelValidation="True">
            <ItemTemplate>
                <div class="partner-box">
                    <h1>
                        <%# Eval("ProductName")%></h1>
                    <%# Eval("Content") %>
                </div>
                <div class="partner-img">
                    <img src="assets/images/par1.jpg" alt="" />
                    <div class="content">
                        <h3>
                            ĐẦU TƯ</h3>
                        <p>
                            <%# Eval("Description")%></p>
                    </div>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsPartner" runat="server" SelectMethod="ProductSelectAll"
            TypeName="TLLib.Product">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
                <asp:Parameter Name="Keyword" Type="String" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="PriceFrom" Type="String" />
                <asp:Parameter Name="PriceTo" Type="String" />
                <asp:Parameter DefaultValue="6" Name="CategoryID" Type="String" />
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
</asp:Content>
