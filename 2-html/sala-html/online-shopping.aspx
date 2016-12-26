<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="online-shopping.aspx.cs" Inherits="online_shopping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Sala</title>
    <meta name="description" content="Sala" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrap-main">
        <div class="container">
            <div class="id-page">
                <h1>Về chúng tôi</h1>
                <div class="flower">
                    <img src="assets/images/hoa-line.png" alt="" />
                </div>
            </div>
            <div class="wrap-online">
                <div class="cate-online">
                    <ul>
                        <li class="active"><a href="#">All</a></li>
                        <li><a href="#">Sản phẩm từ gạo lứt</a></li>
                        <li><a href="#">Hạt-Ngũ cốc</a></li>
                        <li><a href="#">Ăn chơi-Chế biến sẵn</a></li>
                        <li><a href="#">Các loại trà</a></li>
                        <li><a href="#">Sản phẩm khác</a></li>
                    </ul>
                </div>
                <div class="online-item">
                    <div class="item">
                        <div class="sp-img">
                            <a href="#">
                                <img src="assets/images/online-sp-1.png" alt="" />
                            </a>
                        </div>
                        <div class="sp-info">
                            <a href="#"><h3>Gạo lứt đỏ</h3></a>
                            <p>Trọng lượng: 1 kg</p>
                            <div class="number">Số lượng:
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
                    <div class="item">
                        <div class="sp-img">
                            <a href="#">
                                <img src="assets/images/online-sp-2.png" alt="" />
                            </a>
                        </div>
                        <div class="sp-info">
                            <a href="#"><h3>Cốm gạo lứt rong biển </h3></a>
                            <p>Trọng lượng: 1 kg</p>
                            <div class="number">Số lượng:
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
                    <div class="item">
                        <div class="sp-img">
                            <a href="#">
                                <img src="assets/images/online-sp-3.png" alt="" />
                            </a>
                        </div>
                        <div class="sp-info">
                            <a href="#"><h3>Nui gạo lứt</h3></a>
                            <p>Trọng lượng: 1 kg</p>
                            <div class="number">Số lượng:
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
                    <div class="item">
                        <div class="sp-img">
                            <a href="#">
                                <img src="assets/images/online-sp-4.png" alt="" />
                            </a>
                        </div>
                        <div class="sp-info">
                            <a href="#"><h3>Gạo lứt đen</h3></a>
                            <p>Trọng lượng: 1 kg</p>
                            <div class="number">Số lượng:
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
                    <div class="item">
                        <div class="sp-img">
                            <a href="#">
                                <img src="assets/images/online-sp-5.png" alt="" />
                            </a>
                        </div>
                        <div class="sp-info">
                            <a href="#"><h3>Gạo lứt đen</h3></a>
                            <p>Trọng lượng: 1 kg</p>
                            <div class="number">Số lượng:
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
                    <div class="item">
                        <div class="sp-img">
                            <a href="#">
                                <img src="assets/images/online-sp-6.png" alt="" />
                            </a>
                        </div>
                        <div class="sp-info">
                            <a href="#"><h3>Bột sắn dây</h3></a>
                            <p>Trọng lượng: 1 kg</p>
                            <div class="number">Số lượng:
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
                    <div class="item">
                        <div class="sp-img">
                            <a href="#">
                                <img src="assets/images/online-sp-7.png" alt="" />
                            </a>
                        </div>
                        <div class="sp-info">
                            <a href="#"><h3>Cốm gạo lứt rong biển </h3></a>
                            <p>Trọng lượng: 1 kg</p>
                            <div class="number">Số lượng:
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
                    <div class="item">
                        <div class="sp-img">
                            <a href="#">
                                <img src="assets/images/online-sp-8.png" alt="" />
                            </a>
                        </div>
                        <div class="sp-info">
                            <a href="#"><h3>Nui gạo lứt, 500gr</h3></a>
                            <p>Trọng lượng: 1 kg</p>
                            <div class="number">Số lượng:
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
                    <div class="item">
                        <div class="sp-img">
                            <a href="#">
                                <img src="assets/images/online-sp-9.png" alt="" />
                            </a>
                        </div>
                        <div class="sp-info">
                            <a href="#"><h3>Nui gạo lứt, 500gr</h3></a>
                            <p>Trọng lượng: 1 kg</p>
                            <div class="number">Số lượng:
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
                    <div class="item">
                        <div class="sp-img">
                            <a href="#">
                                <img src="assets/images/online-sp-10.png" alt="" />
                            </a>
                        </div>
                        <div class="sp-info">
                            <a href="#"><h3>Gạo lứt Nhật Bản </h3></a>
                            <p>Trọng lượng: 1 kg</p>
                            <div class="number">Số lượng:
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
                </div>
                <div class="pager">
                    <a href="#" class="prev fa fa-caret-left"></a>
                    <a href="#" class="current">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#">4</a>
                    <a href="#">5</a>
                    <a href="#" class="next fa fa-caret-right"></a>
                    <a href="#" class="last fa fa-forward"></a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

