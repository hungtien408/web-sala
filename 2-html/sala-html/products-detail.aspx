<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="products-detail.aspx.cs" Inherits="products_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Sala</title>
    <meta name="description" content="Sala" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrap-pro-detail container">
        <div class="id-product">
            <h2>Sản phẩm từ gạo lức</h2>
        </div>
        <div class="product-wrap">
            <div class="product-img">
                <img src="assets/images/pro-dt-1.png" alt="" />
            </div>
            <div class="product-details">
                <h3>Gạo lứt đỏ</h3>
                <p>Giúp hạn chế sự phát triển của các tế bào ung thư. Gạo lứt tốt khi chữa các bệnh liên quan đến đường ruột, tim mạch, huyết áp… Gạo lứt còn hỗ trợ tốt cho người ăn kiêng, giảm cân, người tập yoga, hành thiền…</p>
                <p>Trọng lượng: 1 kg</p>
                <div class="number">
                    Số lượng:
                    <div class="sp-quantity">
                        <div class="sp-btn" data-id="sp-plus"></div>
                        <div class="sp-btn" data-id="sp-minus"></div>
                        <div class="sp-input">
                            <input type="text" class="quntity-input" value="0" disabled="disabled" />
                        </div>
                    </div>
                </div>
                <p>Giá: <span><strong>42,000</strong> vnđ</span></p>
                <div class="btn-order">
                    <a href="#">đặt hàng</a>
                </div>
            </div>
        </div>

        <div class="more-product">
            <h3>Sản phẩm liên quan</h3>
            <div class="online-item">
                <div class="item">
                    <div class="sp-img">
                        <a href="#">
                            <img src="assets/images/online-sp-1.png" alt="" />
                        </a>
                    </div>
                    <div class="sp-info">
                        <a href="#">
                            <h3>Gạo lứt đỏ</h3>
                        </a>
                        <p>Giúp hạn chế sự phát triển của các tế bào ung thư. Gạo lứt tốt khi chữa các bệnh liên quan đến đường ruột, tim mạch, huyết áp… Gạo lứt còn hỗ trợ tốt cho...</p>
                        <div class="btn-order">
                            <a href="#">xem chi tiết</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="sp-img">
                        <a href="#">
                            <img src="assets/images/online-sp-2.png" alt="" />
                        </a>
                    </div>
                    <div class="sp-info">
                        <a href="#">
                            <h3>Cốm gạo lứt rong biển </h3>
                        </a>
                        <p>Gạo lứt rang có công dụng chính là hỗ trợ xương khớp, làm cho các khớp trơn nhờn hơn. Ngoài ra, gạo lứt rang dương hoá cơ thể rất nhanh, tốt cho người...</p>
                        <div class="btn-order">
                            <a href="#">xem chi tiết</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="sp-img">
                        <a href="#">
                            <img src="assets/images/online-sp-3.png" alt="" />
                        </a>
                    </div>
                    <div class="sp-info">
                        <a href="#">
                            <h3>Nui gạo lứt</h3>
                        </a>
                        <p>Gạo lứt rang có công dụng chính là hỗ trợ xương khớp, làm cho các khớp trơn nhờn hơn. Ngoài ra, gạo lứt rang dương hoá cơ thể rất nhanh, tốt cho người...</p>
                        <div class="btn-order">
                            <a href="#">xem chi tiết</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="sp-img">
                        <a href="#">
                            <img src="assets/images/online-sp-4.png" alt="" />
                        </a>
                    </div>
                    <div class="sp-info">
                        <a href="#">
                            <h3>Gạo lứt đen</h3>
                        </a>
                        <p>Giúp hạn chế sự phát triển của các tế bào ung thư. Gạo lứt tốt khi chữa các bệnh liên quan đến đường ruột, tim mạch, huyết áp… Gạo lứt còn hỗ trợ tốt cho...</p>
                        <div class="btn-order">
                            <a href="#">xem chi tiết</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="sp-img">
                        <a href="#">
                            <img src="assets/images/online-sp-5.png" alt="" />
                        </a>
                    </div>
                    <div class="sp-info">
                        <a href="#">
                            <h3>Gạo lứt đen</h3>
                        </a>
                        <p>Giúp hạn chế sự phát triển của các tế bào ung thư. Gạo lứt tốt khi chữa các bệnh liên quan đến đường ruột, tim mạch, huyết áp… Gạo lứt còn hỗ trợ tốt cho...</p>
                        <div class="btn-order">
                            <a href="#">xem chi tiết</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

