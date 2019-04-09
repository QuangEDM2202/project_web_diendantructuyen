using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_web_diendantructuyen.admin
{
    public partial class login : System.Web.UI.Page
    {
        string constr = @"Data Source=DESKTOP-MGQTNA9\SQLEXPRESS;Initial Catalog=project_web_diendantructuyen;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login(object sender, EventArgs e)
        {
            string hoten = txtHoTen.Text;
            string matkhau = txtPassword.Text;
            //kiem tra
            if (txtHoTen.Text.Trim() == "" || txtPassword.Text.Trim() == "")
            {
                lblcheck.Text = "Bạn chưa nhập thông tin!";
                txtHoTen.Focus();
            }
            else
            {
                using (SqlConnection cnn = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.Connection = cnn;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sp_loginAdmin";
                        cmd.Parameters.AddWithValue("@hoten", hoten);
                        cmd.Parameters.AddWithValue("@matkhau", matkhau);
                        cnn.Open();
                        using (SqlDataAdapter ad = new SqlDataAdapter(cmd))
                        {
                            DataTable tb = new DataTable();
                            ad.Fill(tb);
                            if (tb.Rows.Count > 0)
                            {
                                Session["HoTen"] = txtHoTen.Text;
                                Response.Redirect("../admin/user/danh-sach-user.aspx");
                            }
                            else
                            {
                                lblthongbao.Text = " Sai tên đăng nhập hoặc mật khẩu!";
                            }
                        }
                        cnn.Close();
                    }
                }
            }
        }
    }
}