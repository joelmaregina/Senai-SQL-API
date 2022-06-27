using ExoAPI.Contexts;
using ExoAPI.Models;

namespace ExoAPI.Repositories
{
    public class LivroRepository
    {
        private readonly ChapterContext _context;
        public LivroRepository(ChapterContext context)
        {
            _context = context;
        }

        public List<Livro> Listar() 
        {
            return _context.Livros.ToList();
        }
    }
}
