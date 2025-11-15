package br.unitins.calculadora.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "avaliacao_trl")
public class AvaliacaoTrl extends DefaultEntity {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_avaliacao_trl")
    private Long idAvaliacaoTrl;

    @Column(name = "nivel_alcancado")
    private String nivelAlcancado;

    public Long getIdAvaliacaoTrl() {
        return idAvaliacaoTrl;
    }

    public String getNivelAlcancado() {
        return nivelAlcancado;
    }

    public void setNivelAlcancado(String nivelAlcancado) {
        this.nivelAlcancado = nivelAlcancado;
    }
}
