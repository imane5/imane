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
using System.Windows.Shapes;

namespace Students
{
    /// <summary>
    /// Interaction logic for test.xaml
    /// </summary>
    public partial class test : Window
    {
        private Lister lister;
        private int id;

        public test()
        {
            InitializeComponent();
        }

        public test(Lister lister, int id)
        {
            // TODO: Complete member initialization
            this.lister = lister;
            this.id = id;
        }

       
    }
}
