<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Server.Master" AutoEventWireup="true" CodeBehind="ChiTietDuyetBai.aspx.cs" Inherits="project_web_diendantructuyen.admin.QuanLyBaiDang.ChiTietDuyetBai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style2 {
            width: 550px;
            text-align: right;
        }
        .auto-style3 {
            width: 529px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table style="width: 100%;">
            <tr>
                <td class="auto-style2">Trạng thái :</td>
                <td>
                    <asp:Label ID="txtTrangThai" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Tiêu đề bài viết:</td>
                <td>
                    <asp:Label ID="txtTieuDe" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Thành viên đăng:</td>
                <td>
                    <asp:Label ID="txtThanhVienDang" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Quyền:</td>
                <td>
                    <asp:Label ID="txtQuyen" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Ngày đăng</td>
                <td>
                    <asp:Label ID="txtThoiGian" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <table style="width: 100%;">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1"><strong>Chi Tiết bài đăng</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="txtNoiDung" runat="server" BorderColor="#0066FF" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="btnDuyet" runat="server" OnClick="btnDuyet_Click" Text="Duyệt bài viết này" />
                </td>
                <td>
                    <asp:Button ID="btnKhongDuyet" runat="server" Text="Không duyệt bài viết" Width="161px" />
                </td>
            </tr>
            </table>

    </form>

</asp:Content>
