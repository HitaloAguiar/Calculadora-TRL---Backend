package br.unitins.calculadora.repository;

import br.unitins.calculadora.model.PerguntaAvaliacao;
import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class PerguntaAvaliacaoRepository implements PanacheRepository<PerguntaAvaliacao> {    
}
