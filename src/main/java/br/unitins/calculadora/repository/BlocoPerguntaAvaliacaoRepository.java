package br.unitins.calculadora.repository;

import br.unitins.calculadora.model.BlocoPerguntaAvaliacao;
import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class BlocoPerguntaAvaliacaoRepository implements PanacheRepository<BlocoPerguntaAvaliacao> {
    
}
