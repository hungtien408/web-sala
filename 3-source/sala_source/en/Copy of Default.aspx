<%@ Page Title="" Language="C#" MasterPageFile="~/en/site.master" AutoEventWireup="true"
    CodeFile="Copy of Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrap-default">
        <asp:ListView ID="lstBanner1" runat="server" DataSourceID="odsBanner1" EnableModelValidation="True">
            <ItemTemplate>
                <section class="section_df" data-bg='<%# "../res/advertisement/" + Eval("FileName") %>'>
            <div class="wrap-sec-first check-in-view">
                <p> Come here with <strong>Sala boutique</strong></p>
                <p> to understand more about <span>macrobiotic</span></p>
                
                <span>a good method for your heath</span>
                <div class="clr"></div>
                <div class="first-cir-item">
                    <div class="item">
                        <img src="../assets/images/first-sp-1.png" alt="" />
                    </div>
                    <div class="item">
                        <img src="../assets/images/first-sp-2.png" alt="" />
                    </div>
                    <div class="item">
                        <img src="../assets/images/first-sp-3.png" alt="" />
                    </div>
                </div>
                <div class="read-more">
                    <a href="handbook.aspx">see more <i class="fa fa-angle-double-right"></i></a>
                </div>
            </div>
            <div class="line">
                <img src="../assets/images/hoa-line.png" alt="" />
                <img src="../assets/images/hoa-line.png" alt="" />
                <img src="../assets/images/hoa-line.png" alt="" />
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
                <section class="section_df" data-bg='<%# "../res/advertisement/" + Eval("FileName") %>'>
            <div class="wrap-sec-second check-in-view-1">
                <h2>Brown rice</h2>
                <span>panacea <strong>against cancer</strong></span>
                <div class="clr"></div>
                <div class="second-item">
                    <div class="item">
                        <img src="../assets/images/second-sp-1.png" alt="" />
                    </div>
                    <div class="item">
                        <img src="../assets/images/second-sp-2.png" alt="" />
                    </div>
                    <div class="item">
                        <img src="../assets/images/second-sp-3.png" alt="" />
                    </div>
                </div>
                <div class="read-more">
                    <a href="handbook.aspx">see more <i class="fa fa-angle-double-right"></i></a>
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
                <section class="section_df" data-bg='<%# "../res/advertisement/" + Eval("FileName") %>'>
            <div class="wrap-sec-third check-in-view-2">
                <div class="third-wrap">
                    <p>2<sup>cups of tea</sup></p>
                    <span>per day for <strong>a healthy body & a peace of mind</strong></span>
                </div>
                <div class="clr"></div>
                <div class="read-more">
                    <a href="handbook.aspx">see more <i class="fa fa-angle-double-right"></i></a>
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
                <section class="section_df" data-bg='<%# "../res/advertisement/" + Eval("FileName") %>'>
            <div class="wrap-sec-fourth check-in-view-3">
                <h2>delivery</h2>
                <p>regulations</p>
                <ul>
                    <li><strong>Free</strong> with the order <strong>from 500.000vnđ</strong> up to more at Sai Gon</li>
                    <li><strong>Below 500.000đ:</strong>
                        <ul>
                            <li>Sai Gon Urban: 25.000vnđ/order/ship</li>
                            <li>Sai Gon Rural: 35.000vnđ/order/ship</li>
                        </ul>
                    </li>
                    <li><strong>Viet Nam:</strong> depend on shipper</li>
                    <li><strong>Special orders will be negotiated</strong></li>
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
