package br.unitins.calculadora.dto.bloco_pergunta;

import java.util.List;

import br.unitins.calculadora.dto.pergunta.PerguntaResponseDTO;

public record BlocoPerguntaResponseDTO(
    Long idBlocoPergunta,
    String titulo,
    List<PerguntaResponseDTO> listaPerguntas
) {
    
}
