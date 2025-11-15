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
@Table(name = "bloco_pergunta_avaliacao")
public class BlocoPerguntaAvaliacao extends DefaultEntity {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_bloco_pergunta_avaliacao")
    private Long idBlocoPerguntaAvaliacao;

    @ManyToOne
    @JoinColumn(name = "id_avaliacao_trl")
    private AvaliacaoTrl avaliacaoTrl;

    @ManyToOne
    @JoinColumn(name = "id_bloco_pergunta")
    private BlocoPergunta blocoPergunta;

    @Column(name = "total_respostas_sim")
    private Long totalRespostasSim;

    public Long getIdBlocoPerguntaAvaliacao() {
        return idBlocoPerguntaAvaliacao;
    }

    public AvaliacaoTrl getAvaliacaoTrl() {
        return avaliacaoTrl;
    }

    public void setAvaliacaoTrl(AvaliacaoTrl avaliacaoTrl) {
        this.avaliacaoTrl = avaliacaoTrl;
    }

    public BlocoPergunta getBlocoPergunta() {
        return blocoPergunta;
    }

    public void setBlocoPergunta(BlocoPergunta blocoPergunta) {
        this.blocoPergunta = blocoPergunta;
    }

    public Long getTotalRespostasSim() {
        return totalRespostasSim;
    }

    public void setTotalRespostasSim(Long totalRespostasSim) {
        this.totalRespostasSim = totalRespostasSim;
    }
}
