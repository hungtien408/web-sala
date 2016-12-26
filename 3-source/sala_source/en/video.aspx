<%@ Page Title="" Language="C#" MasterPageFile="~/en/site.master" AutoEventWireup="true"
    CodeFile="video.aspx.cs" Inherits="video" %>

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
            <div class="video-content">
                <asp:ListView ID="lstVideo" runat="server" DataSourceID="odsVideo" EnableModelValidation="True">
                    <ItemTemplate>
                        <div class='<%# string.IsNullOrEmpty(Eval("GLobalEmbedScriptEn").ToString()) ? "hidden" : "item-video" %>'>
                            <a href='<%# progressTitle(Eval("TitleEn")) + "-vd-" + Eval("VideoID") + ".aspx" %>'>
                                <div class="video-img">
                                    <img id="Img1" alt='<%# Eval("TitleEn") %> ' src='<%# "~/res/video/thumbs/" + Eval("ImagePath") %>'
                                        visible='<%# string.IsNullOrEmpty( Eval("ImagePath").ToString()) ? false : true %>'
                                        runat="server" /></div>
                                <div class="video-name">
                                    <%# Eval("TitleEn") %></div>
                            </a>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsVideo" runat="server" SelectMethod="VideoSelectAll"
                    TypeName="TLLib.Video">
                    <SelectParameters>
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="VideoCategoryID" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
            <div class="pager">
                <asp:DataPager ID="DataPager1" runat="server" PageSize="9" PagedControlID="lstVideo">
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
</asp:Content>
