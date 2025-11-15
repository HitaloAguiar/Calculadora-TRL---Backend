package br.unitins.calculadora.dto.avaliacao_trl;

import java.util.Map;

public record AvaliacaoTrlResponseDTO(
    String nivelAlcancado,
    String descricaoNivelAlcancado,
    String dicaParaProximoNivel,
    Map<String, Boolean> resultadoPorBloco,
    Map<String, Long> totalAcertadoPorBloco
) {
    
}
