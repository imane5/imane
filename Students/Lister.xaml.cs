using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Students
{
    /// <summary>
    /// Interaction logic for Lister.xaml
    /// </summary>
    public partial class Lister : UserControl
    {
        public static ObservableCollection<etudiant> MyItems { get; set; }
        public static ObservableCollection<Filiere> ListeFilieres { get; set; }

        public Lister()
        {
            InitializeComponent();
            MainWindow.cl = new DataClasses1DataContext();
            MyItems = new ObservableCollection<etudiant>(MainWindow.cl.etudiants.ToList());
            ListeFilieres = new ObservableCollection<Filiere>(MainWindow.cl.Filieres.ToList());

        }

        private void Grid_Loaded(object sender, RoutedEventArgs e)
        {

        }

        private void search_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            MainWindow.filiere = (Filiere)search.SelectedItem;
            string datecre = MainWindow.filiere.date_creation.ToString();
            DateTime date = Convert.ToDateTime(datecre);
            infosup.Content = MainWindow.filiere.Nom_filiere + "\n responsable : " + MainWindow.filiere.responsable+"\n date de création : " + date.ToShortDateString(); ;

            //filtrer datagrid
            //GridData.FilterDescriptors
          /*  var query = ListerFiliers.MyItems.Where(x => x.Filiere.Equals(filiere)).ToList();
            MyItems.Clear();
            ListerFiliers.MyItems =  new ObservableCollection<etudiant>(query);
            CollectionViewSource.GetDefaultView(ListerFiliers.MyItems).Refresh();*/
        }

        private void RadGridView_SelectionChanged(object sender, Telerik.Windows.Controls.SelectionChangeEventArgs e)
        {
            MainWindow.etudiant = (etudiant)GridData.SelectedItem;
            MessageBox.Show(MainWindow.etudiant.cne.ToString());
        }

        private void radButton_Click(object sender, RoutedEventArgs e)
        {
            if (MainWindow.etudiant != null)
            {
                //pass to the other user control
                //u can use etudiant the selected object because it is static

                //modif.Visibility = Visibility.Visible;
               
            }
        }
    }
}
