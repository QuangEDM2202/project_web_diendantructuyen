using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_web_diendantructuyen.admin.user
{


    public partial class danh_sach_user : System.Web.UI.Page
    {
        string constr = @"Data Source=DESKTOP-MGQTNA9\SQLEXPRESS;Initial Catalog=project_web_diendantructuyen;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            //cho an nut delete
            if (!IsPostBack)
            {
                btndelete.Enabled = false;
                FillGridView();
            }
            if (Session["HoTen"] != null)
            {
                FillGridView();
            }
            else
            {
                Response.Redirect("../login.aspx");
            }  
        }

        //button clear
        protected void btn_clear(object sender, EventArgs e)
        {
            Clear();
        }
        public void Clear()
        {
            df_contactID.Value = "";
            txtEmail.Text = txtHoTen.Text = txtPassword.Text = "";
            lblError.Text = lblThongBao.Text = "";
            btndelete.Enabled = false;
            btnsave.Text = "Thêm";
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            using (SqlConnection cnn = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = cnn;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "UserCreateOrUpdate";
                   // upload image
                    if (txtanh.HasFile)
                    {
                        //lấy đuôi ảnh
                        string duoianh = System.IO.Path.GetExtension(txtanh.FileName);
                        //cho up anh co duoi la .jpg,png,jpeg
                        if (duoianh == ".jpg" || duoianh == ".png" || duoianh == ".jpeg")
                        {
                            string path = Server.MapPath("Images\\");
                            txtanh.SaveAs(path + txtanh.FileName);

                            string tenanh = "Images/" + txtanh.FileName;

                            cmd.Parameters.AddWithValue("@anhdaidien", tenanh);
                        }
                        else
                        {
                            lblError.Text = "Không đúng định dạng file ảnh";
                        }
                    }
                    else
                    {
                        lblError.Text = "Bạn chưa chọn ảnh";
                    }
                    cmd.Parameters.AddWithValue("@id", (df_contactID.Value == "" ? 0 : Convert.ToInt32(df_contactID.Value)));
                    cmd.Parameters.AddWithValue("@hoten", txtHoTen.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@matkhau", txtPassword.Text.Trim());
                    cmd.Parameters.AddWithValue("@quyen", ddl_quyen.Text.Trim());
                    // cmd.Parameters.AddWithValue("@ngaydangky", txtngaydangky.Text.Trim());
                    //string a = txtngaydangky.Text;
                    //Response.Write(a);
                    cnn.Open();
                    cmd.ExecuteNonQuery();
                    cnn.Close();
                    string UserID = df_contactID.Value;
                    Clear();
                    if (UserID == "")
                    {
                        lblThongBao.Text = "Thêm thành công";
                    }
                    else
                    {
                        lblThongBao.Text = "Cập nhật thành công";
                    }
                    //hien thi danh sách user
                    FillGridView();           
                }
            }
        }

        void FillGridView()
        {
            using (SqlConnection cnn = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = cnn;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "sp_LoadDanhSachUser";
                    using (SqlDataAdapter ad = new SqlDataAdapter(cmd))
                    {
                        DataTable tb = new DataTable();
                        ad.Fill(tb);
                        gv_dsUSer.DataSource = tb;
                        gv_dsUSer.DataBind();
                    }
                    cnn.Close();
                }
            }
        }
        //xem user theo id
        protected void lnk_OnClick(Object sender, EventArgs e)
        {
            int UserID = Convert.ToInt32((sender as LinkButton).CommandArgument);
            using (SqlConnection cnn = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = cnn;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "UserViewByID";
                    cmd.Parameters.AddWithValue("@id", UserID);
                    using (SqlDataAdapter ad = new SqlDataAdapter(cmd))
                    {
                        DataTable tb = new DataTable();
                        ad.Fill(tb);
                        //gv_dsUSer.DataSource = tb;
                        //gv_dsUSer.DataBind();
                        cnn.Close();
                        df_contactID.Value = UserID.ToString();
                        txtEmail.Text = tb.Rows[0]["email"].ToString();
                        txtHoTen.Text = tb.Rows[0]["hoten"].ToString();
                        ddl_quyen.Text = tb.Rows[0]["quyen"].ToString();
                        btnsave.Text = "Update";
                        btndelete.Enabled = true;
                    }
                }
            }
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            using (SqlConnection cnn = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = cnn;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "UserDeleteByID";
                    cmd.Parameters.AddWithValue("@id",Convert.ToInt32(df_contactID.Value));
                    cnn.Open();
                    cmd.ExecuteNonQuery();
                    Clear();
                    FillGridView();
                    lblThongBao.Text = "Xoá thành công!";
                    cnn.Close();
                }
            }
        }
        //Phan trang
        int stt = 1;
        public string get_stt()
        {
            return Convert.ToString(stt++);
        }
        protected void gv_dsUSer_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //gv_dsUSer.PageIndex = e.NewPageIndex;   //trang hien tai
            //int trang_thu = e.NewPageIndex;      //the hien trang thu may
            //int so_dong = gv_dsUSer.PageSize;       //moi trang co bao nhieu dong
            //stt = trang_thu * so_dong + 1;
            //FillGridView();
        }
    }
}