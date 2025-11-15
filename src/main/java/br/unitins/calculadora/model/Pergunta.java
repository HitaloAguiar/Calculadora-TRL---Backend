package br.unitins.calculadora.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "pergunta")
public class Pergunta extends DefaultEntity {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_pergunta")
    private Long idPergunta;

    @ManyToOne
    @JoinColumn(name = "id_bloco_pergunta")
    private BlocoPergunta blocoPergunta;

    private String descricao;

    @Column(length = 1000)
    private String explicacao;

    public Long getIdPergunta() {
        return idPergunta;
    }

    public BlocoPergunta getBlocoPergunta() {
        return blocoPergunta;
    }

    public void setBlocoPergunta(BlocoPergunta blocoPergunta) {
        this.blocoPergunta = blocoPergunta;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getExplicacao() {
        return explicacao;
    }

    public void setExplicacao(String explicacao) {
        this.explicacao = explicacao;
    }
}
