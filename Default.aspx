<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured" style="background:#F36F20;">
        <div class="content-wrapper" style="background:#F36F20;">
            <hgroup class="title">
                <h2 style="color:#ffd80">CHÀO MỪNG BẠN ĐẾN WEBSITE FPTSHOP.COM.VN</h2>
            </hgroup>
            <asp:Image ID="Image1" runat="server" ImageUrl="Images/635961543598994261_H1-GioTo.jpg" Width="100%"/>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3 style="color:#F36F20">KHÁCH HÀNG</h3>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="MaKH" DataSourceID="SqlDataSource1" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True"></CommandRowStyle>

        <EditRowStyle BackColor="#2461BF"></EditRowStyle>

        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True"></FieldHeaderStyle>
        <Fields>
            <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" SortExpression="MaKH"></asp:BoundField>
            <asp:BoundField DataField="TenKH" HeaderText="TenKH" SortExpression="TenKH"></asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True"></asp:CommandField>
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

        <RowStyle BackColor="#EFF3FB"></RowStyle>
    </asp:DetailsView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:trongpdph03466ConnectionString %>' DeleteCommand="DELETE FROM [khach_hang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [khach_hang] ([MaKH], [TenKH], [email]) VALUES (@MaKH, @TenKH, @email)" SelectCommand="SELECT [MaKH], [TenKH], [email] FROM [khach_hang]" UpdateCommand="UPDATE [khach_hang] SET [TenKH] = @TenKH, [email] = @email WHERE [MaKH] = @MaKH">
        <DeleteParameters>
            <asp:Parameter Name="MaKH" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaKH" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="TenKH" Type="String"></asp:Parameter>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenKH" Type="String"></asp:Parameter>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
            <asp:Parameter Name="MaKH" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <h3 style="color:#F36F20;">LOẠI SẢN PHẨM</h3>
    <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" DataSourceID="SqlDataSource2" AutoGenerateRows="False" DataKeyNames="maloai" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True"></CommandRowStyle>

        <EditRowStyle BackColor="#2461BF"></EditRowStyle>

        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True"></FieldHeaderStyle>
        <Fields>
            <asp:BoundField DataField="maloai" HeaderText="maloai" ReadOnly="True" SortExpression="maloai"></asp:BoundField>
            <asp:BoundField DataField="tenloai" HeaderText="tenloai" SortExpression="tenloai"></asp:BoundField>
            <asp:BoundField DataField="soluong" HeaderText="soluong" SortExpression="soluong"></asp:BoundField>
            <asp:BoundField DataField="donvitinh" HeaderText="donvitinh" SortExpression="donvitinh"></asp:BoundField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True"></asp:CommandField>
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

        <RowStyle BackColor="#EFF3FB"></RowStyle>
    </asp:DetailsView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:trongpdph03466ConnectionString %>' DeleteCommand="DELETE FROM [loaisp] WHERE [maloai] = @maloai" InsertCommand="INSERT INTO [loaisp] ([maloai], [tenloai], [soluong], [donvitinh]) VALUES (@maloai, @tenloai, @soluong, @donvitinh)" SelectCommand="SELECT [maloai], [tenloai], [soluong], [donvitinh] FROM [loaisp]" UpdateCommand="UPDATE [loaisp] SET [tenloai] = @tenloai, [soluong] = @soluong, [donvitinh] = @donvitinh WHERE [maloai] = @maloai">
        <DeleteParameters>
            <asp:Parameter Name="maloai" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="maloai" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="tenloai" Type="String"></asp:Parameter>
            <asp:Parameter Name="soluong" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="donvitinh" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="tenloai" Type="String"></asp:Parameter>
            <asp:Parameter Name="soluong" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="donvitinh" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="maloai" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <h3 style="color:#F36F20;"></h3>
    <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="125px"></asp:DetailsView>
     <h3 style="color:#F36F20;">SẢN PHẨM</h3>
    <asp:DetailsView ID="DetailsView4" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource3" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True"></CommandRowStyle>

        <EditRowStyle BackColor="#2461BF"></EditRowStyle>

        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True"></FieldHeaderStyle>
        <Fields>
            <asp:BoundField DataField="madm" HeaderText="madm" SortExpression="madm"></asp:BoundField>
            <asp:BoundField DataField="dongia" HeaderText="dongia" SortExpression="dongia"></asp:BoundField>
            <asp:BoundField DataField="tensp" HeaderText="tensp" SortExpression="tensp"></asp:BoundField>
            <asp:BoundField DataField="gia" HeaderText="gia" SortExpression="gia"></asp:BoundField>
            <asp:BoundField DataField="mota" HeaderText="mota" SortExpression="mota"></asp:BoundField>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id"></asp:BoundField>
            <asp:CommandField ShowDeleteButton="True" ShowInsertButton="True" ShowEditButton="True"></asp:CommandField>
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

        <RowStyle BackColor="#EFF3FB"></RowStyle>
    </asp:DetailsView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:trongpdph03466ConnectionString %>' DeleteCommand="DELETE FROM [sanpham] WHERE [id] = @id" InsertCommand="INSERT INTO [sanpham] ([madm], [dongia], [tensp], [gia], [mota], [id]) VALUES (@madm, @dongia, @tensp, @gia, @mota, @id)" SelectCommand="SELECT [madm], [dongia], [tensp], [gia], [mota], [id] FROM [sanpham]" UpdateCommand="UPDATE [sanpham] SET [madm] = @madm, [dongia] = @dongia, [tensp] = @tensp, [gia] = @gia, [mota] = @mota WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="madm" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="dongia" Type="String"></asp:Parameter>
            <asp:Parameter Name="tensp" Type="String"></asp:Parameter>
            <asp:Parameter Name="gia" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="mota" Type="String"></asp:Parameter>
            <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="madm" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="dongia" Type="String"></asp:Parameter>
            <asp:Parameter Name="tensp" Type="String"></asp:Parameter>
            <asp:Parameter Name="gia" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="mota" Type="String"></asp:Parameter>
            <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <h3 style="color:#F36F20;">CHI TIẾT HÓA ĐƠN</h3>
    <asp:DetailsView ID="DetailsView5" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource4" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True"></CommandRowStyle>

        <EditRowStyle BackColor="#2461BF"></EditRowStyle>

        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True"></FieldHeaderStyle>
        <Fields>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id"></asp:BoundField>
            <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH"></asp:BoundField>
            <asp:BoundField DataField="MaSP" HeaderText="MaSP" SortExpression="MaSP"></asp:BoundField>
            <asp:BoundField DataField="soluong" HeaderText="soluong" SortExpression="soluong"></asp:BoundField>
            <asp:BoundField DataField="thanhtien" HeaderText="thanhtien" SortExpression="thanhtien"></asp:BoundField>
            <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

        <RowStyle BackColor="#EFF3FB"></RowStyle>
    </asp:DetailsView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:trongpdph03466ConnectionString %>' DeleteCommand="DELETE FROM [chi_tietHD] WHERE [id] = @id" InsertCommand="INSERT INTO [chi_tietHD] ([id], [MaKH], [MaSP], [soluong], [thanhtien]) VALUES (@id, @MaKH, @MaSP, @soluong, @thanhtien)" SelectCommand="SELECT [id], [MaKH], [MaSP], [soluong], [thanhtien] FROM [chi_tietHD]" UpdateCommand="UPDATE [chi_tietHD] SET [MaKH] = @MaKH, [MaSP] = @MaSP, [soluong] = @soluong, [thanhtien] = @thanhtien WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="MaKH" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="MaSP" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="soluong" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="thanhtien" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MaKH" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="MaSP" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="soluong" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="thanhtien" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <h3 style="color:#F36F20;">HÓA ĐƠN</h3>
    <asp:DetailsView ID="DetailsView6" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="maHD" DataSourceID="SqlDataSource5" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True">
        <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True"></CommandRowStyle>

        <EditRowStyle BackColor="#2461BF"></EditRowStyle>

        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True"></FieldHeaderStyle>
        <Fields>
            <asp:BoundField DataField="MakH" HeaderText="MakH" SortExpression="MakH"></asp:BoundField>
            <asp:BoundField DataField="soHD" HeaderText="soHD" SortExpression="soHD"></asp:BoundField>
            <asp:BoundField DataField="maHD" HeaderText="maHD" ReadOnly="True" SortExpression="maHD"></asp:BoundField>
            <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

        <RowStyle BackColor="#EFF3FB"></RowStyle>
    </asp:DetailsView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:trongpdph03466ConnectionString %>' DeleteCommand="DELETE FROM [Hoa_don] WHERE [maHD] = @maHD" InsertCommand="INSERT INTO [Hoa_don] ([MakH], [soHD], [maHD]) VALUES (@MakH, @soHD, @maHD)" SelectCommand="SELECT [MakH], [soHD], [maHD] FROM [Hoa_don]" UpdateCommand="UPDATE [Hoa_don] SET [MakH] = @MakH, [soHD] = @soHD WHERE [maHD] = @maHD">
        <DeleteParameters>
            <asp:Parameter Name="maHD" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MakH" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="soHD" Type="String"></asp:Parameter>
            <asp:Parameter Name="maHD" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MakH" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="soHD" Type="String"></asp:Parameter>
            <asp:Parameter Name="maHD" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
