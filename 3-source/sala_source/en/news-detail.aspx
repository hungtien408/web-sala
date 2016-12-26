<%@ Page Title="" Language="C#" MasterPageFile="~/en/site.master" AutoEventWireup="true"
    CodeFile="news-detail.aspx.cs" Inherits="news_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="wrapper-news">
            <div class="title-news">
                <h1>
                    News</h1>
                <ul>
                    <li><a href="news.aspx">Article</a></li>
                    <li><a href="video.aspx">Video</a></li>
                </ul>
            </div>
            <div class="news-border">
                <asp:ListView ID="lstNewDetails" runat="server" DataSourceID="odsNewDetails" EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="news-detail">
                            <%# Eval("ContentEn") %>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsNewDetails" runat="server" SelectMethod="ProductSelectOne"
                    TypeName="TLLib.Product">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ProductID" QueryStringField="tt" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
            <div class="news-all">
                <h1>
                    Other article</h1>
                <div id="newslist" class="owl-carousel">
                    <asp:ListView ID="lstNewSame" runat="server" DataSourceID="odsNewSame" EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="item">
                                <div class="news-box">
                                    <div class="news-img">
                                        <a href='<%# progressTitle(Eval("ProductNameEn")) + "-tt-" + Eval("ProductID") + ".aspx" %>'>
                                            <img id="Img1" alt='<%# Eval("ProductNameEn") %> ' src='<%# "~/res/product/" + Eval("ImageName") %>'
                                                visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                                runat="server" /></a></div>
                                    <div class="news-name">
                                        <a href='<%# progressTitle(Eval("ProductNameEn")) + "-tt-" + Eval("ProductID") + ".aspx" %>'>
                                            <%# Eval("ProductNameEn") %></a></div>
                                </div>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsNewSame" runat="server" SelectMethod="ProductSameSelectAll"
                        TypeName="TLLib.Product">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="10" Name="RerultCount" Type="String" />
                            <asp:QueryStringParameter DefaultValue="" Name="ProductID" QueryStringField="tt"
                                Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
