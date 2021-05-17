using Homework1.Entites;
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
    /// Логика взаимодействия для Zakazi.xaml
    /// </summary>
    public partial class Zakazi : Window
    {
        private Order _order = new Order();
        public Zakazi()
        {
            InitializeComponent();
            DataContext = _order;
            DataGridNewOrder.ItemsSource = Model1.GetContext().Client.ToList();
            ComboBoxClient.ItemsSource = Model1.GetContext().UserOfClient.ToList();
            ComboBoxProduct.ItemsSource = Model1.GetContext().Products.ToList();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            if (string.IsNullOrWhiteSpace(_order.OrderName))
            {
                errors.AppendLine("Введите клиента!");
            }
            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }
            if (_order.Id == 0)
            {
                Model1.GetContext().Order.Add(_order);
                try
                {
                    Model1.GetContext().SaveChanges();
                    MessageBox.Show("Сохранено!");
                }
                catch (Exception ex)
                {

                    MessageBox.Show(ex.Message.ToString());
                }

            }
        }


        private void Page_IsVisiblechaged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                Model1.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
               
                DataGridNewOrder.ItemsSource = Model1.GetContext().Order.ToList();
            }
        }

        private void DataGridNewOrder_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
