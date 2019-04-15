using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_web_diendantructuyen.admin.QuanLyBaiDang
{
    public partial class QLBaiDang : System.Web.UI.Page
    {
        string constr = @"Data Source=DESKTOP-MGQTNA9\SQLEXPRESS;Initial Catalog=project_web_diendantructuyen;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadDSBaiDang();
                loadThongTin();
            }
        }
        void loadDSBaiDang()
        {
            using (SqlConnection cnn = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = cnn;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "sp_getDSBaiDangKhongNoiDung";
                    //cmd.Parameters.AddWithValue("@HoTen", ten);
                    using (SqlDataAdapter ad = new SqlDataAdapter(cmd))
                    {
                        DataTable tb = new DataTable();
                        ad.Fill(tb);
                        DsBaiDang.DataSource = tb;
                        DsBaiDang.DataBind();
                    }
                }
            }
        }
        void loadThongTin()
        {
            using (SqlConnection cnn = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = cnn;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "sp_DemSLTungLoaiBaiDang";
                    cnn.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    while (rd.Read())
                    {
                        SLChuaDuyet.Text = Convert.ToString(rd.GetInt32(0));
                        SLDaDuyet.Text= Convert.ToString(rd.GetInt32(1));
                        SLKhongDuyet.Text = Convert.ToString(rd.GetInt32(2));
                    }
                    rd.Close();
                }
            }
        }

        protected void DsBaiDang_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Chuyen"))
            {
                int MaBaiDang = Convert.ToInt16(e.CommandArgument);
                Response.Redirect("ChiTietDuyetBai.aspx?idChiTietBaiDang="+ MaBaiDang+"");
            }
        }

        protected void DsBaiDang_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            DsBaiDang.PageIndex = e.NewPageIndex;
            loadDSBaiDang();
        }
    }
}