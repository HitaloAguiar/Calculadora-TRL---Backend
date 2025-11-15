package br.unitins.calculadora.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import br.unitins.calculadora.dto.avaliacao_trl.AvaliacaoTrlDTO;
import br.unitins.calculadora.dto.avaliacao_trl.AvaliacaoTrlResponseDTO;
import br.unitins.calculadora.dto.avaliacao_trl.BlocoPerguntaAvaliacaoDTO;
import br.unitins.calculadora.dto.avaliacao_trl.PerguntaAvaliacaoDTO;
import br.unitins.calculadora.dto.bloco_pergunta.BlocoPerguntaResponseDTO;
import br.unitins.calculadora.dto.pergunta.PerguntaResponseDTO;
import br.unitins.calculadora.model.AvaliacaoTrl;
import br.unitins.calculadora.model.BlocoPergunta;
import br.unitins.calculadora.model.BlocoPerguntaAvaliacao;
import br.unitins.calculadora.model.Pergunta;
import br.unitins.calculadora.model.PerguntaAvaliacao;
import br.unitins.calculadora.repository.AvaliacaoTrlRepository;
import br.unitins.calculadora.repository.BlocoPerguntaAvaliacaoRepository;
import br.unitins.calculadora.repository.BlocoPerguntaRepository;
import br.unitins.calculadora.repository.PerguntaAvaliacaoRepository;
import br.unitins.calculadora.repository.PerguntaRepository;
import io.quarkus.panache.common.Sort;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.transaction.Transactional;

@ApplicationScoped
public class AvaliacaoTrlServiceImpl implements AvaliacaoTrlService {

    @Inject
    BlocoPerguntaRepository blocoPerguntaRepository;
    
    @Inject
    BlocoPerguntaAvaliacaoRepository blocoPerguntaAvaliacaoRepository;
    
    @Inject
    PerguntaRepository perguntaRepository;
    
    @Inject
    PerguntaAvaliacaoRepository perguntaAvaliacaoRepository;

    @Inject
    AvaliacaoTrlRepository avaliacaoTrlRepository;

