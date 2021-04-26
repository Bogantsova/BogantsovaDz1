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

namespace Homework1
{
    /// <summary>
    /// Логика взаимодействия для Meneger.xaml
    /// </summary>
    public partial class Meneger : Window
    {
        public Meneger()
        {
            InitializeComponent();
        }

        private void DataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Zakazi Zakazi = new Zakazi();
            Zakazi.Show();

        }
    }
}
