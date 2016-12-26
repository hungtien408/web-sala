<%@ Page Title="" Language="C#" MasterPageFile="~/en/site.master" AutoEventWireup="true"
    CodeFile="video-detail.aspx.cs" Inherits="video_detail" %>

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
        </div>
        <div class="video-detail">
            <div class="wrapper-video">
                <asp:ListView ID="lstVideoDetails" runat="server" DataSourceID="odsVideoDetails"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="video-details">
                            <div id="jwplayer3">
                            </div>
                            <script type="text/javascript">
                                $(document).ready(function () {
                                    jwplayer('jwplayer3').setup({
                                        image: '<%# string.IsNullOrEmpty(Eval("ImagePath").ToString()) ? "" : "../res/video/thumbs/" + Eval("ImagePath") %>',
                                        file: '<%# string.IsNullOrEmpty(Eval("VideoPath").ToString()) ? Eval("GLobalEmbedScriptEn") : "../res/video/" + Eval("VideoPath") %>',
                                        flashplayer: "../assets/js/jwplayer.flash.swf",
                                        width: '100%',
                                        aspectratio: '16:9',
                                        primary: "html5",
                                    });
                                });
                            </script>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsVideoDetails" runat="server" SelectMethod="VideoSelectOne"
                    TypeName="TLLib.Video">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="VideoID" QueryStringField="vd" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
            <div class="news-all video-all">
                <h1>
                    Other video</h1>
                <div id="newslist" class="owl-carousel">
                    <asp:ListView ID="lstVideoSame" runat="server" DataSourceID="odsVideoSame" EnableModelValidation="True">
                        <ItemTemplate>
                            <div class='<%# string.IsNullOrEmpty(Eval("GLobalEmbedScriptEn").ToString()) ? "hidden" : "item" %>'>
                                <div class="item-video">
                                    <a href='<%# progressTitle(Eval("TitleEn")) + "-vd-" + Eval("VideoID") + ".aspx" %>'>
                                        <div class="video-img">
                                            <img id="Img1" alt='<%# Eval("TitleEn") %> ' src='<%# "~/res/video/thumbs/" + Eval("ImagePath") %>'
                                                visible='<%# string.IsNullOrEmpty( Eval("ImagePath").ToString()) ? false : true %>'
                                                runat="server" /></div>
                                        <div class="video-name">
                                            <%# Eval("TitleEn")%></div>
                                    </a>
                                </div>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsVideoSame" runat="server" SelectMethod="VideoSelectAll"
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
            </div>
        </div>
    </div>
</asp:Content>