    @Override
    @Transactional
    public AvaliacaoTrlResponseDTO avaliarNivelTrl(AvaliacaoTrlDTO avaliacaoTrlDTO) {

        List<BlocoPergunta> listBlocoPergunta = new ArrayList<>();
        List<PerguntaAvaliacaoDTO> todasRespostas = new ArrayList<>();
        Map<String, Long> totalRespostasSimPorBloco = new HashMap<>();
        Map<String, Boolean> resultadoPorNivel = new HashMap<>();
        String nivelAlcancado = "";
        String proximoNivel = "";

        for (BlocoPerguntaAvaliacaoDTO blocoPerguntaAvaliacaoDTO : avaliacaoTrlDTO.formulario()) {

            for (PerguntaAvaliacaoDTO perguntaAvaliacaoDTO : blocoPerguntaAvaliacaoDTO.perguntas()) {
                
                todasRespostas.add(perguntaAvaliacaoDTO);
            }

            BlocoPergunta blocoPergunta = blocoPerguntaRepository.findById(blocoPerguntaAvaliacaoDTO.idBlocoPergunta());

            listBlocoPergunta.add(blocoPergunta);
            
            totalRespostasSimPorBloco.put(blocoPergunta.getTitulo(), blocoPerguntaAvaliacaoDTO.perguntas().stream().filter(p -> p.resposta() == 1).count());

            Integer totalRespostas = blocoPergunta.getTotalPerguntas();

            Integer totalRespostasSim = (int) totalRespostasSimPorBloco.get(blocoPergunta.getTitulo()).longValue();

            if (totalRespostasSim == totalRespostas) {

                resultadoPorNivel.put(blocoPergunta.getTitulo(), true);
            } else {
                
                resultadoPorNivel.put(blocoPergunta.getTitulo(), false);
            }
        }

        for (int i = 1; i <= 9; i++) {

            if (!resultadoPorNivel.get("TRL" + i)) {

                if ((i - 1) == 0) {

                    nivelAlcancado = "Não alcançou nenhum nível";
                    proximoNivel = "TRL1";
                } else {
                    
                    nivelAlcancado = "TRL" + (i - 1);
                    proximoNivel = "TRL" + i;
                }

                break;
            } else if (i == 9) {

                nivelAlcancado = "TRL" + i;
                proximoNivel = "Nível máximo alcançado";
            }
        }

        AvaliacaoTrl avaliacaoTrl = new AvaliacaoTrl();

        avaliacaoTrl.setNivelAlcancado(nivelAlcancado);

        avaliacaoTrlRepository.persist(avaliacaoTrl);

        for (BlocoPergunta blocoPergunta : listBlocoPergunta) {
            
            BlocoPerguntaAvaliacao blocoPerguntaAvaliacao = new BlocoPerguntaAvaliacao();
    
            blocoPerguntaAvaliacao.setAvaliacaoTrl(avaliacaoTrl);
            blocoPerguntaAvaliacao.setBlocoPergunta(blocoPergunta);
            blocoPerguntaAvaliacao.setTotalRespostasSim(totalRespostasSimPorBloco.get(blocoPergunta.getTitulo()));

            blocoPerguntaAvaliacaoRepository.persist(blocoPerguntaAvaliacao);
        }

        for (PerguntaAvaliacaoDTO perguntaAvaliacaoDTO : todasRespostas) {
            
            Pergunta pergunta = perguntaRepository.findById(perguntaAvaliacaoDTO.idPergunta());

            PerguntaAvaliacao perguntaAvaliacao = new PerguntaAvaliacao();

            perguntaAvaliacao.setAvaliacaoTrl(avaliacaoTrl);
            perguntaAvaliacao.setPergunta(pergunta);
            perguntaAvaliacao.setResposta(perguntaAvaliacaoDTO.resposta());

            perguntaAvaliacaoRepository.persist(perguntaAvaliacao);
        }

        String tituloNivelAlcancado = "";
        String descricaoNivelAlcancado = "";
        String dicaParaProximoNivel = "";

        if (nivelAlcancado == "Não alcançou nenhum nível") {

            BlocoPergunta proximoBloco = blocoPerguntaRepository.findByTitulo("TRL1");

            tituloNivelAlcancado = nivelAlcancado;
            descricaoNivelAlcancado = "Nenhum nível alcançado";

            dicaParaProximoNivel = proximoBloco.getDicaParaAlcancarNivel();
        } else if (proximoNivel == "Nível máximo alcançado") {

            BlocoPergunta blocoAlcancado = blocoPerguntaRepository.findByTitulo(nivelAlcancado);

            tituloNivelAlcancado = blocoAlcancado.getTitulo() + " - " + blocoAlcancado.getSubtitulo();
    
            descricaoNivelAlcancado = blocoAlcancado.getDescricao();

            dicaParaProximoNivel = "Nível máximo alcançado";
        } else {

            BlocoPergunta blocoAlcancado = blocoPerguntaRepository.findByTitulo(nivelAlcancado);
            BlocoPergunta proximoBloco = blocoPerguntaRepository.findByTitulo(proximoNivel);
    
            tituloNivelAlcancado = blocoAlcancado.getTitulo() + " - " + blocoAlcancado.getSubtitulo();
    
            descricaoNivelAlcancado = blocoAlcancado.getDescricao();

            dicaParaProximoNivel = proximoBloco.getDicaParaAlcancarNivel();
        }
        
        return new AvaliacaoTrlResponseDTO(tituloNivelAlcancado, descricaoNivelAlcancado, dicaParaProximoNivel, new TreeMap<>(resultadoPorNivel), new TreeMap<>(totalRespostasSimPorBloco));
    }

    @Override
    public List<BlocoPerguntaResponseDTO> getPerguntas() {

        Sort sort = Sort.by("idPergunta").ascending();

        List<BlocoPerguntaResponseDTO> listBlocoPerguntaResponseDTO = new ArrayList<>();

        List<BlocoPergunta> listBlocoPergunta = blocoPerguntaRepository.findAll().list();

        for (BlocoPergunta blocoPergunta : listBlocoPergunta) {
            
            List<PerguntaResponseDTO> listPerguntaResponseDTO = perguntaRepository.findByBlocoPergunta(blocoPergunta, sort).stream().map(PerguntaResponseDTO::new).toList();

            listBlocoPerguntaResponseDTO.add(new BlocoPerguntaResponseDTO(blocoPergunta.getIdBlocoPergunta(), blocoPergunta.getTitulo(), listPerguntaResponseDTO));
        }
        
        return listBlocoPerguntaResponseDTO;
    }
}
