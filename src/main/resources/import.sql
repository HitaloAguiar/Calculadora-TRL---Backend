-- This file allow to write SQL commands that will be emitted in test and dev.
-- The commands are commented as their support depends of the database
-- insert into myentity (id, field) values(1, 'field-1');
-- insert into myentity (id, field) values(2, 'field-2');
-- insert into myentity (id, field) values(3, 'field-3');
-- alter sequence myentity_seq restart with 4;

INSERT INTO bloco_pergunta (
                            titulo,
                            subtitulo,
                            descricao,
                            dica_para_alcancar_nivel,
                            total_perguntas) VALUES (
                                                'TRL1',
                                                'Princípios básicos observados e relatados',
                                                'Neste nível, as possíveis aplicações da tecnologia ainda estão no estágio inicial, sem definições conceituais.',
                                                'Para alcançar o próximo nível é preciso dar início as atividades de pesquisa científica, o que envolve o estudo de novos fenômenos, novas propriedades da matéria, mas ainda sem uma aplicação prática definida. Exemplos incluem artigos sobre as propriedades básicas da tecnologia.',
                                                12);
INSERT INTO bloco_pergunta (
                            titulo,
                            subtitulo,
                            descricao,
                            dica_para_alcancar_nivel,
                            total_perguntas) VALUES (
                                                  'TRL2',
                                                  'Conceito e/ou aplicação da tecnologia formulados',
                                                  'Os princípios básicos estudados no TRL 1 estão agora bem definidos. Neste nível, as aplicações conceituais são mencionadas de forma consistente, porém não necessariamente comprovada.',
                                                  'Para alcançar o próximo nível os princípios básicos estudados no TRL1 precisam estar bem definidos e é preciso dar início às aplicações práticas. Mesmo que as aplicações sejam especulativas e pode não haver provas ou análises detalhadas para dar suporte às premissas. Exemplos são limitados a estudos analíticos.',
                                                  15);
