<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="about-us.aspx.cs" Inherits="about_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrap-main">
        <asp:ListView ID="lstAbout" runat="server" DataSourceID="odsAbout" EnableModelValidation="True">
            <ItemTemplate>
                <%# Eval("Content") %>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsAbout" runat="server" SelectMethod="ProductSelectAll"
            TypeName="TLLib.Product">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
                <asp:Parameter Name="Keyword" Type="String" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="PriceFrom" Type="String" />
                <asp:Parameter Name="PriceTo" Type="String" />
                <asp:Parameter DefaultValue="1" Name="CategoryID" Type="String" />
                <asp:Parameter Name="ManufacturerID" Type="String" />
                <asp:Parameter Name="OriginID" Type="String" />
                <asp:Parameter Name="Tag" Type="String" />
                <asp:Parameter Name="InStock" Type="String" />
                <asp:Parameter Name="IsHot" Type="String" />
                <asp:Parameter Name="IsNew" Type="String" />
                <asp:Parameter Name="IsBestSeller" Type="String" />
                <asp:Parameter Name="IsSaleOff" Type="String" />
                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                <asp:Parameter Name="FromDate" Type="String" />
                <asp:Parameter Name="ToDate" Type="String" />
                <asp:Parameter Name="Priority" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <%--<div class="container">
            <div class="id-page">
                <h1>Về chúng tôi</h1>
                <div class="flower">
                    <img src="assets/images/hoa-line.png" alt="" />
                </div>
            </div>
            <div class="wrap-about">
                <article>
                    <img src="assets/images/about-us-1.png" alt="" />
                    <p><span>Sala boutique</span> là cửa hàng thực dưỡng chuyên tư vấn và cung cấp các<br /> sản phẩm thực dưỡng như gạo lứt, sản phẩm làm từ gạo lứt, mè, các loại trà, các loạt hạt,<br /> tảo, bột, ngũ cốc, thực phẩm chay, thực phẩm sạch…</p>
                </article>
                <article>
                    <h2>tầm nhìn</h2>
                    <p>Trở thành nhà tư vấn và đơn vị cung cấp sản phẩm thực dưỡng theo phương pháp dưỡng sinh<br /> Ohsawa uy tín hàng đầu Việt Nam và xa rộng hơn nữa.</p>
                    <img src="assets/images/about-us-2.png" alt="" />
                </article>
                <article>
                    <h2>sứ mệnh</h2>
                    <p>Cung cấp sản phẩm thực dưỡng sạch, tự nhiên,chất lượng và giá thành hợp lý.<br /> Giúp mọi người có kiến thức đúng và đầy đủ về phương pháp thực dưỡng, nhằm phòng bệnh và chữa bệnh.<br /> Kiến tạo một cộng đồng sống khoẻ, sống an, sống đẹp.</p>
                </article>
            </div>
        </div>
        <div class="why-choice-us">
            <img src="assets/images/about-us-3.png" alt="" />
            <div class="why-wrap">
                <span>Vì sao chọn</span>
                <h2>thực dưỡng?</h2>
                <p>Thực dưỡng là phương pháp ăn uống thuận theo tự nhiên, dùng thực phẩm chính là gạo lứt và muối mè, cùng những thực phẩm từ thiên nhiên, nhằm cân bằng âm dương trong cơ thể. Khi một cơ thể bị mất cân bằng âm dương, ví dụ như quá nóng hoặc quá lạnh, nó sẽ dẫn đến bệnh, dù bệnh nặng hay nhẹ. Phương pháp thực dưỡng cùng với chế độ luyện tập thể thao và dưỡng khí như yoga, khí công, chạy bộ, bơi lội… cùng nhiều môn thể thao khác sẽ giúp lấy lại sự cân bằng tự nhiên trong cơ thể. Khi cơ thể được cân bằng âm dương, bệnh tật sẽ bị tiêu trừ. Và chỉ có thực dưỡng mới mang lại cho chúng ta sự cân bằng tuyệt vời đó.</p>
            </div>
        </div>
        <div class="founder">
            <div class="wrap-founder">
                <div class="founder-img">
                <img src="assets/images/ng-sang-lap.png" /></div>
                <div class="founder-content">
                    <h1>nguời sáng lập</h1>
                    <p>Sala boutique được thành lập từ năm 2014 bởi cô Bùi Lan Xuân Phượng, một nhà báo viết về Phật giáo, đồng thời cũng là một chuyên gia trong ngành truyền thông tại Việt Nam. Cô ấy từng là Phó Giám đốc Chương trình kênh truyền hình FBNC, Trưởng ban biên tập tạp chí Sức Sống Mới (một dự án truyền thông phức hợp của tập đoàn Unilever) cùng một số vị trí quản lý khác. Hiện cô Xuân Phượng đang là cố vấn truyền thông cho Tổ chức Hướng Tới Minh Bạch, đầu mối quốc gia tại Việt Nam của Tổ chức Minh Bạch Quốc Tế. Cô cũng là giáo viên yoga, chuyên về yoga trị liệu-chữa bệnh (yoga thepary– treatment). </p>
                    <p>Sau khi chứng kiến câu chuyện của bậc tiền bối trong ngành yoga nhờ ăn gạo lứt muối mè suốt 6 tháng kết hợp với luyện tập yoga mà phục hồi hoàn toàn sau một thời gian dài bị bệnh nan y, cô Xuân Phượng quyết định chọn kinh doanh ngành thực dưỡng, để đem phương pháp thực dưỡng kỳ diệu này phổ biến rộng khắp cho nhiều người biết.</p>
                </div>
            </div>
        </div>--%>
    </div>
</asp:Content>
