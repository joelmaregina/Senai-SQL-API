using ExoApiReal.Contexts;
using ExoApiReal.Models;

namespace ExoApiReal.Repositories
{
    public class ProjetoRepository
    {
        private readonly ExoApiRealContext _context;
        public ProjetoRepository(ExoApiRealContext context)
        {
            _context = context;
        }

        public List<Projeto> Listar()
        {
            return _context.Projetos.ToList();
        }
        public Projeto BuscarPorId(int id)
        {
            return _context.Projetos.Find(id);
        }

        public void Cadastrar(Projeto projeto)
        {
            _context.Projetos.Add(projeto);
            _context.SaveChanges();

        }

        public void Atualizar(int id, Projeto projeto)
        {
            Projeto projetoBuscado = _context.Projetos.Find(id);
            if (projetoBuscado != null)
            {
                projetoBuscado.Titulo = projeto.Titulo;
                projetoBuscado.Status_Projeto = projeto.Status_Projeto;
                projetoBuscado.Data_Inicio = projeto.Data_Inicio;
                projetoBuscado.Tecnologia = projeto.Tecnologia;

            }

            _context.Projetos.Update(projetoBuscado);
            _context.SaveChanges();
        }


        public void Deletar(int id)
        {
            Projeto projeto = _context.Projetos.Find(id);

            _context.Projetos.Remove(projeto);
            _context.SaveChanges();

        }

    }
}
