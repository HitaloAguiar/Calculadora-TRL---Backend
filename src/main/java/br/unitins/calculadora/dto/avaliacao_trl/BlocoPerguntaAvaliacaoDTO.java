package br.unitins.calculadora.dto.avaliacao_trl;

import java.util.List;

public record BlocoPerguntaAvaliacaoDTO(
    Long idBlocoPergunta,
    List<PerguntaAvaliacaoDTO> perguntas
) {
    
}
