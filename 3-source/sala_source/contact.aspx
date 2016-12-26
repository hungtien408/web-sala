<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrap-main">
        <div class="id-page">
            <h1>
                liên hệ</h1>
            <div class="flower">
                <img src="assets/images/hoa-line.png" alt="" />
            </div>
        </div>
        <div class="contact-wrap">
            <div class="address-info">
                <h1>
                    Sala boutique</h1>
                <asp:ListView ID="lstContact" runat="server" DataSourceID="odsContact" EnableModelValidation="True">
                    <ItemTemplate>
                        <ul>
                            <li class="local">Địa chỉ:
                                <%# Eval("Tag") %></li>
                            <li class="phone">Hotline:
                                <%# Eval("MetaTittle") %></li>
                            <li class="web">Website:
                                <%# Eval("MetaDescription") %></li>
                            <li class="mail">Email:
                                <%# Eval("ProductName") %></li>
                            <%--<li class="mail">Email: <a href="#">salafoundation@gmail.com</a> / <a href="#">hello@salafoundation.org</a></li>--%>
                        </ul>
                        <h3>
                            Hướng dẫn đến shop:
                        </h3>
                        <p>
                            <%# Eval("Description")%></p>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsContact" runat="server" SelectMethod="ProductSelectAll"
                    TypeName="TLLib.Product">
                    <SelectParameters>
                        <asp:Parameter Name="StartRowIndex" Type="String" />
                        <asp:Parameter Name="EndRowIndex" Type="String" />
                        <asp:Parameter Name="Keyword" Type="String" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="PriceFrom" Type="String" />
                        <asp:Parameter Name="PriceTo" Type="String" />
                        <asp:Parameter DefaultValue="7" Name="CategoryID" Type="String" />
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
        <div id="mapshow">
        </div>
    </div>
</asp:Content>
