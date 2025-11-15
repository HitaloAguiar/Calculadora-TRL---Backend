package br.unitins.calculadora.repository;

import br.unitins.calculadora.model.BlocoPergunta;
import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class BlocoPerguntaRepository implements PanacheRepository<BlocoPergunta> {
    
    public BlocoPergunta findByTitulo(String titulo) {
        if (titulo == null){
            return null;
        }

        return find("titulo = ?1", titulo).firstResult();
    }
}
