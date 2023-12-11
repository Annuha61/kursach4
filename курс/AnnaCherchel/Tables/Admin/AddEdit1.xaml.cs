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

namespace AnnaCherchel.Tables.Admin
{
    /// <summary>
    /// Логика взаимодействия для AddEdit1.xaml
    /// </summary>
    public partial class AddEdit1 : Page
    {
        private DocumentComputer _currentDocumentComputer = new DocumentComputer();
        public AddEdit1(DocumentComputer selectedDocumentComputer)
        {
            InitializeComponent();
            if (selectedDocumentComputer != null)
                _currentDocumentComputer = selectedDocumentComputer;

            DataContext = _currentDocumentComputer;
        }
        private void BtnSaveAndExit_Click(object sender, RoutedEventArgs e)
        {
            {
                StringBuilder errors = new StringBuilder();
                if (string.IsNullOrWhiteSpace(_currentDocumentComputer.Type))
                    errors.AppendLine("Укажите тип документа.");
                if (_currentDocumentComputer.Date_start == null)
                    errors.AppendLine("Укажите дату хранения(с).");
                if (_currentDocumentComputer.Date_end == null)
                    errors.AppendLine("Укажите дату хранения(по).");
                if (errors.Length > 0)
                {
                    MessageBox.Show(errors.ToString());
                    return;
                }
                // тут идет проверка на ввод данных
                if (_currentDocumentComputer.id == 0)
                    ArchEntities2.GetContext().DocumentComputer.Add(_currentDocumentComputer);
                try
                {
                    ArchEntities2.GetContext().SaveChanges();
                    MessageBox.Show("Информация сохранена!");
                    Manager.MainFrame.GoBack();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }

        }
        private void TextBox_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
        }
    }
}
