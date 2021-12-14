package br.com.model.repository;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import br.com.model.entity.Estudante;

@Stateless
@Transactional
public class EstudanteRepository {
	
	@PersistenceContext
	private EntityManager em;
	
	public void novoEstudante(Estudante estudante) {
		em.persist(estudante);
	}
	
	public List<Estudante> todosEstudantes() {
		return em.createQuery("select e from Estudante e order by e.id", Estudante.class).getResultList();
	}
	
	public Estudante consultarEstudante(int id) {
		return em.find(Estudante.class, id);
	}
	
	public void alterarEstudante(Estudante novoEstudante) {
//		Estudante estudante =
				em.merge(novoEstudante);
//		em.persist(estudante);
	}
	
	public void deletarEstudante(int id) {
	Estudante estudante = consultarEstudante(id);
	em.remove(estudante);
	}
	
	

}
