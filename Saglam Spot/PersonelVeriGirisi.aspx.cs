using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IP229
{
    public partial class PersonelVeriGirisi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSourceKayıt.InsertParameters["Pers_adi"].DefaultValue = TextBox1.Text;
            SqlDataSourceKayıt.InsertParameters["Pers_soyadi"].DefaultValue = TextBox2.Text;
            SqlDataSourceKayıt.InsertParameters["Pers_cinsiyeti"].DefaultValue = RadioButtonList1.SelectedValue;
            SqlDataSourceKayıt.InsertParameters["Pers_DTarihi"].DefaultValue = TextBox3.Text;
            SqlDataSourceKayıt.InsertParameters["Pers_unvan"].DefaultValue = DropDownListUnvan.SelectedValue;
            SqlDataSourceKayıt.InsertParameters["Bolum_id"].DefaultValue = DropDownListBolum.SelectedValue;
            SqlDataSourceKayıt.InsertParameters["Per_Ise_Giris_Tar"].DefaultValue = TextBox4.Text;
            //işten çıkış
            SqlDataSourceKayıt.InsertParameters["Pers_cep"].DefaultValue = TextBox6.Text;
            SqlDataSourceKayıt.InsertParameters["Pers_email"].DefaultValue = TextBox7.Text;
            SqlDataSourceKayıt.InsertParameters["Pers_adresi"].DefaultValue = TextBox8.Text;
            SqlDataSourceKayıt.InsertParameters["Pers_kenti"].DefaultValue = DropDownListIlce.SelectedValue;
            SqlDataSourceKayıt.InsertParameters["Pers_ili"].DefaultValue = DropDownListIl.SelectedValue;
            SqlDataSourceKayıt.InsertParameters["Pers_Ulke"].DefaultValue = DropDownListUlke.SelectedValue;
            //Pers foto

            //Aktif mi kodu aşağıda
            bool d = false;
            if (CheckBox1.Checked == true)
            {
                d = true;
            }
            SqlDataSourceKayıt.InsertParameters["Pers_aktif_mi"].DefaultValue = d.ToString();

            int s = SqlDataSourceKayıt.Insert();

            if (s > 0)
            {
                Label1.Text = "Yeni Personel Maaş Bilgisi <b>" + DropDownListUnvan.SelectedItem + "</b><p>Başarı İle Eklendi";
            }
            else
                Label1.Text = "Yeni Personel Kaydı Başarısız. Verilerinizi Kontrol Ederek Tekrar Deneyiniz";
            Label1.Visible = true;
        }
    }
}