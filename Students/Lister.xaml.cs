using Microsoft.Win32;
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
using Telerik.Windows.Data;

namespace Students
{
    /// <summary>
    /// Interaction logic for Lister.xaml
    /// </summary>
    public partial class Lister : UserControl
    {
        public static ObservableCollection<etudiant> MyItems { get; set; }
        public static ObservableCollection<etudiant> lister { get; set; }
        public static ObservableCollection<Filiere> ListeFilieres { get; set; }
        public static int id;
    
        public Lister()
        {
            InitializeComponent();
            MainWindow.cl = new DataClasses2DataContext();
            MyItems = new ObservableCollection<etudiant>(MainWindow.cl.etudiants.ToList());
            ListeFilieres = new ObservableCollection<Filiere>(MainWindow.cl.Filieres.ToList());
        }

        private void Grid_Loaded(object sender, RoutedEventArgs e)
        {}

        FilterDescriptor filter = new FilterDescriptor();
        private void search_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            MainWindow.filiere = (Filiere)search.SelectedItem;
            string datecre = MainWindow.filiere.date_creation.ToString();
            DateTime date = Convert.ToDateTime(datecre);
            infosup.Content = MainWindow.filiere.Nom_filiere + "\n responsable : " + MainWindow.filiere.responsable+"\n date de création : " + date.ToShortDateString(); 

            //trier datagridview
            MyItems = new ObservableCollection<etudiant>((from c in MainWindow.cl.etudiants where c.Filiere.Nom_filiere == MainWindow.filiere.Nom_filiere select c).ToList());
           
            filter.Operator = FilterOperator.Contains;
            filter.Value = MainWindow.filiere.Nom_filiere;
            filter.Member = "Filiere.Nom_Filiere";
            this.GridData.FilterDescriptors.Add(filter);

        }

        private void RadGridView_SelectionChanged(object sender, Telerik.Windows.Controls.SelectionChangeEventArgs e)
        {
            MainWindow.etudiant = (etudiant)GridData.SelectedItem;
            id = Convert.ToInt32(MainWindow.etudiant.cne);
        }

        //Clicker sur Modifier
        private void radButton_Click(object sender, RoutedEventArgs e)
        {      
            if (id != 0)
            {
                MainWindow.cl = new DataClasses2DataContext();
                lister = new ObservableCollection<etudiant>((from c in MainWindow.cl.etudiants
                                                             orderby c.cne == Lister.id descending
                                                             select c).ToList());
            }
            gridMain.Children.Clear();
            gridMain.Children.Add(new Modifier());
        }

        private void search_TouchDown(object sender, TouchEventArgs e)
        {
            this.GridData.FilterDescriptors.Remove(filter);
        }


        private void radButton1_Click(object sender, RoutedEventArgs e)
        {
            this.GridData.FilterDescriptors.Remove(filter);
        }
    }
}
