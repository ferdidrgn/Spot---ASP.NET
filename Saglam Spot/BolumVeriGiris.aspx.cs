using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IP229
{
    public partial class BolumVeriGiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_kaydet_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["Bolum_adi"].DefaultValue = TextBox1.Text;
            SqlDataSource1.InsertParameters["Bolum_tel"].DefaultValue = TextBox2.Text;
            SqlDataSource1.InsertParameters["Mudur_id"].DefaultValue = DropDownList1.SelectedValue;

            int s = SqlDataSource1.Insert();

            if (s > 0)
            {
                Label3.Text = "Yeni Bölüm Verisi <b>" +TextBox1.Text + "</b><p>Başarı İle Eklendi";
            }
            else
                Label3.Text = "Yeni Bölüm Kaydı Başarısız. Verilerinizi Kontrol Ederek Tekrar Deneyiniz";
            Label3.Visible = true;

        }

        protected void btn_kayıtAc_Click(object sender, EventArgs e)
        {
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            Label1.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            DropDownList1.Visible = true;
            btn_kaydet.Visible = true;
        }
    }
}