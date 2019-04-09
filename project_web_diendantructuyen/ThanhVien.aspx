<%@ Page Title="Thành Viên" Language="C#" MasterPageFile="~/MasterPage/Client.Master" AutoEventWireup="true" CodeBehind="ThanhVien.aspx.cs" Inherits="project_web_diendantructuyen.ThanhVien" %>
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
                            <h4 class="side-block-head"><a href="n">Tìm kiếm bạn bè</a></h4>
                            <div class="side-block-body">
                                <fieldset>
                                    <input type="text" tabindex="1" name="username" id="username" size="10" class="inputbox"  placeholder="Tên" />
                                    <br />
                                    <br />
                                    <input type="submit" tabindex="5" name="login" value="Search" class="button2" />
                                </fieldset>
                            </div>
                        </form>
                    </div>
                    <div class="side-block">
                        <h4 class="side-block-head">Thành viên mới nhất</h4>
                         <div class="list-inner-new" style="margin-left: 20px">
                           
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
                                            <dt><div class="list-inner"><a href="">Thành viên</a></div></dt>
                                        </dl>
                                    </li>
                                </ul>
                                <ul class="topiclist forums">
                                    <li class="row">
                                        <dl class="icon forum_read">
                                            <dt title="No unread posts">
                                                <span class="ico_forum_read"></span>
                                                <div class="list-inner">
                                                    <a href="" class="forumtitle">User 1</a>
                                                    <br />Email
                                                </div>
                                            </dt>
                                            <dd class="topics">2<dfn><i class="far fa-newspaper"></i> Bài viết</dfn></dd>
                                            <dd class="posts">2<dfn><i class="far fa-thumbs-up"></i> Lượt thích</dfn></dd>
                                            <dd class="lastpost">
                                              <a href=""  class="lastsubject">Số người theo dõi</a> <br />
                                               120 người </dd>
                                        </dl>
                                    </li>
                                </ul>
                                 <ul class="topiclist forums">
                                    <li class="row">
                                        <dl class="icon forum_read">
                                            <dt title="No unread posts">
                                                <span class="ico_forum_read"></span>
                                                <div class="list-inner">
                                                    <a href="" class="forumtitle">User 1</a>
                                                    <br />Email
                                                </div>
                                            </dt>
                                            <dd class="topics">2<dfn><i class="far fa-newspaper"></i> Bài viết</dfn></dd>
                                            <dd class="posts">2<dfn><i class="far fa-thumbs-up"></i> Lượt thích</dfn></dd>
                                            <dd class="lastpost">
                                              <a href=""  class="lastsubject">Số người theo dõi</a> <br />
                                               120 người </dd>
                                        </dl>
                                    </li>
                                </ul>
                                 <ul class="topiclist forums">
                                    <li class="row">
                                        <dl class="icon forum_read">
                                            <dt title="No unread posts">
                                                <span class="ico_forum_read"></span>
                                                <div class="list-inner">
                                                    <a href="" class="forumtitle">User 1</a>
                                                    <br />Email
                                                </div>
                                            </dt>
                                            <dd class="topics">2<dfn><i class="far fa-newspaper"></i> Bài viết</dfn></dd>
                                            <dd class="posts">2<dfn><i class="far fa-thumbs-up"></i> Lượt thích</dfn></dd>
                                            <dd class="lastpost">
                                              <a href=""  class="lastsubject">Số người theo dõi</a> <br />
                                               120 người </dd>
                                        </dl>
                                    </li>
                                </ul>
                                 <ul class="topiclist forums">
                                    <li class="row">
                                        <dl class="icon forum_read">
                                            <dt title="No unread posts">
                                                <span class="ico_forum_read"></span>
                                                <div class="list-inner">
                                                    <a href="" class="forumtitle">User 1</a>
                                                    <br />Email
                                                </div>
                                            </dt>
                                            <dd class="topics">2<dfn><i class="far fa-newspaper"></i> Bài viết</dfn></dd>
                                            <dd class="posts">2<dfn><i class="far fa-thumbs-up"></i> Lượt thích</dfn></dd>
                                            <dd class="lastpost">
                                              <a href=""  class="lastsubject">Số người theo dõi</a> <br />
                                               120 người </dd>
                                        </dl>
                                    </li>
                                </ul>
                            </div>
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
