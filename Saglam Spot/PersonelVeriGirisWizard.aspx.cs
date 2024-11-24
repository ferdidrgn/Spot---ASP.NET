using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IP229
{
    public partial class PersonelVeriGirisWizard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            SqlDataSourceKayıt.InsertParameters["Pers_adi"].DefaultValue = TextBox1.Text;
            SqlDataSourceKayıt.InsertParameters["Pers_soyadi"].DefaultValue = TextBox2.Text;
            SqlDataSourceKayıt.InsertParameters["Pers_DTarihi"].DefaultValue = TextBox3.Text;
            SqlDataSourceKayıt.InsertParameters["Per_Ise_Giris_Tar"].DefaultValue = TextBox8.Text;
            SqlDataSourceKayıt.InsertParameters["Pers_unvan"].DefaultValue = DropDownListUnvan.SelectedValue;
            SqlDataSourceKayıt.InsertParameters["Pers_cinsiyeti"].DefaultValue = RadioButtonList1.SelectedValue;
            SqlDataSourceKayıt.InsertParameters["Pers_tel"].DefaultValue = TextBox4.Text;
            SqlDataSourceKayıt.InsertParameters["Pers_cep"].DefaultValue = TextBox5.Text;
            SqlDataSourceKayıt.InsertParameters["Pers_email"].DefaultValue = TextBox6.Text;
            SqlDataSourceKayıt.InsertParameters["Bolum_id"].DefaultValue = DropDownListBolum.SelectedValue; ;
            SqlDataSourceKayıt.InsertParameters["Pers_adresi"].DefaultValue = TextBox7.Text;
            SqlDataSourceKayıt.InsertParameters["Pers_kenti"].DefaultValue = DropDownListKent.SelectedValue;
            SqlDataSourceKayıt.InsertParameters["Pers_ili"].DefaultValue = DropDownListIl.SelectedValue;

            /*
            bool d = false;
            if (CheckBox1.Checked == true) 
            {
                d=True;
            }
            SqlDataSource1.InsertParameters["Pers_aktif_mi"].DefaultValue = d.ToString();
            */

            int s = SqlDataSourceKayıt.Insert();

            if (s > 0)
            {
                Label2.Text = "Yeni Personel Bilgisi: <b>" + TextBox2.Text + "</b><p>Başarı ile Eklendi";
                Label2.Visible = true;
            }
            else
                Label2.Text = "Yeni Personel Kaydı Başarısız. Verilerinizi Kontrol ettikten sonra Tekrar deneyiniz";
                Label2.Visible = true;
        }


        protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if (e.NextStepIndex == Wizard1.WizardSteps.Count - 2)
            {
                Label1.Text = "<p>Adı: " + TextBox1.Text + "</p><p>Soyadı: " + TextBox2.Text + "</p><p>DTarihi: " + TextBox3.Text + "</p><p>Giriş Tarihi: " + TextBox8.Text
                    + "</p><p>Unvanı: " + DropDownListUnvan.SelectedItem + "</p><p>Cinsiyeti: " + RadioButtonList1.SelectedItem + "</p><p>Tel: " + TextBox4.Text + 
                    "</p><p>Cep: " + TextBox5.Text + "</p><p>Email: " + TextBox6.Text + "</p><p>Bölümü: " + DropDownListBolum.SelectedItem;
                //+ "</p><p>Kuruluş Tarihi: " + Calendar1.SelectedDate.ToShortDateString()
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}