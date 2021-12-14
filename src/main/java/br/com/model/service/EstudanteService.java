package br.com.model.service;

import java.util.ArrayList;
import java.util.List;

import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.validation.Valid;

import br.com.model.entity.Estudante;
import br.com.model.repository.EstudanteRepository;

@Stateless
public class EstudanteService {

	@Inject
	EstudanteRepository repository;

	public boolean novoEstudante(@Valid Estudante estudante) {
		if (!(estudante.getNome().isBlank() || estudante.getEmail().isEmpty())) {
			repository.novoEstudante(estudante);
			return true;
		} else {
			return false;
		}
	}

	public List<Estudante> todosEstudantes() {
		List<Estudante> estudantes = repository.todosEstudantes();
		if (estudantes != null) {
			return estudantes;
		} else {
			return new ArrayList<>();
		}
	}

	public Estudante consultarEstudante(Integer id) {
		if (id != null && id > 0) {
			return repository.consultarEstudante(id);
		} else {
			return new Estudante();
		}
	}

	public boolean alterarEstudante(@Valid Estudante estudante) {
		if (estudante != null) {
			if (!(estudante.getEmail().isBlank() && estudante.getNome().isBlank())) {
				repository.alterarEstudante(estudante);
				return true;
			}
		}
		return false;
	}

	public boolean deletarEstudante(int id) {
		if (id > 0) {
			repository.deletarEstudante(id);
			return true;
		}
		return false;
	}

}
