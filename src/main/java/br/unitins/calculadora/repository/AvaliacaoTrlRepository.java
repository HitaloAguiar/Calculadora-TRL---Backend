package br.unitins.calculadora.repository;

import br.unitins.calculadora.model.AvaliacaoTrl;
import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class AvaliacaoTrlRepository implements PanacheRepository<AvaliacaoTrl> {
    
}
