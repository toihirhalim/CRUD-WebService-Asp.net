using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace showingData
{
    public partial class etudiant : System.Web.UI.Page
    {
        DCDataContext db = new DCDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void showData()
        {
            grd.DataSource = db.Etudiant;
            grd.DataBind();
        }
        public void effacer()
        {
            nomTxt.Text = string.Empty;
            ageInt.Text = string.Empty;
            erreur.Text = string.Empty;
            srchtxt.Text = string.Empty;
        }

        protected void insertBtn_Click(object sender, EventArgs e)
        {
            if(nomTxt.Text != "" && ageInt.Text != "" && int.TryParse(ageInt.Text,out int age) && age >=0)
            {
                String name = nomTxt.Text;
                Etudiant etudiant = db.Etudiant.SingleOrDefault(x => x.Nom == nomTxt.Text);
                if (etudiant == null)
                {
                    etudiant = new Etudiant();
                    etudiant.Nom = name;
                    etudiant.Age = age;
                    db.Etudiant.InsertOnSubmit(etudiant);
                    db.SubmitChanges();
                    effacer();
                    showData();
                }else
                {
                    effacer();
                    erreur.Text = "Error 404: " + name + " already exist !!!";
                }
            }else erreur.Text = "Error 404: the name is empty or the age is incorrect !";
        }

        protected void showbtn_Click(object sender, EventArgs e)
        {
            showData();
        }

        protected void updatebtn_Click(object sender, EventArgs e)
        {
            if (nomTxt.Text != "" && ageInt.Text != "" && int.TryParse(ageInt.Text, out int age) && age >= 0)
            {
                String name = nomTxt.Text;
                Etudiant etudiant = db.Etudiant.SingleOrDefault(x => x.Nom == name);
                if (etudiant != null)
                {
                    etudiant.Age = int.Parse(ageInt.Text);
                    db.SubmitChanges();
                    showData();
                    effacer();
                }
                else
                {
                    effacer();
                    erreur.Text = "Error 404: " + name + " does not exist !!!";
                }
            }
            else erreur.Text = "Error 404: the name is empty or the age is incorrect !!!";
        }
        

        protected void deletebtn_Click(object sender, EventArgs e)
        {
            if (nomTxt.Text != "")
            {
                Etudiant etudiant = db.Etudiant.SingleOrDefault(x => x.Nom == nomTxt.Text );
                db.Etudiant.DeleteOnSubmit(etudiant);
                db.SubmitChanges();
                effacer();
                showData();
            }
            else erreur.Text = "Error 404: the name is empty !!!";
        }

        protected void btnsrch_Click(object sender, EventArgs e)
        {
            srvc.maService srvc = new srvc.maService();
            if(srchtxt.Text != "")
            {
                srchlbl.Text = srvc.recherche(srchtxt.Text);
                effacer();
            }
        }
    }
}