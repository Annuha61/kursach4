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
    /// Логика взаимодействия для AddEdit.xaml
    /// </summary>
    public partial class AddEdit : Page
    {
        private Document _currentDocument = new Document();
        public AddEdit(Document selectedDocument)
        {
            InitializeComponent();
            if (selectedDocument != null)
                _currentDocument = selectedDocument;

            DataContext = _currentDocument;
        }
        private void BtnSaveAndExit_Click(object sender, RoutedEventArgs e)
        {
            {
                StringBuilder errors = new StringBuilder();
                if (string.IsNullOrWhiteSpace(_currentDocument.Type))
                    errors.AppendLine("Укажите тип документа.");
                if (_currentDocument.Date_start == null)
                    errors.AppendLine("Укажите дату хранения(с).");
                if (_currentDocument.Date_end == null)
                    errors.AppendLine("Укажите дату хранения(по).");
                if (errors.Length > 0)
                {
                    MessageBox.Show(errors.ToString());
                    return;
                }
                // тут идет проверка на ввод данных
                if (_currentDocument.id == 0)
                    ArchEntities2.GetContext().Document.Add(_currentDocument);
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
