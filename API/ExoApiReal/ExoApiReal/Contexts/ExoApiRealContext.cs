using ExoApiReal.Models;
using Microsoft.EntityFrameworkCore;

namespace ExoApiReal.Contexts
{
    public class ExoApiRealContext : DbContext
    {
        public ExoApiRealContext()
        {
        }
        public ExoApiRealContext(DbContextOptions<ExoApiRealContext> options) : base(options)
        {
        }
        // vamos utilizar esse método para configurar o banco de dados
        protected override void
        OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                // cada provedor tem sua sintaxe para especificação
                optionsBuilder.UseSqlServer("Data Source = LAPTOP-0KP4FMIJ\\SQLEXPRESS; initial catalog = Projetos; Integrated Security = true");
            }
        }
        // dbset representa as entidades que serão utilizadas nas operações de leitura, criação, atualização e deleção
        public DbSet<Projeto> Projetos { get; set; }
        public DbSet<Usuario> Usuarios { get; set; }
    }
}

