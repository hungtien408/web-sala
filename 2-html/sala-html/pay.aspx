<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="pay.aspx.cs" Inherits="pay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrap-main">
        <div class="id-page">
            <h1>Thanh toán</h1>
            <div class="flower">
                <img src="assets/images/hoa-line.png" alt="" />
            </div>
        </div>
        <div class="pay-wrap">
            <div class="pay-content">
                <h2>Các hình thức thanh toán</h2>
                <h4>1. Thanh toán trực tiếp</h4>
                <p>Thanh toán trực tiếp khi nhận hàng từ shipper (chỉ ưu tiên áp dụng đối với khách hàng ở khu vực nội thành Sài Gòn). </p>                <p>Ngoại thành Sài Gòn và ở tỉnh thì vui lòng chuyển khoản khi đặt hàng.</p>
                <h4>2. Chuyển khoản</h4>
                <span>Quy trình đặt hàng và chuyển khoản như sau:</span>
                <p><span>Bước 1:</span> hoàn tất đặt hàng trên trang web của Sala boutique</p>
                <p><span>Bước 2:</span> Sala gửi email xác nhận đơn hàng</p>
                <p><span>Bước 3:</span> Khách hàng chuyển khoản cho Sala boutique</p>
                <ul>
                    <li>Tài khoản: <span>0071003989173</span></li>
                    <li>Ngân hàng: Vietcombank (VCB, CN TP.HCM)</li>
                    <li>Chủ tài khoản: Bùi Thị Lan Xuân Phượng</li>
                </ul>
                <p><span>Bước 4:</span> Sala xác nhận đã nhận tiền, thực hiện giao hàng.</p>
            </div>
        </div>
    </div>
</asp:Content>

