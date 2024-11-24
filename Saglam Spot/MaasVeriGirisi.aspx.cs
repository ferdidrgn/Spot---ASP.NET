using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IP229
{
    public partial class MaasVeriGirisi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_kaydet_Click(object sender, EventArgs e)
        {
            SqlDataSource2.InsertParameters["Pers_id"].DefaultValue = DropDownList1.SelectedValue;
            SqlDataSource2.InsertParameters["Maas_Odeme_Tarihi"].DefaultValue = TextBox1.Text;
            SqlDataSource2.InsertParameters["Maas_Tutari"].DefaultValue = TextBox2.Text;
            SqlDataSource2.InsertParameters["Maas_komisyon"].DefaultValue = TextBox3.Text;
            SqlDataSource2.InsertParameters["Ay_id"].DefaultValue = TextBox4.Text;

            int s = SqlDataSource2.Insert();

            if (s>0)
            {
                label1.Text = "Yeni Personel Maaş Bilgisi <b>" + DropDownList1.SelectedItem + "</b><p>Başarı İle Eklendi";
            }
            else
                label1.Text = "Yeni Personel Kaydı Başarısız. Verilerinizi Kontrol Ederek Tekrar Deneyiniz";
            label1.Visible = true;
           
        }
    }
}