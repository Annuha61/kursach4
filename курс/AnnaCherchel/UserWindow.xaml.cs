using AnnaCherchel.Tables.Admin;
using AnnaCherchel.Tables.User;
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

namespace AnnaCherchel
{
    /// <summary>
    /// Логика взаимодействия для UserWindow.xaml
    /// </summary>
    public partial class UserWindow : Window
    {
        public UserWindow()
        {
            InitializeComponent();
            Manager.MainFrame = MainFrame;
        }
        private void Doc2_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new DocComp());
        }

        private void Doc_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new Doc());
        }

        private void Exit_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mw1 = new MainWindow();
            mw1.Show();
            this.Close();
        }
    }
}
