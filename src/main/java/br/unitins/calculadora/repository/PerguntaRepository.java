package br.unitins.calculadora.repository;

import java.util.List;

import br.unitins.calculadora.model.BlocoPergunta;
import br.unitins.calculadora.model.Pergunta;
import io.quarkus.hibernate.orm.panache.PanacheRepository;
import io.quarkus.panache.common.Sort;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class PerguntaRepository implements PanacheRepository<Pergunta> {
    
    public List<Pergunta> findByBlocoPergunta(BlocoPergunta blocoPergunta, Sort sort) {

        if (blocoPergunta == null){
            return null;
        }

        return find("blocoPergunta = ?1", sort, blocoPergunta).list();
    }
}