INSERT INTO bloco_pergunta (titulo, subtitulo, descricao, dica_para_alcancar_nivel, total_perguntas) VALUES ('TRL3', 'Prova de conceito analítica e experimental de características e/ou funções críticas', 'Neste nível, foram realizados estudos analíticos e laboratoriais por meio de atividades como modelagem, simulação e experimentação.', 'Para alcançar o próximo nível é preciso que a pesquisa ativa e desenvolvimento da tecnologia já tenham sido iniciados. Para isso são essenciais estudos analíticos e laboratoriais para validação do conceito. Isso envolve sua prova por meio de: Modelagem, simulação, experimentação.', 19);
INSERT INTO bloco_pergunta (titulo, subtitulo, descricao, dica_para_alcancar_nivel, total_perguntas) VALUES ('TRL4', 'Verificação funcional de componente e/ou subsistema em ambiente laboratorial', 'Neste nível, é feito a construção de um protótipo em estágio inicial para que seja feita a análise da funcionalidade de todos os componentes envolvidos. No entanto, por estar em ambiente laboratorial, este ponto da escala ainda não representa o desempenho do sistema final.', 'Para alcançar o próximo nível é necessário a construção de um protótipo em estágio inicial para que seja feita a análise da funcionalidade de todos os componentes envolvidos. Em suma, os componentes tecnológicos básicos são integrados para estabelecer o pleno funcionamento quando juntos. No entanto, por estar em ambiente laboratorial, o próximo nível ainda não representa o desempenho do sistema final.', 20);
INSERT INTO bloco_pergunta (titulo, subtitulo, descricao, dica_para_alcancar_nivel, total_perguntas) VALUES ('TRL5', 'Verificação da função crítica do componente e/ou subsistema em ambiente relevante', 'Neste nível, é demonstrado, ainda em escala piloto, as funções do elemento estudado em ambiente relevante. Devido à realização de testes mais detalhados, este nível requer uma definição preliminar dos requisitos de desempenho do elemento e o projeto preliminar.', 'Para alcançar o próximo nível é preciso demonstrar, ainda em escala piloto, as funções do elemento estudado em ambiente relevante. Devido à realização de testes mais detalhados, o próximo nível requer uma definição preliminar dos requisitos de desempenho do elemento e o projeto preliminar. Isso significa que a fidelidade quando comparada ao sistema real terá uma considerável melhoria em relação ao nível atual. Isso porque os componentes básicos da tecnologia são integrados de forma razoavelmente realista, dando suporte aos elementos para teste em ambiente simulado.', 18);
INSERT INTO bloco_pergunta (titulo, subtitulo, descricao, dica_para_alcancar_nivel, total_perguntas) VALUES ('TRL6', 'Demonstração do modelo de protótipo de sistema/subsistema em ambiente relevante', 'A tecnologia é considerada na escala TRL 6 quando o desempenho geral do modelo proposto está demonstrado. Neste estágio, então, ela está pronta para a realização dos testes finais, objetivando sua aplicação final e sua comercialização.', 'Para alcançar o próximo nível é necessário que o desempenho geral do modelo proposto seja demonstrado. Por exemplo através de um modelo representativo ou protótipo do sistema testado em ambiente relevante. No próximo nível, então, a tecnologia estará pronta para a realização dos testes finais, objetivando sua aplicação final e sua comercialização.', 22);
INSERT INTO bloco_pergunta (titulo, subtitulo, descricao, dica_para_alcancar_nivel, total_perguntas) VALUES ('TRL7', 'Demonstração do protótipo de sistema/subsistema em ambiente operacional', 'Neste nível, são realizados ensaios com o protótipo, porém em ambiente operacional. Para isso, são utilizados os parâmetros reais para análise da integração da tecnologia no sistema operacional. Este estágio envolve desenvolvimentos para a resolução de problemas de desempenho da tecnologia.', 'Para alcançar o próximo nível é preciso que sejam realizados ensaios com o protótipo, porém em ambiente operacional. Para isso, devem ser utilizados os parâmetros reais para análise da integração da tecnologia no sistema operacional. Este estágio envolve desenvolvimentos para a resolução de problemas de desempenho da tecnologia. Representa um significativo passo quando comparado ao nível atual (TRL6) através de um protótipo de sistema real em um ambiente operacional.', 10);
INSERT INTO bloco_pergunta (titulo, subtitulo, descricao, dica_para_alcancar_nivel, total_perguntas) VALUES ('TRL8', 'Sistema real desenvolvido e aprovado', 'Neste nível, após ser testada e aprovada para uso em ambiente real, a tecnologia pode ser implementada em sistemas existentes. Isso significa que o elemento pode ser integrado no sistema final e está pronto para operar.', 'Para alcançar o próximo nível é preciso que tenha sido comprovado que a tecnologia funcione em sua forma final e sob as condições esperadas. Logo, é necessário que a tecnologia seja testada e aprovada para uso em ambiente real e, dessa forma, possa ser implementada em sistemas existentes. Isso significa que o elemento pode ser integrado no sistema final e está pronto para operar. Na maioria dos casos, esse TRL representa o fim do desenvolvimento do sistema verdadeiro.', 12);
INSERT INTO bloco_pergunta (titulo, subtitulo, descricao, dica_para_alcancar_nivel, total_perguntas) VALUES ('TRL9', 'Sistema real desenvolvido e aprovado através de operações bem-sucedidas', 'Neste ponto, a tecnologia está comprovada em ambiente operacional. Ela foi testada, validada e comprovada em todas as condições, e seu uso está estabelecido em toda sua extensão, ou seja, o elemento está integrado e operando no sistema final.', 'Para alcançar o próximo nível a tecnologia precisa ser comprovada em ambiente operacional. Ela foi testada, validada e comprovada em todas as condições, e seu uso está estabelecido em toda sua extensão, ou seja, o elemento está integrado e operando no sistema final. Aqui a tecnologia se encontrará na fase de produção e comercialização.', 16);

