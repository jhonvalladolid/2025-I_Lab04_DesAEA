using Microsoft.Data.SqlClient;
using System.Data;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Lab04
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        //private readonly string connectionString = "Data Source=LAB411-005\\SQLEXPRESS;Initial Catalog=Neptuno;Integrated Security=True;TrustServerCertificate=True";
        private readonly string connectionString = "Data Source=LAB411-005\\SQLEXPRESS;Initial Catalog=Neptuno;User ID=userJhon;Password=Tecsup00;TrustServerCertificate=True;";

        public MainWindow()
        {
            InitializeComponent();
        }

        private void btnListarProductos_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                using SqlConnection conn = new SqlConnection(connectionString);
                using SqlCommand cmd = new SqlCommand("USP_ListarProductos", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                List<Producto> productos = new List<Producto>();

                while (reader.Read())
                {
                    productos.Add(new Producto
                    {
                        idproducto = reader.GetInt32(reader.GetOrdinal("idproducto")),
                        nombreProducto = reader.GetString(reader.GetOrdinal("nombreProducto")),
                        precioUnidad = reader.GetDecimal(reader.GetOrdinal("precioUnidad")),
                        unidadesEnExistencia = reader.GetInt16(reader.GetOrdinal("unidadesEnExistencia"))
                    });
                }

                dgProductos.ItemsSource = productos;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al listar productos: " + ex.Message);
            }
        }

        private void btnListarCategorias_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                using SqlConnection conn = new SqlConnection(connectionString);
                using SqlCommand cmd = new SqlCommand("USP_ListarCategorias", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                List<Categoria> categorias = new List<Categoria>();

                while (reader.Read())
                {
                    categorias.Add(new Categoria
                    {
                        idcategoria = reader.GetInt32(reader.GetOrdinal("idcategoria")),
                        nombrecategoria = reader.GetString(reader.GetOrdinal("nombrecategoria")),
                        descripcion = reader.IsDBNull(reader.GetOrdinal("descripcion")) ? "" : reader.GetString(reader.GetOrdinal("descripcion"))
                    });
                }

                dgCategorias.ItemsSource = categorias;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al listar categorias: " + ex.Message);
            }
        }
    }
}