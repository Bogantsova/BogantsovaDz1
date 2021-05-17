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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Homework1
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {


        public MainWindow()
        {
            InitializeComponent();
        }

        private void MainCheckBox_Checked(object sender, RoutedEventArgs e)
        {

        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            String Login = MainTextBox.Text;
            String password = MainPasswordBox.Password;

            try
            {
                using (var bd = new Model1())
                {
                    var user = bd.Users.FirstOrDefault(u => u.Login == MainTextBox.Text && u.Password == MainPasswordBox.Password);
                    if (user != null)
                    {

                        UserSingleton.Instance().Login = Login;
                        Meneger menegerWindow = new Meneger(UserSingleton.Instance());
                    
                        menegerWindow.Show();
                        this.Close();

                    }
                    else
                        throw new Exception("");

                }

            }
            catch (Exception)
            {
                MessageBox.Show("User not fount", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            }
        private void MainCheckBox_Click(object sender, RoutedEventArgs e)
        {
            if (MainCheckBox.IsChecked.Value)
            {
                MainPaaswordTextBox.Text = MainPasswordBox.Password;
                MainPaaswordTextBox.Visibility = Visibility.Visible;
                MainPasswordBox.Visibility = Visibility.Hidden;
            }
            else
            {
                MainPasswordBox.Password = MainPaaswordTextBox.Text;
                MainPaaswordTextBox.Visibility = Visibility.Hidden;
                MainPasswordBox.Visibility = Visibility.Visible;
            }
        }
    }
        }
    
            
    

