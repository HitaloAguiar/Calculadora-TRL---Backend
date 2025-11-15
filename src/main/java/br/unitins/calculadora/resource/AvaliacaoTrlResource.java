package br.unitins.calculadora.resource;

import java.util.List;

import br.unitins.calculadora.application.Result;
import br.unitins.calculadora.dto.avaliacao_trl.AvaliacaoTrlDTO;
import br.unitins.calculadora.dto.bloco_pergunta.BlocoPerguntaResponseDTO;
import br.unitins.calculadora.service.AvaliacaoTrlService;
import jakarta.inject.Inject;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import jakarta.ws.rs.core.Response.Status;

@Path("/avaliacao-trl")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class AvaliacaoTrlResource {
    
    @Inject
    AvaliacaoTrlService avaliacaoTrlService;

    @GET
    @Path("/perguntas")
    public List<BlocoPerguntaResponseDTO> getPerguntas() {

        return avaliacaoTrlService.getPerguntas();
    }

    @POST
    @Path("/avaliar-nivel-trl")
    public Response avaliarNivelTrl(AvaliacaoTrlDTO avaliacaoTrlDTO) {

        Result result;

        try {
            
            return Response.status(Status.CREATED).entity(avaliacaoTrlService.avaliarNivelTrl(avaliacaoTrlDTO)).build();
        } catch (Exception e) {
            
            result = new Result(e.getMessage(), false);

            return Response.status(Status.BAD_REQUEST).entity(result).build();
        }
    }
}
