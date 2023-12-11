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

namespace AnnaCherchel.Tables.User
{
    /// <summary>
    /// Логика взаимодействия для Doc.xaml
    /// </summary>
    public partial class Doc : Page
    {
        public Doc()
        {
            InitializeComponent();
            DGridApteca.ItemsSource = ArchEntities2.GetContext().Document.ToList();
            UpdateClients();
        }
        private void UpdateClients()
        {
            var currentMedicines = ArchEntities2.GetContext().Document.ToList();

            currentMedicines = currentMedicines.Where(p => p.Type.ToLower().Contains(TBoxSearch1.Text.ToLower())).ToList();
            DGridApteca.ItemsSource = currentMedicines.OrderBy(p => p.Type).ToList();
        }
        private void TBoxSearch1_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateClients();
        }
    }
}
