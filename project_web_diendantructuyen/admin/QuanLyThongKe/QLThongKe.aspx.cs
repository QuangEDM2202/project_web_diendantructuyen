using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_web_diendantructuyen.admin.QuanLyThongKe
{
    public partial class QLThongKe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string strHTML = "<p>Hello World!</p></br><h3>How to i send you a love</h3>";
                // dung encode va decode de giai quyet
                //encode la luu cac the y het vao db dung de luu vao
                //decode la hien thi no ra. dung de doc ra
                Label1.Text = Server.HtmlEncode(strHTML);
                //Label1.Text = (strHTML);
            }
        }
    }
}