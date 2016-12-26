<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="Copy of Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrap-default">
        <asp:ListView ID="lstBanner1" runat="server" DataSourceID="odsBanner1" EnableModelValidation="True">
            <ItemTemplate>
                <section class="section_df" data-bg='<%# "res/advertisement/" + Eval("FileName") %>'>
            <div class="wrap-sec-first check-in-view">
                <p> Hãy đến với <strong>Sala boutique</strong></p>
                <p> để hiểu về <span>thực dưỡng</span></p>
                
                <span>một phương pháp ăn uống tốt cho sức khỏe của bạn</span>
                <div class="clr"></div>
                <div class="first-cir-item">
                    <div class="item">
                        <img src="assets/images/first-sp-1.png" alt="" />
                    </div>
                    <div class="item">
                        <img src="assets/images/first-sp-2.png" alt="" />
                    </div>
                    <div class="item">
                        <img src="assets/images/first-sp-3.png" alt="" />
                    </div>
                </div>
                <div class="read-more">
                    <a href="handbook.aspx">Xem thêm <i class="fa fa-angle-double-right"></i></a>
                </div>
            </div>
            <div class="line">
                <img src="assets/images/hoa-line.png" alt="" />
                <img src="assets/images/hoa-line.png" alt="" />
                <img src="assets/images/hoa-line.png" alt="" />
            </div>
        </section>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsBanner1" runat="server" SelectMethod="AdsBannerSelectAll"
            TypeName="TLLib.AdsBanner">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
                <asp:Parameter DefaultValue="5" Name="AdsCategoryID" Type="String" />
                <asp:Parameter Name="CompanyName" Type="String" />
                <asp:Parameter Name="Website" Type="String" />
                <asp:Parameter Name="FromDate" Type="String" />
                <asp:Parameter Name="ToDate" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                <asp:Parameter Name="Priority" Type="String" />
                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ListView ID="lstBanner2" runat="server" DataSourceID="odsBanner2" EnableModelValidation="True">
            <ItemTemplate>
                <section class="section_df" data-bg='<%# "res/advertisement/" + Eval("FileName") %>'>
            <div class="wrap-sec-second check-in-view-1">
                <h2>Gạo lứt</h2>
                <span>thần dược <strong>chống ung thư</strong></span>
                <div class="clr"></div>
                <div class="second-item">
                    <div class="item">
                        <img src="assets/images/second-sp-1.png" alt="" />
                    </div>
                    <div class="item">
                        <img src="assets/images/second-sp-2.png" alt="" />
                    </div>
                    <div class="item">
                        <img src="assets/images/second-sp-3.png" alt="" />
                    </div>
                </div>
                <div class="read-more">
                    <a href="handbook.aspx">Xem thêm <i class="fa fa-angle-double-right"></i></a>
                </div>
            </div>
        </section>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsBanner2" runat="server" SelectMethod="AdsBannerSelectAll"
            TypeName="TLLib.AdsBanner">
            <SelectParameters>
                <asp:Parameter DefaultValue="2" Name="StartRowIndex" Type="String" />
                <asp:Parameter DefaultValue="2" Name="EndRowIndex" Type="String" />
                <asp:Parameter DefaultValue="5" Name="AdsCategoryID" Type="String" />
                <asp:Parameter Name="CompanyName" Type="String" />
                <asp:Parameter Name="Website" Type="String" />
                <asp:Parameter Name="FromDate" Type="String" />
                <asp:Parameter Name="ToDate" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                <asp:Parameter Name="Priority" Type="String" />
                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ListView ID="lstBanner3" runat="server" DataSourceID="odsBanner3" EnableModelValidation="True">
            <ItemTemplate>
                <section class="section_df" data-bg='<%# "res/advertisement/" + Eval("FileName") %>'>
            <div class="wrap-sec-third check-in-view-2">
                <div class="third-wrap">
                    <p>2<sup>ly trà</sup></p>
                    <span>mỗi ngày cho <strong>thân khỏe tâm an</strong></span>
                </div>
                <div class="clr"></div>
                <div class="read-more">
                    <a href="handbook.aspx">Xem thêm <i class="fa fa-angle-double-right"></i></a>
                </div>
            </div>
        </section>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsBanner3" runat="server" SelectMethod="AdsBannerSelectAll"
            TypeName="TLLib.AdsBanner">
            <SelectParameters>
                <asp:Parameter DefaultValue="3" Name="StartRowIndex" Type="String" />
                <asp:Parameter DefaultValue="3" Name="EndRowIndex" Type="String" />
                <asp:Parameter DefaultValue="5" Name="AdsCategoryID" Type="String" />
                <asp:Parameter Name="CompanyName" Type="String" />
                <asp:Parameter Name="Website" Type="String" />
                <asp:Parameter Name="FromDate" Type="String" />
                <asp:Parameter Name="ToDate" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                <asp:Parameter Name="Priority" Type="String" />
                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ListView ID="lstBanner4" runat="server" DataSourceID="odsBanner4" EnableModelValidation="True">
            <ItemTemplate>
                <section class="section_df" data-bg='<%# "res/advertisement/" + Eval("FileName") %>'>
            <div class="wrap-sec-fourth check-in-view-3">
                <h2>quy định</h2>
                <p>giao hàng</p>
                <ul>
                    <li><strong>Miễn phí</strong> với đơn hàng <strong>từ 500.000đ</strong> trở lên tại Sài Gòn</li>
                    <li><strong>Dưới 500.000đ:</strong>
                        <ul>
                            <li>Nội thành Sài Gòn: 25.000vnđ/đơn hàng/lần giao</li>
                            <li>Ngoại thành Sài Gòn: 35.000vnđ/đơn hàng/lần giao</li>
                        </ul>
                    </li>
                    <li><strong>Toàn quốc:</strong> Theo giá nhà vận chuyển</li>
                    <li><strong>Đơn hàng đặc biệt sẽ thương lượng</strong></li>
                </ul>
            </div>
        </section>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsBanner4" runat="server" SelectMethod="AdsBannerSelectAll"
            TypeName="TLLib.AdsBanner">
            <SelectParameters>
                <asp:Parameter DefaultValue="4" Name="StartRowIndex" Type="String" />
                <asp:Parameter DefaultValue="4" Name="EndRowIndex" Type="String" />
                <asp:Parameter DefaultValue="5" Name="AdsCategoryID" Type="String" />
                <asp:Parameter Name="CompanyName" Type="String" />
                <asp:Parameter Name="Website" Type="String" />
                <asp:Parameter Name="FromDate" Type="String" />
                <asp:Parameter Name="ToDate" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                <asp:Parameter Name="Priority" Type="String" />
                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>
