<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Client.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="project_web_diendantructuyen.TrangChu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div id="site-nav">
        </div>
        <a id="start_here" class="anchor"></a>
        <div id="wrap-body">
            <div class="chunk-main">
                <div id="sidebar">
                    <div class="side-block side-login">
                        <form method="post" action="">
                            <h4 class="side-block-head"><a href="n">Đăng nhập</a></h4>
                            <div class="side-block-body">
                                <fieldset>
                                    <input type="text" tabindex="1" name="username" id="username" size="10" class="inputbox"  placeholder="Họ Tên" />
                                    <input type="password" tabindex="2" name="password" id="password" size="10" class="inputbox" placeholder="Mật khẩu" autocomplete="off" />
                                    <br />
                                    <br />
                                    <input type="submit" tabindex="5" name="login" value="Đăng nhập" class="button2" />
                                </fieldset>
                            </div>
                        </form>
                    </div>
                    <div class="side-block">
                        <h4 class="side-block-head">Xem nhiều trong ngày</h4>
                         <div class="list-inner-new" style="margin-left: 20px">
                            <a href="ChiTietBaiViet.aspx" class="">Tiêu đề 1</a> <br />   <br />  
                            <a href="" class="">Mô tả ngắn </a>
                        </div>
                        <div class="side-block-body" id="sidebar-recent-posts"></div>
                    </div>
                </div>
                <div id="forumlist">
                    <div id="forumlist-inner">
                        <div class="forabg">
                            <div class="inner">
                                <ul class="topiclist">
                                    <li class="header">
                                        <dl class="icon">
                                            <dt><div class="list-inner"><a href="">Bài viết hót</a></div></dt>
                                        </dl>
                                    </li>
                                </ul>
                                <ul class="topiclist forums">
                                    <li class="row">
                                        <dl class="icon forum_read">
                                            <dt title="No unread posts">
                                                <span class="ico_forum_read"></span>
                                                <div class="list-inner">
                                                    <a href="ChiTietBaiViet.aspx" class="forumtitle">Tiêu đề 1</a>
                                                    <br />Mô tả ngắn 
                                                </div>
                                            </dt>
                                            <dd class="topics">2<dfn><i class="fas fa-eye"></i> Lượt xem</dfn></dd>
                                            <dd class="posts">2<dfn><i class="far fa-thumbs-up"></i> Lượt thích</dfn></dd>
                                            <dd class="lastpost">
                                                <dfn>Last post</dfn><a href=""  class="lastsubject">Đăng bởi</a> <br />
                                                thành viên <a href="" style="color: #AA0000;" class="username-coloured">Hùng</a>
                                            24/02/2015, 21:50 </dd>
                                        </dl>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="forabg">
                            <div class="inner">
                                <ul class="topiclist">
                                    <li class="header">
                                        <dl class="icon">
                                            <dt><div class="list-inner"><a href="">Bài viết top 1</a></div></dt>
                                        </dl>
                                    </li>
                                </ul>
                                <ul class="topiclist forums">
                                    <li class="row">
                                        <dl class="icon forum_read">
                                            <dt>
                                                <span class="ico_forum_read"></span>
                                                <div class="list-inner">
                                                    <a href="" class="forumtitle">Tiêu đề 2</a>
                                                    <br />Mô tả ngắn                                            
                                                    <div class="responsive-show" style="display: none;">
                                                        Topics: <strong>1</strong>
                                                    </div>
                                                </div>
                                            </dt>
                                            <dd class="topics">1<dfn><i class="fas fa-eye"></i> Lượt xem</dfn></dd>
                                            <dd class="posts">2<dfn><i class="far fa-thumbs-up"></i> Lượt thích</dfn></dd>
                                            <dd class="lastpost">
                                                <dfn>Last post</dfn><a href="" class="lastsubject">Đăng bởi</a> <br />
                                                thành viên <a href="" class="username">Tuấn</a>
                                            07/01/2015, 20:20 </dd>
                                        </dl>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="forabg">
                            <div class="inner">
                                <ul class="topiclist">
                                    <li class="header">
                                        <dl class="icon">
                                            <dt><div class="list-inner"><a href="">Bài viết nổi bật</a></div></dt>
                                        </dl>
                                    </li>
                                </ul>
                                <ul class="topiclist forums">
                                    <li class="row">
                                        <dl class="icon forum_read_locked">
                                            <dt>
                                                <span class="ico_forum_read_locked"></span>
                                                <div class="list-inner">
                                                    <a href="" class="forumtitle">Tiêu đề 3</a>
                                                    <br />Mô tả ngắn                                            
                                                    <div class="responsive-show" style="display: none;">
                                                        Topics: <strong>1</strong>
                                                    </div>
                                                </div>
                                            </dt>
                                            <dd class="topics">1<dfn><i class="fas fa-eye"></i> Lượt xem</dfn></dd>
                                            <dd class="posts">2<dfn><i class="far fa-thumbs-up"></i> Lượt thích</dfn></dd>
                                            <dd class="lastpost">
                                                <dfn>Last post</dfn><a href=""  class="lastsubject">Đăng bởi</a> <br />
                                                thành viên <a href="" style="color: #00AA00;" class="username-coloured">Mạnh</a>
                                            07/03/2015, 21:01</dd>
                                        </dl>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="site-footer-area">
                <div class="chunk">
                    <div class="grid-3">
                        <h3>Số người đang online</h3>
                          <p>12</p>
                      </div>
                      <div class="grid-3">
                        <h5>Bài viết Top 1</h5>
                        <p>Tiêu đề bài viết<br /><br /></p>
                    </div>
                    <div class="grid-3">
                        <h5>Số người truy cập website</h5>
                        <ul>
                            <li>
                                <a href="#">200</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="chunk">
                    <div class="statistics-list">
                        <div>
                            <div><span>Tổng số bài viết <strong>68</strong></span></div>
                            <div><span>Tổng số chủ đề<strong>20</strong></span></div>
                            <div><span>Tổng số thành viên <strong>9</strong></span></div>
                            <div><span>Số thành viên mới <strong><a href="memberlist4c70.html?style=5&amp;mode=viewprofile&amp;u=2995" class="username">12</a></strong></span></div>
                        </div>
                    </div>
                </div>
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
</asp:Content>
