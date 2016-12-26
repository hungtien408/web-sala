<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Sala</title>
    <meta name="description" content="Sala" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrap-main">
        <div class="id-page">
            <h1>liên hệ</h1>
            <div class="flower">
                <img src="assets/images/hoa-line.png" alt="" />
            </div>
        </div>
        <div class="contact-wrap">
            <div class="address-info">
                <h1>Sala boutique</h1>
                <ul>
                    <li class="local">Địa chỉ: 51/51 Phạm Văn Chiêu, P.14, Q.Gò Vấp, TP. HCM</li>
                    <li class="phone">Hotline: 0932.110.577</li>
                    <li class="web">Website:  www.salaboutique.net</li>
                    <li class="mail">Email: <a href="#">salafoundation@gmail.com</a> / <a href="#">hello@salafoundation.org</a></li>
                </ul>
                <h3>Hướng dẫn đến shop: </h3>
                <p>Đến ngã tư Quang Trung – Phạm Văn Chiêu – Phan Huy Ích, rẽ vào đường Phạm Văn Chiêu, đi thẳng 200m thấy bên tay phải có trường Trung học Phạm Văn Chiêu, bên trái đối diện trường là hẻm 51 (trên google map là đường 49), đi vào hẻm này.</p>
            </div>
        </div>
        <div id="mapshow"></div>
    </div>
</asp:Content>

