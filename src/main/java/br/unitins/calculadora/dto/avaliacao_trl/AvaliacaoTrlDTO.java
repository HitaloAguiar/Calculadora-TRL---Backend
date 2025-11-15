package br.unitins.calculadora.dto.avaliacao_trl;

import java.util.List;

public record AvaliacaoTrlDTO(
    List<BlocoPerguntaAvaliacaoDTO> formulario
) {
    
}
