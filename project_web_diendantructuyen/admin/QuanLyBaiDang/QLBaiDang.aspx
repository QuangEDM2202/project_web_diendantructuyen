<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Server.Master" AutoEventWireup="true" CodeBehind="QLBaiDang.aspx.cs" Inherits="project_web_diendantructuyen.admin.QuanLyBaiDang.QLBaiDang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="cantrai">
        <h2 class="auto-style1">Quản lý Bài đăng</h2>
        <form id="form1" runat="server" method="post">
            <p class="auto-style1">
                <table style="width: 100%;">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </p>
            <asp:GridView ID="DsBaiDang" runat="server" AutoGenerateColumns="false" OnRowCommand="DsBaiDang_RowCommand">
                <Columns>
                    <asp:BoundField DataField="MaBaiDang" HeaderText="Mã bài đăng" />
                    <%--<asp:BoundField DataField="tieude" HeaderText="Tiêu đề bài viết" />--%>
                    <asp:TemplateField HeaderText="Tiêu đề bài viết">
                        <ItemTemplate>
                            <asp:LinkButton ID="tieude" Text='<%# Eval("tieude") %>' runat="server" ToolTip="Chuyen" CommandName="Chuyen"
                                CommandArgument='<%# Eval("MaBaiDang") %>'>
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ngaydang" HeaderText="Ngày đăng" />
                    <asp:BoundField DataField="trangthai" HeaderText="Trạng thái" />
                    <asp:BoundField DataField="hoten" HeaderText="Tên Người đăng" />
                    <asp:BoundField DataField="tenchude" HeaderText="Tên chủ đề" />
                </Columns>
            </asp:GridView>
        </form>
    </div>



</asp:Content>
