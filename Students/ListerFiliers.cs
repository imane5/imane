using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Students
{
    public class ListerFiliers
    {
        public static ObservableCollection<etudiant> MyItems { get; set; }
        public static ObservableCollection<Filiere> ListeFilieres { get; set; }
        public static DataClasses1DataContext cl;

        static ListerFiliers()
        {
             cl = new DataClasses1DataContext();
             MyItems = new ObservableCollection<etudiant>(cl.etudiants.ToList());
             ListeFilieres = new ObservableCollection<Filiere>(cl.Filieres.ToList());
        }
    }
}
