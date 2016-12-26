<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="video-detail.aspx.cs" Inherits="video_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="wrapper-news">
            <div class="title-news">
                <h1>Tin tức</h1>
                <ul>
                    <li><a href="news.aspx">Tin bài</a></li>
                    <li><a href="video.aspx">Tin video</a></li>
                </ul>
            </div>
        </div>
        <div class="video-detail">
             <div class="wrapper-video">
                <div class="video-details">
                    <div id="jwplayer3"></div>
                    <script type="text/javascript">
                        $(document).ready(function () {
                            jwplayer('jwplayer3').setup({
                                image: "assets/images/video1.jpg",
                                //image: '<%# "res/product/" + Eval("ImageName") %>',
                                //file: '<%# !string.IsNullOrEmpty( Eval("VideoPath").ToString()) ? "res/product/video/" + Eval("VideoPath") : ""%>',
                                file: "https://youtu.be/PDZH-x2nNRM",
                                flashplayer: "assets/js/jwplayer.flash.swf",
                                width: '100%',
                                aspectratio: '16:9',
                                primary: "html5",
                            });
                        });
                    </script>
                </div>
            </div>
            <div class="news-all video-all">
                <h1>Video khác</h1>
                <div id="newslist" class="owl-carousel">
                    <div class="item">
                         <div class="item-video">
                            <a href="#">
                                <div class="video-img"><img src="assets/images/video8.jpg" alt="" /></div> 
                                <div class="video-name">Cơm trắng có nhiều khả năng gây bệnh tiểu đường hơn cả nước ngọt</div>
                            </a>
                         </div>
                    </div>
                 </div>
            </div>
        </div>
    </div>
</asp:Content>

