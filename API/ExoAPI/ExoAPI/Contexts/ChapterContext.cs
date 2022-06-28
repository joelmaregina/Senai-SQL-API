using ExoAPI.Models;
using Microsoft.EntityFrameworkCore;

namespace ExoAPI.Contexts
{
    public class ChapterContext : DbContext
    {
        public ChapterContext()
        {
        }
        public ChapterContext(DbContextOptions<ChapterContext>options) : base(options)
        {
        }
        // vamos utilizar esse método para configurar o banco dedados
        protected override void
        OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                // cada provedor tem sua sintaxe paraespecificação
                optionsBuilder.UseSqlServer("Data Source = LAPTOP-0KP4FMIJ\\SQLEXPRESS; initial catalog = Chapter; Integrated Security = true");
            }
        }
        // dbset representa as entidades que serão utilizadas nas operações de leitura, criação, atualização e deleção
        public DbSet<Livro> Livros { get; set; }
        public DbSet<Usuario> Usuarios { get; set; } 

    }
}
