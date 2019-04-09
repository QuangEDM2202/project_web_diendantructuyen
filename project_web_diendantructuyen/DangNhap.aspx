<%@ Page Title="Đăng Nhập" Language="C#" MasterPageFile="~/MasterPage/Client.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="project_web_diendantructuyen.DangNhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="site-nav" role="navigation">
            <div class="chunk">
                <h2>Đăng nhập</h2>
            </div>
        </div>
        <a id="start_here" class="anchor"></a>
       <div id="wrap-body" style="height: 392px;">
            <div class="chunk">
                <form action="" method="post" id="login" data-focus="username">
                    <div class="panel">
                        <div class="inner">
                            <div class="content">
                                <fieldset class="fields1">
                                    <dl>
                                        <dt><label for="username">Họ Tên:</label></dt>
                                        <dd><input type="text" tabindex="1" name="username" id="username" size="25" value="" class="inputbox autowidth" /></dd>
                                    </dl>
                                    <dl>
                                        <dt><label for="password">Mật khẩu:</label></dt>
                                        <dd><input type="password" tabindex="2" id="password" name="password" size="25" class="inputbox autowidth" autocomplete="off" /></dd>
                                    </dl>
                                    <dl>
                                        <dt>&nbsp;</dt>
                                        <dd>
                                            <input type="submit" name="login" tabindex="6" value="Đăng nhập" class="button1" />
                                        </dd>
                                    </dl>
                                    </fieldset>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
          <div id="wrap-footer">
            <div id="site-footer">
                <div class="chunk">
                    <div id="foot-left">
                        <ul class="site-footer-nav" role="menubar">
                            <li><a href="">Liên hệ</a></li>
                            <li class="icon-delete-cookies"><a href="" >Địa chỉ</a></li>
                            <li class="icon-team"><a href="">Theo dõi</a></li>
                        </ul>
                        </div>
                        <div id="foot-right">
                            <ul>
                                <li>Team LTWNC</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
</asp:Content>
