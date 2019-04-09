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
    public partial class DangBaiNhanh : System.Web.UI.Page
    {
        string constr = @"Data Source=DESKTOP-MGQTNA9\SQLEXPRESS;Initial Catalog=project_web_diendantructuyen;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDSChuDe();
            }
        }
        void LoadDSChuDe()
        {
            using (SqlConnection cnn = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = cnn;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "sp_layDSChuDe";
                    //cmd.Parameters.AddWithValue("@HoTen", ten);
                    using (SqlDataAdapter ad = new SqlDataAdapter(cmd))
                    {
                        DataTable tb = new DataTable();
                        ad.Fill(tb);
                        DsChuDe.DataSource = tb;
                        DsChuDe.DataTextField = "tenchude";
                        DsChuDe.DataValueField = "MaChuDe";
                        DsChuDe.DataBind();
                    }
                }
            }
        }

        protected void btnDangBai_Click(object sender, EventArgs e)
        {
            string tb = Server.HtmlDecode(noidung.InnerText);
            //goi sp dang bai moi
            using (SqlConnection cnn = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = cnn;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "sp_TaoBaiDangMoi";
                    cmd.Parameters.AddWithValue("@tieude", txtTieuDe.Value);
                    cmd.Parameters.AddWithValue("@noidung", Server.HtmlDecode(noidung.InnerHtml));
                    cmd.Parameters.AddWithValue("@MaUser",2);
                    cmd.Parameters.AddWithValue("@MaChuDe", DsChuDe.SelectedValue);
                    cnn.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    cnn.Close();
                    Response.Write("<script>alert('Đăng bài thành công!Bạn đăng của bạn sẽ sớm được duyệt');</script>");
                }
            }
        }
    }
}