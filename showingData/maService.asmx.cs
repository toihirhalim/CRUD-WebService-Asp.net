using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace showingData
{
    /// <summary>
    /// Description résumée de maService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Pour autoriser l'appel de ce service Web depuis un script à l'aide d'ASP.NET AJAX, supprimez les marques de commentaire de la ligne suivante. 
    // [System.Web.Script.Services.ScriptService]
    public class maService : System.Web.Services.WebService
    {
        DCDataContext db = new DCDataContext();
        [WebMethod]
        public string recherche(string name)
        {
            string result = "";
            Etudiant etudiant = new Etudiant();
            etudiant = db.Etudiant.FirstOrDefault(x => x.Nom == name);
            if (etudiant != null) result += "Nom: " + etudiant.Nom + " Age: " + etudiant.Age + ".";
            return result;
        }
    }
}