-- Perguntas TRL 1
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (1, 'Foram identificados os princípios básicos?', 'Espera-se que tenham sido reconhecidos os fundamentos científicos ou físicos da tecnologia. Em outras palavras, as leis, fenômenos ou mecanismos que tornam a solução possível. Exemplo: para o desenvolvimento de uma bateria nova, "princípio básico" seria a reação eletroquímica que gera tensão.');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (1, 'Observações científicas iniciais foram documentadas em relatórios técnicos?', 'Espera-se que os experimentos ou observações iniciais (resultados, medições, hipóteses) tenham sido registrados formalmente. Exemplo: notas de laboratório ou um relatório inicial com dados e interpretações.');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (1, 'Foram identificadas as possíveis aplicações para a tecnologia?', 'Espera-se que tenham sido mapeadas as utilizações práticas (setores/indústrias) onde a tecnologia poderia ser empregada. Exemplo: um sensor pode servir para agricultura, indústria ou saúde.');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (1, 'Foram documentadas as possíveis aplicações da tecnologia?', 'Espera-se que as possíveis aplicações, além de identificadas, tenham sido descritas por escrito (casos de uso, requisitos). Exemplo: documento apontando como o sensor seria usado em monitoramento de solo.');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (1, 'Foram identificadas alguma lei ou norma relativas à tecnologia que poderia impedir o desenvolvimento do projeto?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (1, 'Foi documentado se existe alguma outra instituição de pesquisa ou empresa que está pesquisando a tecnologia no país de execução do projeto?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (1, 'Foi levantada e documentada a ideia inicial de riscos, custos e cronograma para o desenvolvimento da tecnologia?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (1, 'Foram identificados e documentados possíveis stakeholders para patrocínio?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (1, 'Foram identificados e documentadas possíveis fontes de financiamento governamentais para a execução do projeto?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (1, 'Foram identificados e documentados possíveis parceiros para a execução do projeto (ICTs, startups)?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (1, 'Foi levantada qual instituição realizará as pesquisas e onde essas serão realizadas?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (1, 'Existem publicações científicas a respeito da tecnologia?', 'teste explicação da pergunta');

-- Perguntas TRL 2
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (2, 'Foram identificadas as principais funções que se espera que a tecnologia desempenhe?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (2, 'Foi definidas as possíveis aplicações e documentada a viabilidade destas?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (2, 'Foi identificada como factível a aplicação da tecnologia?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (2, 'Foi identificada a funcionalidade da tecnologia?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (2, 'Foram identificadas tecnologias semelhantes teóricas ou empíricas?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (2, 'Foram documentadas as semelhanças e soluções dessas tecnologias (pesquisa de concorrência)?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (2, 'Estudos em papel foram validados?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (2, 'Foram documentadas as previsões de desempenho de cada elemento da tecnologia?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (2, 'Foram identificados o sistema absoluto e os elementos básicos que compõem a tecnologia?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (2, 'Foi identificado um cliente para a aplicação?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (2, 'O cliente demonstra interesse na aplicação?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (2, 'Foram feitos e documentados estudos técnicos robustos para confirmação dos princípios básicos?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (2, 'Foram definidas as limitações da tecnologia?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (2, 'Foi definida uma abordagem de pesquisa (experimentos e metodologias) para o aprofundamento da tecnologia?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (2, 'Foram levantadas as possíveis áreas de risco (custo, funcionalidade, cronograma)?', 'teste explicação da pergunta');

-- Perguntas TRL 3
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (3, 'Finalizado e documentado o projeto conceitual?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (3, 'Foi verificada a viabilidade da aplicação através de simulação?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (3, 'Foi determinado o desempenho preliminar do sistema?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (3, 'Foram especificados e documentados os requisitos de desempenho da tecnologia?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (3, 'Foi realizada a visão sistêmica do projeto (elementos que devem estar integrados)?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (3, 'Foram identificados os processos chave para execução do projeto?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (3, 'Foi demonstrada e validada completamente a viabilidade científica da tecnologia?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (3, 'Foram identificadas as técnicas de desenvolvimento da tecnologia?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (3, 'Foram avaliados os conceitos de fabricação da tecnologia?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (3, 'Foram identificados elementos que compõem a tecnologia e a viabilidade desses?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (3, 'Foram determinados os representantes dos envolvidos responsáveis por integrar a equipe do projeto?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (3, 'Foram levantados, junto ao cliente, os requisitos e objetivos com o projeto?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (3, 'Foram estabelecidas métricas de desempenho para o sistema?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (3, 'Foi documentada a ideia dos riscos, custos e cronograma para desenvolvimento do protótipo?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (3, 'Foram iniciados estudos de escalabilidade para o projeto?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (3, 'Foram avaliados os conceitos de manufatura para o projeto?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (3, 'Foram definidas estratégias de mitigação de riscos?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (3, 'Foram testados os componentes em escala laboratorial?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (3, 'Foram testados os subsistemas da tecnologia em escala laboratorial?', 'teste explicação da pergunta');

-- Perguntas TRL 4
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (4, 'Foram testados os componentes individuais em laboratórios e realizados relatórios?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (4, 'Foram identificados e documentados os requisitos gerais do sistema?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (4, 'Foi finalizado, avaliado e validado o projeto conceitual da tecnologia?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (4, 'Foram identificados os custos para desenvolvimento do protótipo?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (4, 'Foi realizado o cronograma para desenvolvimento do protótipo?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (4, 'Foram completamente executadas todas as avaliações de riscos envolvidas no projeto?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (4, 'Foi dado início ao programa de gestão e mitigação de riscos do protótipo?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (4, 'Foram iniciados os estudos de integração dos componentes da tecnologia ao projeto final?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (4, 'Componentes individuais testados em laboratório?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (4, 'Componentes foram montados em subsistemas?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (4, 'Os subsistemas da tecnologia foram testados em escala laboratorial através de simuladores?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (4, 'Foram simuladas as interfaces e integrações entre componentes?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (4, 'Métricas de desempenho do sistema formalmente documentadas e validadas?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (4, 'A tecnologia demonstra o básico de funcionalidade em ambiente simulado?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (4, 'Foram realizados a descrição do sistema e os diagramas de fluxo de processos?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (4, 'Foram identificados os principais geradores de custos iniciais?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (4, 'Foram identificados os principais processos de fabricação para a tecnologia?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (4, 'Foi realizada a descrição do processo funcional?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (4, 'Testes em escala de laboratório e parte dos resíduos reais foram concluídos?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (4, 'Os testes laboratoriais indicam que os subsistemas satisfazem o desempenho esperado e sua função crítica?', 'teste explicação da pergunta');

-- Perguntas TRL 5
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (5, 'Foram levantados os requisitos iniciais de desempenho em ambiente relevante?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (5, 'Foi realizado o projeto preliminar do elemento com modelos para a verificação funções críticas?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (5, 'Foram realizados e documentados os testes de teste placa de ensaio?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (5, 'Foi definida a placa de ensaio para a verificação da função crítica?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (5, 'Foi formulado o plano de teste da função crítica para análise dos efeitos em escala?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (5, 'A relação entre sistema e subsistemas foram compreendidos em uma escala laboratorial?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (5, 'Requisitos da interface do sistema foi identificada (como seria o sistema integrado)?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (5, 'Foi iniciada a engenharia de projeto preliminar?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (5, 'Protótipos de sistema de componentes foram criados?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (5, 'Integração laboratorial de alta fidelidade do sistema concluído, pronto para teste em ambientes relevante?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (5, 'Sistema semelhante testado com variedade de simuladores?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (5, 'Desenhos tridimensionais e em escala de engenharia foi realizado?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (5, 'Foi feitas as modificações necessárias para aproximar o ambiente laboratorial do ambiente operacional?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (5, 'O ambiente agora está mais apto a testes em escala relevante (bancada)?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (5, 'Foram analisados os efeitos de possíveis falhas da tecnologia?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (5, 'Plano de gerenciamento de risco documentado?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (5, 'Foram realizados testes dos componentes em ambiente relevante?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (5, 'Foram realizados testes dos conjuntos em ambiente relevante?', 'teste explicação da pergunta');

-- Perguntas TRL 6
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (6, 'Foi realizada e documentada os requisitos de desempenho do ambiente relevante?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (6, 'Foram documentados os requisitos completos de sistema e subsistema para funcionamento?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (6, 'Foram realizadas e documentadas em relatório as análises das funções críticas?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (6, 'As relações entre o sistema e subsistemas foram compreendidas em escala de engenharia e possui flexibilidade para variações de processo/design?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (6, 'Desenho de projeto para o sistema final da planta está completo?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (6, 'O ambiente operacional determinado para o sistema final já é conhecido?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (6, 'Análise dos dados de manutenção real, confiabilidade e suporte foi iniciado?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (6, 'Foram concluídas as linhas de base de custo total do projeto, cronograma e escopo?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (6, 'Foram determinados os limites operacionais para cada um dos componentes?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (6, 'Integração de componentes demonstrada em escala de engenharia?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (6, 'Foram identificados e compreendidos quaisquer problemas de dimensionamento que pudessem estar em aberto?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (6, 'Foi confirmada a disponibilidade da tecnologia na data estipulada em cronograma?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (6, 'Processos de fabricação críticos foram prototipados?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (6, 'Hardware de pré-produção está, em sua maioria, disponível para apoiar a fabricação do sistema?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (6, 'Foi determinada a viabilidade de engenharia de forma completa (definido que a tecnologia funciona)?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (6, 'Foram estabelecidos e validados os materiais, processo, design e métodos de integração?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (6, 'Os elementos que compõem a tecnologia são funcionalmente compatíveis com sistema operacional?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (6, 'O protótipo é funcional e possui alta fidelidade de sistema operacional (coincide com aplicação final em quase todos os aspectos)?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (6, 'Demonstrações de integração foi concluída (desenvolvimento de sistema teste)?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (6, 'Foi finalizado o Relatório Técnico Final da tecnologia?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (6, 'Os riscos e problemas foram identificados e mitigados?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (6, 'As demonstrações de produção foram validadas?', 'teste explicação da pergunta');

-- Perguntas TRL 7
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (7, 'Foram realizados testes em cada interface do sistema?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (7, 'Protótipo em escala completa com forma pronta e função desenvolvida?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (7, 'Foi realizada simulação das funcionalidades em ambiente operacional?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (7, 'Foi realizada a integração completa do protótipo ao ambiente operacional por simulação?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (7, 'Protótipo em escala real demonstrado em um ambiente relevante com fidelidade similar ao sistema completo?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (7, 'Foram realizados testes com sucesso do protótipo do sistema em um ambiente relevante?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (7, 'Foram documentados em relatório o êxito dos testes do protótipo?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (7, 'Foram revisados e documentados os riscos, custo e cronograma para desenvolvimento da tecnologia em escala operacional?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (7, 'Foi definido, documentado e aprovado o ambiente operacional?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (7, 'O protótipo foi demonstrado em ambiente operacional?', 'teste explicação da pergunta');

-- Perguntas TRL 8
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (8, 'Modelo final do sistema completamente construído (produto)?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (8, 'Foram realizados ajustes das componentes a suas funções para deixar compatível com o sistema operacional?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (8, 'O sistema foi testado e alcançou os requisitos de funcionalidade pretendidos?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (8, 'Foram validados e documentados os resultados e funcionamento da tecnologia?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (8, 'O subsistema foi qualificado e validado em testes e demonstrações em ambiente operacional com escala limitada?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (8, 'Funcionalidades foram demonstradas e validadas em ambiente operacional de escala limitada através de teste integrados à plataforma real?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (8, 'O sistema atende às especificações definidas inicialmente?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (8, 'Foram identificados os custos para desenvolvimento da tecnologia em escala operacional completa com fidelidade idêntica ao sistema final ou houve transmissão do conhecimento em parceria com a indústria?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (8, 'Foi definido o cronograma para desenvolvimento em escala operacional completa junto à indústria?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (8, 'Foi iniciado o programa de gestão de risco em parceria com a indústria para planejamento prévio de lançamento de mercado?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (8, 'Documentação formal de regulamentação está concluída?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (8, 'Foi concluída a documentação de continuidade e controle para aumento de escalabilidade?', 'teste explicação da pergunta');

-- Perguntas TRL 9
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (9, 'Foi demonstrado o sistema real de forma completa?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (9, 'Conceito operacional implementado com sucesso?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (9, 'Tecnologia foi integrada plenamente à plataforma de sistema destinado?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (9, 'Foi comprovada a funcionalidade em escala real, completa e com fidelidade idêntica ao sistema real?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (9, 'Foram realizados todos os processos de fabricação controlados para o nível de qualidade adequado?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (9, 'Validado nível de qualidade e segurança do projeto para escala real e completa?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (9, 'Foi incluída a documentação com todo o processo de desenvolvimento em escala, o custo e o cronograma para lançamento em mercado?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (9, 'Foi realizado comissionamento na fase de operação?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (9, 'Foram finalizados os relatórios de operação?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (9, 'Foi documentado o processo de parceria e de transferência de conhecimento para indústria?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (9, 'Foi desenvolvido um plano de negócio para desenvolvimento da tecnologia?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (9, 'Foram realizadas publicações científicas respeito da tecnologia?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (9, 'Foram registradas patentes?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (9, 'Foi validada a flexibilidade do projeto para reprodução posterior?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (9, 'O subsistema encontra-se em operação ou foi operado com sucesso?', 'teste explicação da pergunta');
INSERT INTO pergunta (id_bloco_pergunta, descricao, explicacao) VALUES (9, 'O sistema geral em ambiente de escala operacional real foi operado com 100% de êxito?', 'teste explicação da pergunta');

/*
{
  "formulario": [
    {
      "idBlocoPergunta": 1,
      "perguntas": [
        {
          "idPergunta": 1,
          "resposta": 1
        },
        {
          "idPergunta": 2,
          "resposta": 1
        },
        {
          "idPergunta": 3,
          "resposta": 1
        },
        {
          "idPergunta": 4,
          "resposta": 1
        },
        {
          "idPergunta": 5,
          "resposta": 1
        },
        {
          "idPergunta": 6,
          "resposta": 1
        },
        {
          "idPergunta": 7,
          "resposta": 1
        },
        {
          "idPergunta": 8,
          "resposta": 1
        },
        {
          "idPergunta": 9,
          "resposta": 1
        },
        {
          "idPergunta": 10,
          "resposta": 1
        },
        {
          "idPergunta": 11,
          "resposta": 1
        },
        {
          "idPergunta": 12,
          "resposta": 1
        }
      ]
    },
    {
      "idBlocoPergunta": 2,
      "perguntas": [
        {
          "idPergunta": 13,
          "resposta": 1
        },
        {
          "idPergunta": 14,
          "resposta": 1
        },
        {
          "idPergunta": 15,
          "resposta": 1
        },
        {
          "idPergunta": 16,
          "resposta": 1
        },
        {
          "idPergunta": 17,
          "resposta": 1
        },
        {
          "idPergunta": 18,
          "resposta": 1
        },
        {
          "idPergunta": 19,
          "resposta": 1
        },
        {
          "idPergunta": 20,
          "resposta": 1
        },
        {
          "idPergunta": 21,
          "resposta": 1
        },
        {
          "idPergunta": 22,
          "resposta": 1
        },
        {
          "idPergunta": 23,
          "resposta": 1
        },
        {
          "idPergunta": 24,
          "resposta": 1
        },
        {
          "idPergunta": 25,
          "resposta": 1
        },
        {
          "idPergunta": 26,
          "resposta": 1
        },
        {
          "idPergunta": 27,
          "resposta": 1
        }
      ]
    },
    {
      "idBlocoPergunta": 3,
      "perguntas": [
        {
          "idPergunta": 28,
          "resposta": 1
        },
        {
          "idPergunta": 29,
          "resposta": 1
        },
        {
          "idPergunta": 30,
          "resposta": 1
        },
        {
          "idPergunta": 31,
          "resposta": 1
        },
        {
          "idPergunta": 32,
          "resposta": 1
        },
        {
          "idPergunta": 33,
          "resposta": 1
        },
        {
          "idPergunta": 34,
          "resposta": 1
        },
        {
          "idPergunta": 35,
          "resposta": 1
        },
        {
          "idPergunta": 36,
          "resposta": 1
        },
        {
          "idPergunta": 37,
          "resposta": 1
        },
        {
          "idPergunta": 38,
          "resposta": 1
        },
        {
          "idPergunta": 39,
          "resposta": 1
        },
        {
          "idPergunta": 40,
          "resposta": 1
        },
        {
          "idPergunta": 41,
          "resposta": 1
        },
        {
          "idPergunta": 42,
          "resposta": 1
        },
        {
          "idPergunta": 43,
          "resposta": 1
        },
        {
          "idPergunta": 44,
          "resposta": 1
        },
        {
          "idPergunta": 45,
          "resposta": 1
        },
        {
          "idPergunta": 46,
          "resposta": 1
        }
      ]
    },
    {
      "idBlocoPergunta": 4,
      "perguntas": [
        {
          "idPergunta": 47,
          "resposta": 1
        },
        {
          "idPergunta": 48,
          "resposta": 1
        },
        {
          "idPergunta": 49,
          "resposta": 1
        },
        {
          "idPergunta": 50,
          "resposta": 1
        },
        {
          "idPergunta": 51,
          "resposta": 1
        },
        {
          "idPergunta": 52,
          "resposta": 1
        },
        {
          "idPergunta": 53,
          "resposta": 1
        },
        {
          "idPergunta": 54,
          "resposta": 1
        },
        {
          "idPergunta": 55,
          "resposta": 1
        },
        {
          "idPergunta": 56,
          "resposta": 1
        },
        {
          "idPergunta": 57,
          "resposta": 1
        },
        {
          "idPergunta": 58,
          "resposta": 1
        },
        {
          "idPergunta": 59,
          "resposta": 1
        },
        {
          "idPergunta": 60,
          "resposta": 1
        },
        {
          "idPergunta": 61,
          "resposta": 1
        },
        {
          "idPergunta": 62,
          "resposta": 1
        },
        {
          "idPergunta": 63,
          "resposta": 1
        },
        {
          "idPergunta": 64,
          "resposta": 1
        },
        {
          "idPergunta": 65,
          "resposta": 1
        },
        {
          "idPergunta": 66,
          "resposta": 1
        }
      ]
    },
    {
      "idBlocoPergunta": 5,
      "perguntas": [
        {
          "idPergunta": 67,
          "resposta": 1
        },
        {
          "idPergunta": 68,
          "resposta": 1
        },
        {
          "idPergunta": 69,
          "resposta": 1
        },
        {
          "idPergunta": 70,
          "resposta": 1
        },
        {
          "idPergunta": 71,
          "resposta": 1
        },
        {
          "idPergunta": 72,
          "resposta": 1
        },
        {
          "idPergunta": 73,
          "resposta": 1
        },
        {
          "idPergunta": 74,
          "resposta": 1
        },
        {
          "idPergunta": 75,
          "resposta": 1
        },
        {
          "idPergunta": 76,
          "resposta": 1
        },
        {
          "idPergunta": 77,
          "resposta": 1
        },
        {
          "idPergunta": 78,
          "resposta": 1
        },
        {
          "idPergunta": 79,
          "resposta": 1
        },
        {
          "idPergunta": 80,
          "resposta": 1
        },
        {
          "idPergunta": 81,
          "resposta": 1
        },
        {
          "idPergunta": 82,
          "resposta": 1
        },
        {
          "idPergunta": 83,
          "resposta": 1
        },
        {
          "idPergunta": 84,
          "resposta": 1
        }
      ]
    },
    {
      "idBlocoPergunta": 6,
      "perguntas": [
        {
          "idPergunta": 85,
          "resposta": 1
        },
        {
          "idPergunta": 86,
          "resposta": 1
        },
        {
          "idPergunta": 87,
          "resposta": 1
        },
        {
          "idPergunta": 88,
          "resposta": 1
        },
        {
          "idPergunta": 89,
          "resposta": 1
        },
        {
          "idPergunta": 90,
          "resposta": 1
        },
        {
          "idPergunta": 91,
          "resposta": 1
        },
        {
          "idPergunta": 92,
          "resposta": 1
        },
        {
          "idPergunta": 93,
          "resposta": 1
        },
        {
          "idPergunta": 94,
          "resposta": 1
        },
        {
          "idPergunta": 95,
          "resposta": 1
        },
        {
          "idPergunta": 96,
          "resposta": 1
        },
        {
          "idPergunta": 97,
          "resposta": 1
        },
        {
          "idPergunta": 98,
          "resposta": 1
        },
        {
          "idPergunta": 99,
          "resposta": 1
        },
        {
          "idPergunta": 100,
          "resposta": 1
        },
        {
          "idPergunta": 101,
          "resposta": 1
        },
        {
          "idPergunta": 102,
          "resposta": 1
        },
        {
          "idPergunta": 103,
          "resposta": 1
        },
        {
          "idPergunta": 104,
          "resposta": 1
        },
        {
          "idPergunta": 105,
          "resposta": 1
        },
        {
          "idPergunta": 106,
          "resposta": 1
        }
      ]
    },
    {
      "idBlocoPergunta": 7,
      "perguntas": [
        {
          "idPergunta": 107,
          "resposta": 1
        },
        {
          "idPergunta": 108,
          "resposta": 1
        },
        {
          "idPergunta": 109,
          "resposta": 1
        },
        {
          "idPergunta": 110,
          "resposta": 1
        },
        {
          "idPergunta": 111,
          "resposta": 1
        },
        {
          "idPergunta": 112,
          "resposta": 1
        },
        {
          "idPergunta": 113,
          "resposta": 1
        },
        {
          "idPergunta": 114,
          "resposta": 1
        },
        {
          "idPergunta": 115,
          "resposta": 1
        },
        {
          "idPergunta": 116,
          "resposta": 1
        }
      ]
    },
    {
      "idBlocoPergunta": 8,
      "perguntas": [
        {
          "idPergunta": 117,
          "resposta": 1
        },
        {
          "idPergunta": 118,
          "resposta": 1
        },
        {
          "idPergunta": 119,
          "resposta": 1
        },
        {
          "idPergunta": 120,
          "resposta": 1
        },
        {
          "idPergunta": 121,
          "resposta": 1
        },
        {
          "idPergunta": 122,
          "resposta": 1
        },
        {
          "idPergunta": 123,
          "resposta": 1
        },
        {
          "idPergunta": 124,
          "resposta": 1
        },
        {
          "idPergunta": 125,
          "resposta": 1
        },
        {
          "idPergunta": 126,
          "resposta": 1
        },
        {
          "idPergunta": 127,
          "resposta": 1
        },
        {
          "idPergunta": 128,
          "resposta": 1
        }
      ]
    },
    {
      "idBlocoPergunta": 9,
      "perguntas": [
        {
          "idPergunta": 129,
          "resposta": 1
        },
        {
          "idPergunta": 130,
          "resposta": 1
        },
        {
          "idPergunta": 131,
          "resposta": 1
        },
        {
          "idPergunta": 132,
          "resposta": 1
        },
        {
          "idPergunta": 133,
          "resposta": 1
        },
        {
          "idPergunta": 134,
          "resposta": 1
        },
        {
          "idPergunta": 135,
          "resposta": 1
        },
        {
          "idPergunta": 136,
          "resposta": 1
        },
        {
          "idPergunta": 137,
          "resposta": 1
        },
        {
          "idPergunta": 138,
          "resposta": 1
        },
        {
          "idPergunta": 139,
          "resposta": 1
        },
        {
          "idPergunta": 140,
          "resposta": 1
        },
        {
          "idPergunta": 141,
          "resposta": 1
        },
        {
          "idPergunta": 142,
          "resposta": 1
        },
        {
          "idPergunta": 143,
          "resposta": 1
        },
        {
          "idPergunta": 144,
          "resposta": 1
        }
      ]
    }
  ]
}

*/
