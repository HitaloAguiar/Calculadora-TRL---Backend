package br.unitins.calculadora.dto.pergunta;

import br.unitins.calculadora.model.Pergunta;

public record PerguntaResponseDTO(
    Long idPergunta,
    String descricao,
    String explicacao
) {
    
    public PerguntaResponseDTO (Pergunta pergunta) {

        this(pergunta.getIdPergunta(), pergunta.getDescricao(), pergunta.getExplicacao());
    }
}
