<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Server.Master" AutoEventWireup="true" CodeBehind="QLThongKe.aspx.cs" Inherits="project_web_diendantructuyen.admin.QuanLyThongKe.QLThongKe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 3px;
        }
        .auto-style5 {
            text-align: center;
            width: 306px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <form id="form1" runat="server">
        <table style="width: 100%;">
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="btnTongThanhVien" runat="server" Text="Tổng số thành viên" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="btnTongSoBaiViet" runat="server" Text="Tổng số thành viên" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="btnTongThanhVien1" runat="server" Text="Tổng số thành viên" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td>
                    <asp:GridView ID="GridViewThongKe" runat="server" AutoGenerateColumns="true" CssClass="auto-style1" Width="491px">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
    
</asp:Content>
