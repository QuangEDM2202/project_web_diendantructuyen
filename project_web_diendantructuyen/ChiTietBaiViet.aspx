<%@ Page Title="Bài Viết" Language="C#" MasterPageFile="~/MasterPage/Client.Master" AutoEventWireup="true" CodeBehind="ChiTietBaiViet.aspx.cs" Inherits="project_web_diendantructuyen.ChiTietBaiViet" %>
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
                            <h4 class="side-block-head"><a href="n">Thành viên</a></h4>
                            <div class="side-block-body">
                                <fieldset>
                                   <p>Họ Tên : <i>Hùng</i> </p> 
                                   <p>Email : <i>Hùng12@gmail.com</i> </p> 
                                   <p>Địa chỉ : <i>Hà Nội</i> </p> 
                                   <p>Số bài viết : <i>2</i> </p> 
                                   <p>Điểm thành tích : <i>5</i> </p> 
                               </fieldset>
                           </div>
                       </form>
                   </div>
               </div>
               <div id="forumlist">
                <div id="forumlist-inner">
                    <div class="forabg">
                        <div class="inner">
                            <ul class="topiclist">
                                <li class="header">
                                    <dl class="icon">
                                        <dt><div class="list-inner"><a href="">Bài viết</a></div></dt>
                                    </dl>
                                </li>
                            </ul>
                            <ul class="topiclist forums">
                                <li class="row">
                                    <dl class="icon forum_read">
                                        <dt title="No unread posts">
                                            <span class="ico_forum_read"></span>
                                            <div class="list-inner">
                                                <p>Anh chị cho em hỏi ạ ? 
                                                    Ngôn ngữ ASP.NET webform hiện còn hot không ạ ? <br/> Ra trường liệu có tìm được việc làm hay không ạ?
                                                    Em xin cảm ơn ạ!
                                                </p> 
                                            </div>
                                        </dt>
                                        <dd class="topics">  2<dfn><i class="fas fa-eye"></i> Lượt xem</dfn></dd>

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

                    <!-- Câu trả lời -->
                    <div class="forabg">
                        <div class="inner">
                            <ul class="topiclist">
                                <li class="header">
                                    <dl class="icon">
                                        <dt><div class="list-inner"><a href="">Trả lời</a></div></dt>
                                    </dl>
                                </li>
                            </ul>
                            <ul class="topiclist forums">
                                <li class="row">
                                    <dl class="icon forum_read">
                                        <dt title="No unread posts">
                                            <span class="ico_forum_read"></span>
                                            <div class="list-inner">
                                                <p> Ngôn ngữ này vẫn còn nhiều công ty đang tuyển dụng em nhé!<br/>
                                                    Ra trường vẫn còn rất nhiều cơ hội và lương cũng như mấy ngôn ngữ khác thôi ^^ <br/>
                                                    Chúc em cố gắng học tốt nhé!    
                                                </p> 
                                            </div>
                                        </dt>
                                        <dd class="posts">2<dfn><i class="far fa-thumbs-up"></i> Lượt thích</dfn></dd>
                                        <dd class="lastpost">
                                            <dfn>Last post</dfn><a href=""  class="lastsubject">Đăng bởi</a> <br />
                                            thành viên <a href="" style="color: #AA0000;" class="username-coloured">Chung</a>
                                        24/02/2015, 21:59 </dd>
                                    </dl>
                                </li>
                            </ul>
                            <ul class="topiclist forums">
                                <li class="row">
                                    <dl class="icon forum_read">
                                        <dt title="No unread posts">
                                            <span class="ico_forum_read"></span>
                                            <div class="list-inner">
                                                <p> Anh hiện tại đang làm cho công ty ABC về ngôn ngữ này!<br/>
                                                    Công việc của anh hiện cũng rất ổn định, nên em không phải lo nhé ! <br/>
                                                </p> 
                                            </div>
                                        </dt>
                                        <dd class="posts">10<dfn><i class="far fa-thumbs-up"></i> Lượt thích</dfn></dd>
                                        <dd class="lastpost">
                                            <dfn>Last post</dfn><a href=""  class="lastsubject">Đăng bởi</a> <br />
                                            thành viên <a href="" style="color: #AA0000;" class="username-coloured">Tuấn</a>
                                        24/02/2015, 22:59 </dd>
                                    </dl>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- Bình luận -->
                    <div class="forabg">
                        <div class="inner">
                            <ul class="topiclist">
                                <li class="header">
                                    <dl class="icon">
                                        <dt><div class="list-inner"><a href="">Bình luận</a></div></dt>
                                    </dl>
                                </li>
                            </ul>
                            <ul class="topiclist forums">
                                <li class="row">
                                    <dl class="icon forum_read">
                                        <dt title="No unread posts">
                                            <span class="ico_forum_read"></span>
                                            <div class="list-inner" style="width: 100%">
                                               <form action="chi-tiet-bai-viet_submit" method="get" accept-charset="utf-8">
                                                  <textarea name="content" class="inputbox autowidth">                      
                                                </textarea>
                                                <br>
                                                 <input type="submit" name="register" tabindex="6" value="Bình luận" class="button1" />
                                               </form>
                                            </div>
                                        </dt>
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
<script>
    $(document).ready(function(){
        tinymce.init({
            selector : 'textarea'
        });
    });
</script>
</asp:Content>
