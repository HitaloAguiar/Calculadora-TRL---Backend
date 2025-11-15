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
@Table(name = "pergunta_avaliacao")
public class PerguntaAvaliacao extends DefaultEntity {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_pergunta_avaliacao")
    private Long idPerguntaAvaliacao;

    @ManyToOne
    @JoinColumn(name = "id_avaliacao_trl")
    private AvaliacaoTrl avaliacaoTrl;

    @ManyToOne
    @JoinColumn(name = "id_pergunta")
    private Pergunta pergunta;

    private Integer resposta;

    public Long getIdPerguntaAvaliacao() {
        return idPerguntaAvaliacao;
    }

    public AvaliacaoTrl getAvaliacaoTrl() {
        return avaliacaoTrl;
    }

    public void setAvaliacaoTrl(AvaliacaoTrl avaliacaoTrl) {
        this.avaliacaoTrl = avaliacaoTrl;
    }

    public Pergunta getPergunta() {
        return pergunta;
    }

    public void setPergunta(Pergunta pergunta) {
        this.pergunta = pergunta;
    }

    public Integer getResposta() {
        return resposta;
    }

    public void setResposta(Integer resposta) {
        this.resposta = resposta;
    }
}
