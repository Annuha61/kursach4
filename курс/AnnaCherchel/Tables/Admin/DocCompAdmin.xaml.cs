using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
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

namespace AnnaCherchel.Tables.Admin
{
    /// <summary>
    /// Логика взаимодействия для DocCompAdmin.xaml
    /// </summary>
    public partial class DocCompAdmin : Page
    {
        public DocCompAdmin()
        {
            InitializeComponent();
            DGridApteca.ItemsSource = ArchEntities2.GetContext().DocumentComputer.ToList();
            UpdateClients();
        }
        private void UpdateClients()
        {
            var currentMedicines = ArchEntities2.GetContext().DocumentComputer.ToList();

            currentMedicines = currentMedicines.Where(p => p.Type.ToLower().Contains(TBoxSearch1.Text.ToLower())).ToList();
            DGridApteca.ItemsSource = currentMedicines.OrderBy(p => p.Type).ToList();
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new AddEdit1((sender as Button).DataContext as DocumentComputer));
        }

        private void TBoxSearch1_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateClients();
        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new AddEdit1(null));
        }

        private void BtnDel_Click(object sender, RoutedEventArgs e)
        {
            var DocumentComputersForRemoving = DGridApteca.SelectedItems.Cast<DocumentComputer>().ToList();
            if (MessageBox.Show($"Вы точно хотите стереть с лица земли {DocumentComputersForRemoving.Count()} документов?", "Внимание", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    ArchEntities2.GetContext().DocumentComputer.RemoveRange(DocumentComputersForRemoving);
                    ArchEntities2.GetContext().SaveChanges();
                    UpdateClients();
                    MessageBox.Show("Ну и дурак, а у меня рак!");
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, ToString());
                    DGridApteca.ItemsSource = ArchEntities2.GetContext().DocumentComputer.ToList();
                }
            }
        }

        private void BtnForm_Click(object sender, RoutedEventArgs e)
        {
            this.DGridApteca.SelectAllCells();
            this.DGridApteca.ClipboardCopyMode = DataGridClipboardCopyMode.IncludeHeader;
            ApplicationCommands.Copy.Execute(null, this.DGridApteca);
            this.DGridApteca.UnselectAllCells();
            String result = Clipboard.GetData(DataFormats.CommaSeparatedValue).ToString();
            try
            {
                //StreamWriter sw = new StreamWriter("Documents.csv");
                StreamWriter sw = new StreamWriter(new FileStream("Documents1.csv", FileMode.OpenOrCreate), Encoding.UTF32);
                sw.WriteLine(result);
                sw.Close();
                Process.Start("Documents1.csv");
            }
            catch (Exception ex)
            { }
        }
    }
}