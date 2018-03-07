using System;
using System.Collections.Generic;
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
    /// Interaction logic for Modifier.xaml
    /// </summary>
    public partial class Modifier : UserControl
    {
       
        public Modifier()
        {
            InitializeComponent();

        }

        private void radButton_Click(object sender, RoutedEventArgs e)
        {
           
            MainWindow.cl.SubmitChanges();
        }

        private void DataFormDataField_LostFocus(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Entrez les elements");
        }
    }
}
