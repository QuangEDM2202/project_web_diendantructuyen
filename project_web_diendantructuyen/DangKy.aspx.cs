using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_web_diendantructuyen
{
    public partial class DangKy : System.Web.UI.Page
    {
        string constr = @"Data Source=DESKTOP-MGQTNA9\SQLEXPRESS;Initial Catalog=project_web_diendantructuyen;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_dangky(object sender, EventArgs e)
        {
            //check khi thêm email trùng nhau
            using (SqlConnection cnn = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = cnn;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "sp_checkEmail";
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
                    cnn.Open();
                    int kt = (int)cmd.ExecuteScalar();
                    if (kt > 0)
                    {
                        lblThongBao.Text = "Tài khoản của bạn đã có người dùng, xin mời bạn nhập lại!";
                    }
                    else
                    {
                        cmd.Connection = cnn;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sp_themUser";
                        cmd.Parameters.AddWithValue("@hoten", txtHoTen.Text.Trim());
                        cmd.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
                        cmd.Parameters.AddWithValue("@matkhau", txtPassword.Text.Trim());
                        cnn.Open();
                        int i = (int)cmd.ExecuteNonQuery();
                        if (i > 0)
                        {
                            lblThongBao.Text = "Đăng ký thành công, mời bạn đăng nhập để xem chi tiết hơn!";
                            HyperLinkLogin.Visible = true;
                        }
                        else
                        {
                            lblError.Text = "Đăng ký thất bại!";
                        }
                        cnn.Close();
                        Clear();
                      }
                }
            }
        }
        public void Clear()
        {
            txtEmail.Text = txtHoTen.Text = txtPassword.Text = "";
            //lblError.Text = lblThongBao.Text = "";

        }
    }
}