package br.unitins.calculadora.service;

import java.util.List;

import br.unitins.calculadora.dto.avaliacao_trl.AvaliacaoTrlDTO;
import br.unitins.calculadora.dto.avaliacao_trl.AvaliacaoTrlResponseDTO;
import br.unitins.calculadora.dto.bloco_pergunta.BlocoPerguntaResponseDTO;

public interface AvaliacaoTrlService {

    List<BlocoPerguntaResponseDTO> getPerguntas();
    
    AvaliacaoTrlResponseDTO avaliarNivelTrl(AvaliacaoTrlDTO avaliacaoTrlDTO);
}
