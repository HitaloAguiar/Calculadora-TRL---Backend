package br.unitins.calculadora.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "bloco_pergunta")
public class BlocoPergunta extends DefaultEntity {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_bloco_pergunta")
    private Long idBlocoPergunta;

    private String titulo;

    private String subtitulo;

    @Column(length = 1000)
    private String descricao;
    
    @Column(length = 1000, name = "dica_para_alcancar_nivel")
    private String dicaParaAlcancarNivel;

    @Column(name = "total_perguntas")
    private Integer totalPerguntas;

    public Long getIdBlocoPergunta() {
        return idBlocoPergunta;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public Integer getTotalPerguntas() {
        return totalPerguntas;
    }

    public void setTotalPerguntas(Integer totalPerguntas) {
        this.totalPerguntas = totalPerguntas;
    }

    public String getSubtitulo() {
        return subtitulo;
    }

    public void setSubtitulo(String subtitulo) {
        this.subtitulo = subtitulo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getDicaParaAlcancarNivel() {
        return dicaParaAlcancarNivel;
    }

    public void setDicaParaAlcancarNivel(String dicaParaAlcancarNivel) {
        this.dicaParaAlcancarNivel = dicaParaAlcancarNivel;
    }
}
