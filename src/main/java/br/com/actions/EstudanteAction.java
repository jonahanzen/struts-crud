package br.com.actions;

import java.util.List;

import javax.ejb.Stateless;
import javax.inject.Inject;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;

import br.com.model.entity.Estudante;
import br.com.model.service.EstudanteService;

@Stateless
public class EstudanteAction extends ActionSupport {

	private List<Estudante> estudantes;

	private Estudante estudante;

	@Inject
	private EstudanteService service;

	@Action(value = "listaestudantes", results = { @Result(name = "consultar", location = "consultar.jsp") })
	public String todosEstudantes() {
		this.estudantes = service.todosEstudantes();
		return "consultar";
	}

	@Action(value = "novoestudante", results = {
			@Result(name = "success", location = "novoestudante.jsp", type = "redirect") })
	public String novoEstudante() {
		return "novoestudante";
	}

	@Action(value = "salvarEstudante", results = { @Result(name = "consultar", location = "listaestudantes", type = "redirect") })
	public String salvarEstudante() {
		System.out.println(estudante.toString());
		if (estudante.getId() != null) {
			service.alterarEstudante(estudante);
		} else {
			service.novoEstudante(estudante);
		}
		return "consultar";
	}

	@Action(value = "editarEstudante", results = { @Result(name = "editarEstudante", location = "novoestudante.jsp") })
	public String editarEstudante() {
		System.out.println(estudante.toString());
		estudante = service.consultarEstudante(estudante.getId());
		System.out.println(estudante.toString());
		return "editarEstudante";
	}
	
	@Action(value = "removerEstudante", results = {
			@Result(name = "success", location = "listaestudantes", type = "redirect")})
			public String removerEstudante() {
				service.deletarEstudante(estudante.getId());
				return "success";
			}
	
	

	public List<Estudante> getEstudantes() {
		return estudantes;
	}

	public void setEstudantes(List<Estudante> estudantes) {
		this.estudantes = estudantes;
	}

	public Estudante getEstudante() {
		return estudante;
	}

	public void setEstudante(Estudante estudante) {
		this.estudante = estudante;
	}

}
