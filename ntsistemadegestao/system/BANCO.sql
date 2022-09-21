-- Criando tabela: Acao
CREATE TABLE `Acao` (
  `idAcao` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) DEFAULT NULL,
  `idPlanoAcao` int(11) DEFAULT NULL,
  `idSupervisor` int(11) DEFAULT NULL,
  `idEstrategia` varchar(100) DEFAULT NULL,
  `criterioAcao` varchar(100) NOT NULL,
  `tipoAcao` varchar(100) NOT NULL,
  `oque` text NOT NULL,
  `como` text NOT NULL,
  `onde` text NOT NULL,
  `quem` text NOT NULL,
  `cronograma` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '-1',
  `valorPrevisto` double NOT NULL,
  `valorRealizado` double DEFAULT NULL,
  `dataInicio` date NOT NULL,
  `dataPrevisto` date NOT NULL,
  `dataConclusao` date DEFAULT NULL,
  `evidencia` text NOT NULL,
  PRIMARY KEY (`idAcao`),
  KEY `idUsuario` (`idUsuario`),
  KEY `acao_ibfk_2` (`idSupervisor`),
  KEY `idEstrategia_2` (`idEstrategia`),
  KEY `idPlanoAcao` (`idPlanoAcao`)
) ENGINE=InnoDB AUTO_INCREMENT=449 DEFAULT CHARSET=utf8

-- Salva os dados
INSERT INTO Acao VALUES ('15', '15', '45', '15', '1', 'Liderança', 'Estratégica', 'Teste', 'Teste', 'teste', 'teste', '', '2', '2220', '0', '2015-12-11', '2017-02-11', '1969-12-31', '')
INSERT INTO Acao VALUES ('18', '11', '22', '11', 'Evitar erros no processo de conferência de documentos e melhorar a eficiência dos operadores', 'Informações e Conhecimento', 'Rotina', 'Treinar balanceiros na utilização do sistema Metalsoft', 'Buscar apoio do setor TI para realizar o treinamento', 'Sid. Terra', 'Patrícia/ Paulo', '1. Reunir no início de janeiro com o Paulo e definir datas e conteúdo do treinamento', '0', '0', '0', '2015-01-01', '1969-12-31', '0000-00-00', '')
INSERT INTO Acao VALUES ('24', '3', '46', '3', 'teste 4', 'Liderança', 'Individual', 'teste 4', 'teste 4', 'teste 4', 'Nidelson', 'teste 4', '2', '5.5', '0', '1969-12-31', '1969-12-31', '1969-12-31', '')
INSERT INTO Acao VALUES ('26', '3', '53', '3', 'teste', 'Liderança', 'Estratégica', 'teste', 'teste', 'teste', 'teste', 'teste', '2', '1000', '0', '1969-12-31', '1969-12-31', '0000-00-00', '')
INSERT INTO Acao VALUES ('28', '71', '54', '71', '1', 'Liderança', 'Estratégica', 'Implantar sistema Marketplace', 'Contratar TOTVS São Paulo', 'CCGC', 'Osmar', '1. Reunir CCGC', '0', '105', '0', '1969-12-31', '1969-12-31', '0000-00-00', '')
INSERT INTO Acao VALUES ('29', '3', '59', '3', 'Buscar a melhoria contínua do CCGC', 'Liderança', 'Individual', 'Implantar sistema de gestão CCGC (Plan. Estratégico, Plano de Ação, ID e PDI)', 'Elaborar as ferramentas, executá-las e tornar o processo cíclico', 'CCGC', 'Nidelson', 'reunir com equipe', '2', '200', '0', '1969-12-31', '1969-12-31', '0000-00-00', '')
INSERT INTO Acao VALUES ('32', '2', '61', '2', '23', 'Liderança', 'Estratégica', 'Implantar sistema de gestão CCGC (P.E; P.A; ID e PDI)', '1. Elaborar as ferramentas; 2. Executar o processo e 3. Torná-lo fluxo contínuo', 'CCGC', 'Nidelson', '1. Dar andamento ao processo realizado no ano passado.<br>2. Planejamento Estratégico = ok. <br>3. Plano de Ação = passamos a usar o novo sistema  a partir de 17/03/2015<br>4. Indicadores de Desempenho = o sistema ficará pronto a partir de 01/04/2015<br>5. PDI - provavelmente será implantado no 2º semestre de 2015', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('33', '2', '61', '2', 'Diminuir a carga de trabalho operacional dos compradores e usuários do sistema', 'Informações e Conhecimento', 'Rotina', 'Contratar profissional de TI para realizar ajustes do sistema Totvs Protheus do CCGC', '1. Buscar indicação junto ao Osmar <TI Cemil>; 2. Contratar o profissional e 3. Acompanhar a execução das melhorias no sistema', 'CCGC', 'Nidelson', '1. Contratamos a Jeane da empresa Nelltech<br>2. Assunto de interesse da Cemil, Coopa, Coopatos, Coopervap, Comadi e Carpec.', '2', '9000', '9000', '2015-02-01', '2015-04-30', '2015-04-24', '')
INSERT INTO Acao VALUES ('34', '2', '61', '2', '14', 'Processos', 'Estratégica', 'Acompanhar a reforma realizada nas futuras instalações do CCGC - casa externa a Cemil', '1. Buscar aprovação orçamentário junto ao conselho; 2. Participar da contratação de terceiros; 3. Aprovar compra de material; 4. Fazer mudança do escritório', 'Cemil', 'Nidelson/ equipe CCGC', '1. Inicio das atividades em 2014', '2', '60000', '60000', '2015-01-01', '2015-06-30', '2015-03-02', '')
INSERT INTO Acao VALUES ('35', '2', '61', '2', '23', 'Liderança', 'Estratégica', 'Elaborar indicadores de desempenho da central de compras do CCGC', 'Relacionar os indicadores do consórcio <montante de compras, prazos, quantidade de pedidos, etc>, discutir internamente e implantá-los', 'CCGC', 'Nidelson', '1. Primeiras discussões foram realizadas com o Eustáquio', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('37', '2', '61', '2', 'Facilitar identificação principalmente para público externo', 'Processos', 'Rotina', 'Instalar placa de identificação do CCGC em frente ao novo escritório - área externa Cemil', '1. Aprovar lay-out da placa; 2. Autorizar confecção; 3. Instalar placa', 'CCGC', 'Nidelson', '1. Placa instalada na data prevista.', '2', '250', '250', '2015-01-01', '2015-01-31', '2015-01-31', 'public/evidencias/84d3c9c80432259a58da603086578a62.jpg')
INSERT INTO Acao VALUES ('38', '2', '61', '2', '7', 'Pessoas', 'Estratégica', 'Participar do processo de contratação do Helvécio', '1. Definir junto a Cemil a data de desligamento do Helvécio e 2. Acertar questão salarial com ele', 'CCGC/ Cemil', 'Nidelson', '1. Previsto para início em abril/ 2015.<br>2. Assunto interesse da Cemil.', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('39', '2', '61', '2', 'Proporcionar conhecimento sobre tributos para agregar competência a equipe CCGC', 'Informações e Conhecimento', 'Rotina', 'Apoiar e incentivar a realização de treinamento sobre tributos aos compradores CCGC', '1. Buscar profissional - preferência dentro das consorciadas; 2. Acertar datas e conteúdos e 3. Acompanhar a realização do treinamento', 'CCGC', 'Nidelson', '1. Fábio disse que existe uma profissional da Coopa que poderia ministrar um curso.<br>2. Temos a opção do Daniel da Cemil.', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('40', '2', '61', '2', '7', 'Liderança', 'Estratégica', 'Planejar processo de compras estratégicas 2015 - fertilizantes', '1. Redigir programação; 2. Enviar aos gestores das consorciadas; 3. Fazer reunião presencial', 'CCGC', 'Nidelson', '1. Tínhamos programado para acompanhar os preços de adubo a partir de fevereiro/15, mas infelizmente o dólar deslocou muito do real.<br>2. Fizemos reunião na Cemil em 17/03/15 e discutimos a agenda desses itens.', '2', '0', '0', '2015-03-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('41', '2', '61', '2', 'Adequar a realidade das consorciadas e estabelercer um padrão do CCGC', 'Informações e Conhecimento', 'Rotina', 'Verificar, a pedido do comprador Fábio, o processo de bonificação do sistema Totvs', '1. Verificar como o sistema “trata“ esta informação; 2. Definir um procedimento que será adotado pelo consórcio', 'CCGC', 'Nidelson/ Fábio', '1. Fábio tem interesse neste assunto e se dispõe a acompanhar o processo.', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('45', '2', '61', '2', '7', 'Estratégias e Planos', 'Estratégica', 'Planejar processo de compras das feiras das consorciadas 2015', '1. Reunir as pessoas envolvidas e 2. Planejar evento com antecedência', 'CCGC', 'Nidelson', '1. O Fábio fez uma planilha com as negociações de 2014.', '2', '0', '0', '2015-01-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('46', '2', '61', '2', '14', 'Liderança', 'Estratégica', 'Elaborar o Regimento Interno do CCGC', 'Regidir o documento e aprová-lo no conselho de administração', 'CCGC', 'Nidelson', '1. Trata-se de um projeto que pode extrapolar o prazo de seis meses.', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('47', '2', '61', '2', 'Evitar divergência em situações em que o CNPJ da NF for diferente do PC do CCGC', 'Processos', 'Rotina', 'Verificar, junto a Coopatos, a possibilidade de flexibilidade do sistema para alterar CNPJ em situações que demandem tal procedimento', '1. Verificar este processo; 2. Buscar informação no TI da Cemil; 3. Fazer contato com o gestor de TI da Coopatos', 'CCGC', 'Nidelson', '1. Falei com o João Carlos da Coopatos', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('49', '2', '61', '2', '23', 'Clientes', 'Estratégica', 'Organizar o 1º encontro com os fornecedores de medicamentos CCGC', '1. Reunir em cada consorciada; 2. Levantar informação sobre o atendimento dos fornecedores; 3. Registrar sugestões das áreas comerciais; 4. Reunir com lideranças das consorciadas e 5. Reunir com fornecedores ', 'CCGC', 'Nidelson/ Fábio', '1. Reunimos com líderes das consorciadas - individualmente  em fevereiro/ 2015 <br>2. Reunimos na Cemil em 17/03/15 com as principais lideranças das cooperativas', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('50', '2', '61', '2', '7', 'Liderança', 'Estratégica', 'Organizar o I Seminário de Estratégia de Cooperação CCGC', '1. Aprovar projeto no conselho de administração; 2. Buscar apoio do Sebrae-MG; 3. Executar projeto e realizar evento', 'Patos de Minas', 'Nidelson', '1. Conselho de Administração aprovou a iniciativa<br>2. Sebrae-MG financiará o evento', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('51', '2', '61', '2', '15', 'Liderança', 'Estratégica', 'Reunir com a equipe de professores da UFV para a retomada das ações para a realização do projeto Censo das Consorciadas', 'Agendar reunião e definir próximos passos', 'CCGC', 'Nidelson', '1. Reunião realizada.<br>2. Aprovada a retirada das questões referente a qualidade do leite elaboradas pelo Willer - ficou muito extenso. <br>3. Professora Áurea enviou email aos membros das equipes de apoio ao projeto e orientou a apresentação do questionário aos seus respectivos diretores.<br>4. Reforcei a necessidade de apresentar à Diretoria da Coopa.', '2', '0', '0', '2015-01-01', '2015-04-30', '2015-04-24', '')
INSERT INTO Acao VALUES ('52', '2', '61', '2', 'Evitar impacto negativo na imagem do consórcio ', 'Clientes', 'Rotina', 'Acompanhar processo envolvendo pagamento fornecedores da Comadi - compras via CCGC', '1. Levantar valores em aberto; 2. Intermediar empréstimo de recursos pela Cemil e 3. Acompanhar a quitação dos boletos', 'CCGC', 'Nidelson', '1. A Comadi não buscou recurso junto a Cemil e negociou diretamente com os fornecedores', '2', '0', '0', '2015-01-01', '2015-04-30', '2015-04-07', '')
INSERT INTO Acao VALUES ('53', '2', '61', '2', 'Tornar o processo de workflow mais eficiente', 'Processos', 'Rotina', 'Redefinir processo envolvendo workflow dos pedidos de compras - envio do relatório do PC  das consorciadas, retormo das consorciadas e acompanhamento pelo CCGC', 'Ajustar rotina da Ana Maria e do Guilherme com o objetivo de colocar em prática tais rotimas', 'CCGC', 'Nidelson', '1. Iniciamos rotinas diárias voltadas a melhoria de processo.', '2', '0', '0', '2015-01-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('54', '3', '61', '3', '18', 'Liderança', 'Estratégica', 'Encerrar processo envolvendo a devolução do investimento realizado no sistema Fluig (Totvs)', 'Finalizar tratativas que envolvem a devolução deste recurso', 'CCGC', 'Nidelson', '1. Valor devolvido.', '2', '0', '0', '2015-01-01', '2015-03-30', '2015-03-02', '')
INSERT INTO Acao VALUES ('55', '2', '61', '2', '14', 'Liderança', 'Estratégica', 'Propor ajustes e acompanhar alterações no Estatuto do CCGC', 'Enviar ao escritório Dr. Amin as alterações propostas, trocar informações sobre o documento e acompanhar a elaboração do documento', 'CCGC/ Escritório Dr. Amin', 'Nidelson', '1. Realizar reuniões no escritório doo Dr. Amin<br>', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('56', '2', '61', '2', '7', 'Liderança', 'Estratégica', 'Providenciar documentação para pleitear associação a COMIGO', 'Redigir carta ao Presidente da COMIGO', 'CCGC', 'Nidelson', '1. O conselho de administração aprovou o texto da carta em 18/03/15', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('57', '3', '61', '3', '21', 'Liderança', 'Estratégica', 'Acompanhar processo envolvendo possível parceria com a empresa QCONZ - importação produtos Nova Zelândia', 'Manter contato com Bernard <QCONZ>; 2. Agendar apresentação ao conselho Adm.', 'CCGC', 'Nidelson', '1. Apresentação ao conselho de administração foi realizada.', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('58', '3', '61', '3', 'Oportunidade de divulgar produtos das cooperativas na região de Brasília/DF ', 'Liderança', 'Rotina', 'Divulgar o espaço cedido pela coordenação da Agrobrasília para as cooperativas do grupo Cemil', 'Informar as lideranças da cooperativa sobre o espaço gratuito', 'Brasília/DF', 'Nidelson', '1. Fizemos uma visita ao local do estande.', '2', '0', '0', '2015-02-01', '2015-04-30', '2015-03-20', '')
INSERT INTO Acao VALUES ('59', '3', '61', '3', '14', 'Liderança', 'Estratégica', 'Visitar as cooperativas Pompéu, Paraopeba, Abaeté e Sete Lagoas e divulgar o CCGC', '1. Agendar visita e 2. Reunir com a diretoria', 'Cidades das cooperativas', 'Nidelson', '1. Visitas realizadas.', '2', '300', '250', '2015-01-01', '2015-03-30', '2015-03-26', '')
INSERT INTO Acao VALUES ('60', '3', '61', '3', '22', 'Liderança', 'Estratégica', 'Apresentar aos conselheiros a solução Smart Question e, caso seja orientado, dar sequencia à parceria', '1. Após reuniões para avaliar os benefícios da solução; 2. Apresentar aos conselheiros de administração', 'CCGC', 'Nidelson', '1. Pessoas envolvidas neste processo: Amando, Eduardo , Willer e Osmar.', '2', '0', '0', '2015-01-01', '2015-03-30', '2015-03-18', '')
INSERT INTO Acao VALUES ('61', '3', '61', '3', '18', 'Processos', 'Estratégica', 'Definir o futuro da solução Marketplace', '1. Fazer contato com a Totvs; 2. Tentar a devolução do valor investido; 3. Buscar alternativas para a falta de decisão referente a implantação da solução', 'CCGC', 'Nidelson', '1. Retomaremos mais uma vez o projeto.', '2', '0', '0', '2015-01-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('65', '11', '29', '11', '35', 'Processos', 'Estratégica', 'Impermeabilizar o solo do galpão de descarga', 'Asfaltar ou concretar a área mencionda', 'Descarga carvão', 'Márcia', '1. Foi aprovado pela Diretoria ', '0', '15000', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('66', '11', '28', '11', '35', 'Estratégias e Planos', 'Estratégica', 'Buscar alternativas voltadas ao suprimento de energia elétrica da usina', 'Solicitar proposta para a instalação de conjunto de geradores que trabalhará paralelo a Cemig', 'Sid. Terra', 'Gabriel', '1. Neste período de elevada alta no custo da energia torna-se muito relevante tal iniciativa', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('67', '11', '17', '11', '34', 'Estratégias e Planos', 'Estratégica', 'Agendar nova data para dar continuidade ao treinamento dos deptos de compras/ transporte/ logística/ expedição - sobre questões voltadas as incidências de impostos nas negociações comerciais e contratações de mão-de-obra', 'Apresentação de material e treinar as pessoas diretamente envolvidas nestas atividades', 'Sid. Terra', 'Angela', '1. Dar continuidade ao projeto', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('68', '11', '30', '11', '35', 'Clientes', 'Estratégica', 'Realizar estudos sobre agentes desfosforantes', 'Confeccionar um agente químico desfosforante', 'Sid. Terra', 'Evaldo', 'Oferecer ao cliente interno um produto para a fosforização do ferro gusa utilizando subprodutos', '2', '0', '0', '2015-01-01', '2015-02-01', '0000-00-00', '')
INSERT INTO Acao VALUES ('69', '11', '13', '33', 'Atender recomendações em relatório de acidente evitando contato do operador com energia elétrica', 'Pessoas', 'Rotina', 'Instalar cabo para comando do carro metro', 'Buscar aprovação da ação, cotar a obra e contratar terceiros para executar o projeto', 'Descarga carvão', 'José Maria', '', '0', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('70', '11', '14', '31', '35', 'Liderança', 'Estratégica', 'Jogar pó do filtro de manga direto para o silo de moinha/ agregar valor ao produto, em torno de R$3.000,00/ mês', 'Instalar tubulação com ventoinha igual ao processo da descarga de carvão', 'Despoeiramento carvão AF', 'José Armando/ David', '1. Resultado aproximado de R$3.000,00/ mês ', '0', '110000', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('71', '11', '18', '11', 'Redução na quebra dos caminhões por este motivo - redução custos de manutenção ', 'Sociedade', 'Rotina', 'Fazer manutenção das estradas internas da Siderúrgica Terra', '1. Levantar condições atuais das estradas; 2. Levantar material necessário para reparos; 3. Buscar aprovação caso tenha custos e 4. Executar a manutenção', 'Sid. Terra', 'Flávio', '1. Informar os custos para a respectiva manutenção das estradas', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('74', '11', '15', '11', 'Para não sermos penalizados pelos órgãos Estadual, Federal e Municipal', 'Processos', 'Rotina', 'Priorizar a implantação do controle de arquivos XML pelos departamentos: sejam elas matérias-primas, compras diversas, realizando pagamentos somente após o recebimento. Ex.: nossas vendas Gerdau', 'Acompanhamento pelo setor de TI', 'Setores de compras logistica e Pgto carvão', 'Tânia', '', '0', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('83', '11', '31', '11', '', 'Liderança', 'Estratégica', '1', '1', '1', '1', '1', '0', '0', '0', '2015-01-01', '1969-12-31', '0000-00-00', '')
INSERT INTO Acao VALUES ('84', '11', '33', '11', '33', 'Liderança', 'Estratégica', '1', '1', '1', '1', '1', '0', '0', '0', '2015-01-01', '1969-12-31', '0000-00-00', '')
INSERT INTO Acao VALUES ('85', '11', '34', '11', '42', 'Liderança', 'Estratégica', 'Conduzir processos envolvendo o Planejamento Estratégico, Plano de Ação, Indicadores de Desempenho e PDI da Sid. Terra', 'Adotar instrumentos voltados para estes 4 pilares de gestão', 'Sid. Terra', 'Alesson/ Nidelson', '1. Dar sequencia ao trabalho iniciado em setembro/ 2014 <Nidelson>', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('88', '2', '66', '3', '1. Regularizar a situação profissional ao conselho de classe', 'Processos', 'Rotina', 'Fazer pedido CRC definitivo (Contadora Márcia) e vincular o CCGC ao seu cadastro', '1. Providenciar documentação; 2. Submeter ao CRC-MG e 3. Proceder tramitação necessária para vincular o CCGC ao seu cadastro', 'CRC-MG', 'Márcia', '1. Dia 20/03/2015 a Márcia recebeu a confirmação de liberação do CRC-MG em definitivo.', '2', '279', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('92', '2', '66', '3', '1. Fazer controle de ponto e facilitar o registro de horários', 'Pessoas', 'Rotina', 'Estudar sobre o ponto eletrônio e, caso seja aprovado, implantar no CCGC', '1. Estudar sobre a legislação; 2. Fazer cotação, 3. Buscar aprovação da Diretoria e 4. Executar', 'CCGC', 'Márcia', '1. Assim que avançar no projeto - fazer orçamento', '2', '0', '0', '2015-01-03', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('93', '2', '66', '3', 'Reciclagem de conhecimento', 'Informações e Conhecimento', 'Rotina', 'Estudar legislação Trabalhista e Fiscal', '1. Usar material próprio, 2. Compartilhar informações com profissionais da Cemil <Trabalhista - Daniela e Fiscal - Daniel>', 'CCGC', 'Márcia', '1. Compartilhar o conhecimento com outros profissionais', '2', '0', '0', '2015-01-03', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('94', '3', '61', '3', '7', 'Estratégias e Planos', 'Estratégica', 'Planejar processo de compras estratégicas 2015 - semente de milho/ pastagem e semente de sorgo', '1. Redigir programação; 2. Enviar aos gestores das consorciadas; 3. Fazer reunião presencial', 'CCGC', 'Nidelson/ Wellerson', '1. Agenda será definida', '2', '0', '0', '2015-02-01', '2015-05-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('95', '3', '61', '3', '7', 'Estratégias e Planos', 'Estratégica', 'Planejar processo de compras estratégicas 2015 - defensivos', '1. Redigir programação; 2. Enviar aos gestores das consorciadas; 3. Fazer reunião presencial', 'CCGC', 'Nidelson/ Wellerson', '1. Elevação do dólar influenciou a programação de acompanhar preços no mercado.', '2', '0', '0', '2015-01-02', '2015-05-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('96', '3', '61', '3', '8', 'Estratégias e Planos', 'Estratégica', 'Dar sequencia aos contatos com o consultor Rui Daher da empresa Biocampo sobre as tratativas da Misturadora de Adubo', 'Fazer contato telefônico, reafirmar nossa intenção de avaliar este negócio e receber cotação pelo serviço para aprovação do conselho', 'CCGC', 'Nidelson', '1. A estratégia se refere a constituição de indústria conjunta.', '2', '0', '0', '2015-01-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('97', '2', '61', '2', 'Colaborar com o processo de informação - conhecer cooperativas de referência na região', 'Clientes', 'Rotina', 'Colaborar com o processo de visitas externas - demanda da Coopa para visitar a Coopercitrus', 'Agendar visita <Daise>, fazer contato com as consorciadas para levantar interesse e colaborar no processo de logística', 'CCGC', 'Nidelson/ Daise', '1. A data inicialmente prevista seria dia 25/04/2015', '2', '0', '0', '2015-02-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('98', '3', '61', '3', '7', 'Liderança', 'Estratégica', 'Contratar comprador para o Núcleo Agrícola - sugestão da Coopa', 'Ter autorização do conselho de adminstração, buscar profissionais no mercado, fazer processo seletivo', 'CCGC', 'Nidelson', '1. Esta demanda foi levantada pela Coopa.<br>2. O conselho de administração sugeriu agregar esta tarefa para o Wellerson.', '2', '0', '0', '2015-03-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('99', '3', '61', '3', '8', 'Estratégias e Planos', 'Estratégica', 'Dar sequencia às tratativas referentes a Proposta comercial apresentada pela Adubos Paranaíba', 'Receber proposta, apresentar ao conselho e dar retorno ao Leonardo <sócio proprietário>', 'CCGC', 'Nidelson', '1. Proposta apresentada na reunião do conselho em 17/03/2015.<br>2. Falei com o Leonardo, por telefone, na semana de 16 a 20 de março de 2015.', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('100', '3', '61', '3', '7', 'Informações e Conhecimento', 'Estratégica', 'Criar banco de dados para acompanhar indicadores do mercado que implica, diretamente, o negócio das consorciadas: câmbio, soja, milho, algum defensivo referência, alguma matéria prima de fertilizantes, etc.', '1. Eleger algum banco de dados; 2. Levantar variáveis <indicadores>, 3. Elaborar relatórios e compartilhar com as consorciadas', 'CCGC', 'Nidelson/ Wellerson', '1. Tal demanda surgiu na reunião mensal de fevereiro/ 15 na Coopa. ', '2', '0', '0', '2015-02-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('101', '3', '61', '3', 'Definir sobre a continuidade do contrato com a Localiza', 'Pessoas', 'Rotina', 'Definir sobre a aquisição de um veículo para o CCGC', 'Levantar custos, apresentar ao conselho e definir se continuaremos com o carro alugado', 'CCGC', 'Nidelson', '1. O contrato com a empresa Localiza termina neste final de semestre. Valor mensal de R$1.400,00', '2', '0', '0', '2015-03-18', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('102', '3', '61', '3', 'Evitar de deixar os veículos expostos ao sol', 'Pessoas', 'Rotina', 'Fazer projeto sobre Proposta de cobertura no estacionamento do CCGC e tomar as devidas providências caso seja autorizado', '1. Pedir ao Roberto um projeto; 2. Cotar preço da estrutura <madeira de eucalipto e sombrite/ telha amianto> e 3. Verificar a possibilidade de ratear entre os proprietários de veículos do CCGC', 'CCGC', 'Nidelson/ Helvécio', '1. O Roberto <Robertinho> está providenciando o projeto.', '2', '0', '0', '2015-02-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('103', '3', '61', '3', 'Substituir uniformes velhos e oferecer uniformes para pessoas recém contratadas', 'Pessoas', 'Rotina', 'Providenciar novos uniformes para a equipe CCGC', '1. Fazer cotações; 2. Testar materiais; 3. Levantar demanda e 4. Acompanhar processo de confecção', 'Patos de Minas', 'Nidelson/ Daise', '1. A Daise está acompanhando este processo.', '2', '45', '0', '2015-02-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('105', '3', '61', '3', '7', 'Liderança', 'Estratégica', 'Resgatar a iniciativa de Realização de reuniões do Comitê de Compras do Consórcio - CCC', 'Reagendar as reuniões com periodicidade mensal e com a participação de representantes das consorciadas', 'CCGC', 'Nidelson', '1. O atual momento do CCGC <interação entre os participantes do projeto> permite voltar com a iniciativa', '2', '0', '0', '2015-04-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('106', '11', '22', '11', ' teste', 'Pessoas', 'Rotina', 'teste', 'teste', 'Sid. Terra', 'Patrícia/ Paulo', '1. Teste', '0', '0', '0', '2015-01-02', '1969-12-31', '0000-00-00', '')
INSERT INTO Acao VALUES ('107', '11', '71', '11', 'Qualificar os balanceiros', 'Pessoas', 'Rotina', 'Treinar balanceiros na utilização do sistema Metalsoft', 'Buscar apoio do setor TI para realizar o treinamento', 'Sid. Terra', 'Patrícia/ Paulo', '1. Paulo - setor TI está preparando treinamento.', '0', '0', '0', '2015-01-02', '1969-12-31', '0000-00-00', '')
INSERT INTO Acao VALUES ('108', '3', '61', '3', '7', 'Liderança', 'Estratégica', 'Estruturar o Núcleo Postos de Combustível/ Transporte', 'Alinhar com o comprador Eustáquio para que ele assuma o núcleo', 'CCGC', 'Nidelson/ Eustáquio', '1. Eustáquio passou a comprar itens dos postos de combustíveis e transporte. <br>2. Numa fase anterior, o Eustáquio cadastrou vários itens do núcleo e, a partir desta tarefa, foi possível incorporar tais compras.', '2', '0', '0', '2015-02-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('109', '3', '61', '3', '23', 'Liderança', 'Estratégica', 'Adotar ações que aproximem os agentes e os instrumentos relacionados ao Planejamento Estratégico das cooperativas Grupo Cemil', 'Ter a permissão do Conselho de Administração; Fazer contato com lideranças das cooperativas e realizar reunião para discutirmos o assunto', 'CCGC', 'Nidelson', '1. Algumas cooperativas não tem ainda o Planejamento Estratégico, mas daríamos um importante passo se conseguirmos uma primeira reunião sobre o assunto.', '2', '0', '0', '2015-04-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('110', '3', '61', '3', 'Facilitar operações entre as cooperativas; evitar tributos; intensificar relações entre as conso', 'Estratégias e Planos', 'Rotina', 'Levantar informações sobre os Estatutos das consorciadas e buscar associação entre as cooperativas (associação mútua)', 'Levantar informações sobre cláusulas impeditivas para associação em outras cooperativas; levantar documentação necessária para proceder tal associação e executar ', 'CCGC', 'Nidelson/ Daise', '1. Falta Coopervap aprovar novo estatuto<br>2. Falta estudar estatuto da Coopatos <cláusula específica> - Ricardo ciente.', '2', '0', '0', '2015-01-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('111', '2', '61', '2', 'Facilitar, para as consorciadas, o acesso a informação sobre agenda. A Coopa demandou tal acompanh', 'Informações e Conhecimento', 'Rotina', 'Instalar sistema que controla agenda - será utilizado pelas consorciadas', 'Levantar ferramentas capazes de exercer tal solução e implantar no CCGC', 'CCGC', 'Nidelson/ Osmar', '1. O Osmar disse algo sobre esta solução. Citou o Eudes como referência no assunto.', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('112', '3', '61', '3', 'Instrumento para acompanhamento de índices do mercado = dólar, milho, soja, café, etc.', 'Processos', 'Rotina', 'Levantar informações; comprar acessórios e fazer funcionar a TV do CCGC', 'Fazer contato com o Lucas do TI Cemil para ajudar nesta tarefa', 'CCGC', 'Nidelson/ Daise', '1. Vários testes foram realizados, mas ainda não foi possível colocar a TV para funcionar.', '2', '50', '0', '2015-03-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('113', '3', '61', '3', '7', 'Estratégias e Planos', 'Estratégica', 'Divulgar a parceria da Coopa com a Syngenta/ Bayer às demais consorciadas e buscar sinergia nessa parceria', 'Agendar reuniões nas consorciadas com a presença do Sr. Renato Nunes <e demais gestores Coopa> para apresentar o projeto', 'Consorciadas', 'Nidelson/ Renato', '1. Olhar agenda do Renato', '2', '0', '0', '2015-03-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('115', '3', '61', '3', 'Ter informações sobre o mercado e atender demandas das consorciadas', 'Informações e Conhecimento', 'Rotina', 'Acompanhar preço de insumos de Mato Grosso (Milho, por exemplo) - sugestão Coopa', 'Levantar informações sobre preço de Mato Grosso <principalmente de frete>', 'CCGC', 'Nidelson/ Wellerson', '1. Sugestão José Antonio da Coopa.', '2', '0', '0', '2015-03-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('116', '3', '61', '3', 'Evitar serviços inacabados e evitar acidentes', 'Processos', 'Rotina', 'Concluir tarefas relacionadas a instalação elétrica CCGC', 'Verificar a necessidade de pequenos reparos: tomada, tubulação, canaletas, etc.', 'CCGC', 'Nidelson/ Daise', '1. O serviço principal foi concluído, basta acompanhar os ajustes', '2', '0', '0', '2015-04-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('117', '3', '61', '3', 'Padronizar serviço e buscar redução de custo', 'Estratégias e Planos', 'Rotina', 'Fazer cotação com empresas de Auditoria contábil para todas as cooperativas do grupo', 'Cotar com as atuais empresas que prestam tal serviço às consorciadas. Fazer cotação para todas as cooperativas', 'CCGC', 'Nidelson/ Gilberto', '1. Gilberto fará contato com as empresas de auditoria', '2', '0', '0', '2015-04-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('118', '16', '72', '63', '56', 'Liderança', 'Estratégica', 'Vender excedente de energia', 'Elaborando processo de venda junto a concessionaria CEMIG', 'Siderpam', 'Alesson/Carlos Eduardo/Gabriel', 'Conseguir a eficiencia nominal das duas termoeletricas ao nivel de 2,4 mega Whats, reduzir o consumo de energia nas dependencias da usina, ofertar paralelamente o excedente de energia na concessionaria.', '2', '15000', '0', '2015-01-04', '2015-06-01', '2015-05-15', '')
INSERT INTO Acao VALUES ('121', '2', '61', '2', 'Inserir estes links para evitar solicitação de compras "fora" do sistema Protheus', 'Processos', 'Rotina', 'Acompanhar e garantir o bom funcionamento dos links CCGC nos setores laticínio e indústria de nutrição animal da Coopervap', '1. Fazer contato com os gestores; 2. Sensibilizá-los em relação a importância da ferrameta; 3. Acompanhar a instalação e funcionalidades', 'CCGC/ Coopervap', 'Nidelson', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('122', '2', '61', '2', 'Evitar que a data fique em branco. Trata-se de uma informação relevante', 'Informações e Conhecimento', 'Rotina', 'Alterar no sistema o campo de data da "SC", pois aparece em branco e sugere-se preenchimento automático', '1. Solicitar ao setor de TI da Cemil para proceder ajustes necessários', 'CCGC', 'Nidelson', '', '2', '0', '0', '2015-01-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('123', '2', '61', '2', 'Melhorar a qualidade da informação: o preço de um produto pode ser diferente em função das cond', 'Informações e Conhecimento', 'Rotina', 'Ajustar relatório do sistema Totvs para que a loja (Cliente) apareça no histórico da "SC"', '1. Solicitar ao setor de TI da Cemil para proceder ajustes necessários', 'CCGC', 'Nidelson', '1. O valor da prestação de serviço da Jeane será lançado em apenas 1 ação em função da impossibilidade de lançar fragmentado.', '2', '0', '0', '2015-01-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('124', '2', '61', '2', 'Evitar calculo via planilha - reduzir esforço operacional', 'Informações e Conhecimento', 'Rotina', 'Incluir no relatório de "PC" uma coluna com o total referente a "Preço Mercado x Preço CCGC"', '1. Solicitar ao setor de TI da Cemil para proceder ajustes necessários', 'CCGC', 'Nidelson', '', '2', '0', '0', '2015-01-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('125', '2', '61', '2', 'Fazer grupos entre profissionais das consorciadas e CCGC para facilitar a comunicação', 'Informações e Conhecimento', 'Rotina', 'Levantar informações sobre o plano de telefonia do CCGC e sobre a possibilidade de termos aparelhos coerentes com a tecnologia "whatsapp"', '1. Daise levantará informações sobre o plano de telefonia e 2. Tomar decisão sobre aparelhos e respectivos grupos', 'CCGC', 'Nidelson/ Daise', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('126', '3', '61', '3', '7', 'Estratégias e Planos', 'Estratégica', 'Criar comissão para aprofundar a temática "Preço Mercado x Preço CCGC"', 'Envolver pessoas das consorciadas que tem relação direta com o projeto CCGC e a Central de compras', 'CCGC', 'Nidelson', '', '2', '0', '0', '2015-04-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('128', '3', '61', '3', '7', 'Estratégias e Planos', 'Estratégica', 'Estudar sobre a possibilidade de arrendamento de plantas industriais para a produção de defensivos agrícolas', 'Verificar empresas com planta ociosa e buscar parcerias <tratar do assunto nas negociações de defensivos>', 'CCGC', 'Nidelson', '1. Verificar durante negociações defensivos', '2', '0', '0', '2015-01-04', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('129', '2', '67', '2', '17', 'Pessoas', 'Estratégica', 'Realizar treinamento sobre mercado de capitais', 'Agendar com um parceiro de segmento', 'CCGC/ Consorciadas', 'Wellerson', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('130', '2', '67', '2', 'Garantir melhores  estratégias nas compras em conjunto', 'Estratégias e Planos', 'Rotina', 'Realizar reuniões com integrantes do NTA de cada consorciada', 'Montar conograma de reuniões e apresentar para avaliação de todos', 'CCGC/ Consorciadas', 'Wellerson/ Nidelson', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('131', '2', '67', '2', 'Melhorar relacionamento e troca de informações', 'Informações e Conhecimento', 'Rotina', 'Criar rotina de visitas junto as consorciadas', 'Agendar visitas com datas definidas em cada consorcida', 'Consorciadas', 'Wellerson', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('132', '2', '67', '2', ' Estreitar relacionamentos e toca de informações', 'Estratégias e Planos', 'Rotina', 'Visitar as principais empresas fornecedoras do NTA', 'Criar agenda de visitas junto aos fornecedores', 'Fornecedores in loco', 'Wellerson/ Nidelson', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('133', '2', '67', '2', 'Buscar informações para tomada de decisão estratégica nas compras de 2015', 'Estratégias e Planos', 'Rotina', 'Montar mini workshop com principais fornecedores de farelo de soja', 'Agendar visitas destes fornecedores em data a ser definida ate o final de fevereiro', 'CCGC', 'Wellerson', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('134', '2', '67', '2', ' Melhorar atendimento ao grupo', 'Informações e Conhecimento', 'Rotina', 'Levantar informações dos principais fornecedores do NTA que estão atendendo plenamente as expectativas do grupo', 'Visitas in loco em cada consorciada', 'Consorciadas', 'Wellerson', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('135', '2', '67', '2', 'Aumentar a prestação de serviço do CCGC perante a consorciada', 'Informações e Conhecimento', 'Rotina', 'Levantar junto a consorciada novos produtos que podem ser adquiridos via CCGC', 'Mapear informações nas visitas a sere realizadas', 'Consorciadas', 'Wellerson', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('136', '2', '67', '2', 'Manter as consorcidas munidas de informações para o bom desenvolvimento de seus tralalhos', 'Informações e Conhecimento', 'Rotina', 'Estruturar as informações diárias relevantes ao NTA', 'Criar email <jornais>/ contatos/ diários/ entre outros', 'CCGC', 'Wellerson', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('137', '2', '70', '2', 'Para definir os itens que serão comprados', 'Processos', 'Rotina', 'Criar POP para núcleo postos de gasolina', 'Verificando com o Nidelson', 'CCGC', 'Eustáquio/ Nidelson', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('138', '2', '70', '2', ' Para iniciar as inserções de solicitações no sistema protheus', 'Processos', 'Rotina', 'Cadastrar todos os itens do posto de gasolina', 'Buscando junto as consorciadas as listas individuais de todos os itens comercializados no posto de gasolina', 'CCGC', 'Eustáquio', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('139', '2', '70', '2', ' Buscar eficiencia e eficácia no processo de compras CCGC x Consorciadas', 'Resultados', 'Rotina', 'Eleger indicadores para mensurar o desempenho do núcleo da central de compras', '1 - Listar indicadores 2 - Estabelecer metas 3 - Definir o mecanismo de apuração 4 - Definir periocidade de apuração', 'CCGC', 'Eustáquio/ Nidelson', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('140', '2', '70', '2', ' Facilitar a comunicação, otimizar tempo de resposta e reduzir cuto de telefonia', 'Processos', 'Rotina', 'Levantar pontos laticínio/ almoxarifado/ posto gasolina que demandam telefones fixos para contato gratuito com o CCGC', 'Levantar os locais para instalar aparelhos que funcionarão como ramais', 'CCGC', 'Eustáquio/ Nidelson', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('141', '2', '70', '2', ' Início do desenvolvimento do núcleo de posto de gasolina', 'Processos', 'Rotina', 'Efetuar compras filtros/ lubrificante via CCGC', 'Cadastrando os itens e disponibilizando as consorciads todas as informações', 'CCGC', 'Eustáquio', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('142', '2', '70', '2', ' Podemos trabalhar contrato corporativo', 'Informações e Conhecimento', 'Rotina', 'Levantar valores de compras de peças Iveco o grupo', 'Com valores de demandas em mãos, pessoalmente junto ao fornecedor', 'CCGC', 'Eustáquio', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('143', '2', '70', '2', ' Conhecer e levantar informações que ajudam a desenvolver os núcleos', 'Informações e Conhecimento', 'Rotina', 'Visitar setores de transportes e logística das consorciadas', 'Marcando a visita aproveitando as visitas dos outros núcleos', 'CCGC', 'Eustáquio', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('144', '2', '70', '2', 'Para planejar compra conjunta com preços diferenciados', 'Estratégias e Planos', 'Rotina', 'Levantar quantidade de veículos frota própria/ terceiros das consrociadas', 'Estudando as demandas de cada consorciada', 'CCGC', 'Eustáquio', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('145', '2', '70', '2', ' Temos que ter a tabela com preços voltado para o CCGC e passar para as concorciadas', 'Processos', 'Rotina', 'Obter tabela 2015 de pneus goodyear para o CCGC', 'Acionando o fornecedor', 'CCGC', 'Eustáquio', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('146', '2', '70', '2', ' As demais consorciadas estão comprando via CCGC', 'Processos', 'Rotina', 'Resgatar processo de compra de pneus da consorciada Coopa', 'Visitando e msotrando a tabela de preços conquistados via CCGC', 'CCGC', 'Eustáquio', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('147', '2', '70', '2', ' A Cemil compra com preço diferenciado, por tanto devemos estender as consorciadas', 'Processos', 'Rotina', 'Articular com a Pirelli para que as consorciadas tenham o preço praticado para a Cemil', 'Fazendo contato com a Pirelli e agendando visita  no CCGC', 'CCGC', 'Eustáquio', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('148', '2', '70', '2', ' Reunir com responsáveis pela loja agroveterinária/ supermercado e sugerir', 'Processos', 'Rotina', 'Verificar com a Carpec a possibilidade de inserirvendas de pneus', 'Marcando visita na Carpec', 'CCGC', 'Eustáquio', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('149', '2', '70', '2', ' Estudar forma paralela de contrato corporativo', 'Liderança', 'Rotina', 'Levantar volume comprado de combustíveis no grupo', 'Recebendo das consorciadas os volumes comprados em cada mês', 'CCGC', 'Eustáquio', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('150', '2', '70', '2', 'Facilitar o pedido de filtros e lubrificantes', 'Clientes', 'Rotina', 'Verificar possibilidade de instalção do link protheus nos postos de gasolina', 'Verificando com cada consorciada', 'CCGC', 'Eustáquio', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('151', '2', '70', '2', ' Item em comum utilizado para lavar veículos', 'Processos', 'Rotina', 'Aprovar fornecedor para compra de desengraxante e shampoo', 'Verificando qual produto utilizado atualmente em cada consorciada', 'CCGC', 'Eustáquio', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('152', '2', '70', '2', ' Conhecer e evantar informações importantes para o processo de compra', 'Informações e Conhecimento', 'Rotina', 'Visitar cada posto de combustíveis de cada consorciada', 'Marcando visita', 'CCGC', 'Eustáquio', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('153', '2', '70', '2', ' Buscar novos preços diferenciados', 'Processos', 'Rotina', 'Verificar possibilidade de sermos cadastrados como rede direto na MANN', 'Tentar negociar via distribuidor Dellas MG', 'CCGC', 'Eustáquio', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('154', '2', '70', '2', 'Estudar forma paralela de contrato corporativo', 'Informações e Conhecimento', 'Rotina', 'Levantar vencimentos de contrato de cada posto de combustível', 'Com os dados levantados do grupo, reunir com os responsáveis por contrato na Petrobrás', 'CCGC', 'Eustáquio', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('155', '2', '68', '2', ' Ter opções de fornecimento, redução de custos', 'Processos', 'Rotina', 'Fazer contato com atacadistas para negociação de produtos Ypê', '1 - Fazer contato com representante Amir 2 - Agendar reunião CCGC 3 - Proceder negociação', 'CCGC', 'Jaime', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('156', '2', '68', '2', ' Rever fornecedores comuns e alinhar processos de compra supermercado', 'Clientes', 'Rotina', 'Iniciar e concluir um novo ciclo de visitas as consorciadas', '1 - Agendar visita 2 - Definir pessoas que participarão das reuniões 3 - Executar demais passos', 'CCGC', 'Jaime', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('157', '2', '68', '2', ' Discutir ações para atingir resultados positivos nas compras relacionadas aos supemercados - Ajus', 'Clientes', 'Rotina', 'Reunir com os gestores dos supermercados neste semestre (1º/2015) - contar com a participação do Nidelson', '1 - Agendar com os gestores 2 - Estabelecer uma pauta minima 3 - Proceder a reunião', 'CCGC', 'Jaime', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('158', '2', '68', '2', ' Buscar preços mais atrativos ao grupo', 'Liderança', 'Rotina', 'Levantar informações para cadastrar as consorciadas como "rede" perante a Ambev', '1 - fazer contato com distribuidora local 2 - Levantar demanda do grupo 3 - fazer contato com gestor da Ambev 4 - Buscar informações sobre cadastro', 'CCGC', 'Jaime', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('159', '2', '68', '2', ' Evitar que sejam solicitadas mercadorias fora do padrão de embalagem', 'Processos', 'Rotina', 'Solicitar ao setor de T.I ajustes no campo "quantidades" das solicitações de compra', '1 - Informar ao setor de T.I a demanda 2 - Alinhar com o Joelber sobre respectivo ajuste 3 - Acompanhar a execução', 'CCGC', 'Jaime', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('160', '2', '68', '2', ' Interação, busca de informações referentes ao supermercado e ajustar processos', 'Clientes', 'Rotina', 'Criar rotina de visita ensal a ser realizada pelo Jaime nos supermercados das consorciadas', '1 - Estabelecer cronograma de visita 2 - Agendar veículo 3 - Realizar as respectivas visitas', 'Consorciadas', 'Jaime', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('161', '2', '68', '2', 'Padronização de mix dos supermercados', 'Informações e Conhecimento', 'Rotina', 'Fazer contato com profissional (Rubens) responsável pela universidade Martins para propor trabalho envolvendo supermercados das consorciadas', '1 - Fazer contato com Ivânio 2 - Inteirar do projeto 3 - Buscar implantação em todos os supermercados', 'CCGC', 'Jaime', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('162', '2', '68', '2', '1 - Entender o projeto 2 - Utilizar tal mecanismo nas demais consorciadas', 'Informações e Conhecimento', 'Rotina', 'Buscar informações sobre o procedimento adotado pela Coopa referente aos panflestos (supermercados)', '1 - Fazer contato com Ivânio 2 - Entender o procedimento3 - Entender como as demais consorciadas utilizam este mecanismo 4 - Buscar padronização', 'CCGC', 'Jaime', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('163', '2', '68', '2', ' 1 - Entender a negociação 2 - Implantar tal negociação para as demais consorciadas', 'Clientes', 'Rotina', 'Buscar informações sobre o procedimento adotado pela Coopa referente a venda de espaço de ponta de gondolas (supermercado)', '1 - Fazer contato com Ivânio 2 - Entender negociação 3 - Aplicar ou repassar a ideia para as demais consorciadas', 'CCGC', 'Jaime', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('164', '2', '68', '2', ' 1 - Mecanismo de reposição dos produtos vecidos/ danificados 2 - Padronização do procedimento', 'Clientes', 'Rotina', 'Conhecer o mecanismo atual utilizado pelas consorciadas referente a troca de produtos e/ou bonificações para produtos vencidos/ daificados (supermercados)', '1 - Conhecer a pratica adotada por cada consorciada <supermercados> 2 - Fazer contato com os fornecedores 3 - Padronizar tal processo', 'CCGC', 'Jaime', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('165', '2', '68', '2', ' Ter alternativas de fornecedor de óleo de soja', 'Clientes', 'Rotina', 'Agendar visita aos fornecedores de óleo de soja - ABC, Cargil, ADM, Comigo - para apresentar o CCGC e buscar condições especiais para o grupo', '1 - Garantir os volumes deste produto do CCGC 2 - Ter histórico de quantidade 3 - Agendar visita 4 - realizar programação visita', 'Fornecedores óleo de soja', 'Jaime', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('166', '2', '68', '2', ' Evidenciaralguma mensagem de cunho social e/ou ambietal que tenha aderência a filosofia das cooper', 'Informações e Conhecimento', 'Rotina', 'Inserir mensagem padrão nas sacolinhas do supermercado', '1 - Buscar sugestão ao fornecedor 2 - Compartilhar entre os gestores 3 - Escolher mensagem', 'CCGC', 'Jaime', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('167', '2', '68', '2', ' Buscar alternativas de frnecimento 2 - Melhores condições para o CCGC', 'Clientes', 'Rotina', 'Cotar as sacolinhas do supermercado com outros fornecedores alternativos, exemplo: Neoplastic (fornecedor CCGC lona)', '1 - Fazer contato com novos fornecedores 2 - Falar sobre o CCGC 3 - Receber propostas comerciais', 'CCGC', 'Jaime', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('168', '2', '68', '2', ' 1 - Valor agregado 2 - Produto comum a todas as cooperativas 3 - Possibilidade de ganho a compra co', 'Estratégias e Planos', 'Rotina', 'Estudar negociações envolvendo produtos referente a açougue (supermercado)', '1 - Visitar as consorciadas e identificar os itens comuns 2 - Fazer contato com fornecedores 3 - Iniciar processo de compra', 'CCGC e Consorciadas', 'Jaime', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('169', '2', '68', '2', ' Facilitar a comunicação e torna-la mais agil', 'Informações e Conhecimento', 'Rotina', 'Criar grupo whatsapp do núcleo supermercado', '1 - Buscar aprovação junto a diretoria de aparelhos com tal tecnologia 2 - Fazer grupo', 'CCGC', 'Jaime', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('171', '71', '54', '71', 'Segurança dos dados', 'Processos', 'Rotina', 'Backup Cemil', 'Fita LTO', 'Data Center', 'Osmar', '', '0', '0', '0', '2015-04-04', '2015-05-05', '0000-00-00', '')
INSERT INTO Acao VALUES ('172', '13', '79', '20', 'Reduzir a possibilidade de erros na conferência dos documentos; ampliar a qualidade das informaçõ', 'Pessoas', 'Rotina', 'Treinar balanceiros na utilização do sistema Metalsoft', 'Buscar apoio do setor TI para realizar o treinamento', 'Balança', 'Patrícia/ Paulo', '', '2', '0', '0', '2015-01-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('173', '11', '27', '67', 'Recuperar toda a escória dos resíduos', 'Processos', 'Estratégica', 'Instalar uma nova peneira na planta de beneficiamento de sucata/ escória (extrair 100% da escória contida nos resíduos)', 'Instalando uma peneira de malha 3/16“ na ponta da TC4', 'Planta Beneficiamento 1', 'David', '', '2', '2500', '0', '2015-01-01', '2015-02-28', '0000-00-00', '')
INSERT INTO Acao VALUES ('174', '11', '27', '67', 'Padronizar rotina de trabalho', 'Informações e Conhecimento', 'Rotina', 'Criar procedimento de trabalho para operadores de máquina carregadeira', 'Documentar e colocando o visto do colaborador', 'Planta Beneficiamento 1 e 2', 'David', '', '2', '0', '0', '2015-01-01', '2015-01-30', '2015-01-30', '')
INSERT INTO Acao VALUES ('175', '11', '27', '67', 'Minimizar perda de produção durante período chuvoso', 'Liderança', 'Rotina', 'Garantir matéria prima para a planta 02', 'Manter 4 lotes de 250ton cobertos com lona de plástico', 'Planta 02', 'David', '', '2', '0', '0', '2015-01-01', '2015-01-20', '2015-01-20', '')
INSERT INTO Acao VALUES ('176', '11', '27', '67', 'Garantir qualidade do produto', 'Clientes', 'Rotina', 'Melhorar controle de qualidade referente as amostras de escória britada e granulada na planta de beneficiamento', 'Coletar e analisar amostras de escória britada e granulada', 'Planta Beneficiamento 1', 'David/ Evaldo', '', '2', '0', '0', '2015-01-01', '2015-01-10', '2015-01-10', '')
INSERT INTO Acao VALUES ('177', '11', '27', '67', 'Otimizar processo e agragar valor ao subproduto sem interferir na qualidade do mesmo', 'Processos', 'Rotina', 'Adequar percentual de finos de escória na escória britada comercializada', '1. Fazer adequação no processo e 2. Cumprir padrão de qualidade do subproduto obedecendo a tolerância de finos de escória', 'Planta Beneficiamento 1', 'David', '', '2', '0', '0', '2015-01-01', '2015-01-10', '2015-01-10', '')
INSERT INTO Acao VALUES ('178', '11', '27', '11', 'Facilitar troca de informações, comunicação e tomada de decisão', 'Informações e Conhecimento', 'Rotina', 'Melhorar o nível de informação do setor', 'Instalar mesa com computador', 'Sala anexa laboratório', 'David/ Alan', '', '2', '1400', '0', '2015-01-01', '2015-01-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('179', '11', '27', '67', ' Facilitar a separação dos materiais', 'Sociedade', 'Rotina', 'Identificar locais de descarte de resíduos do AF', 'Colocar placas identificadoras de cada material', 'Planta Beneficiamento 1', 'David', '', '2', '0', '0', '2015-01-01', '2015-04-30', '2015-01-30', '')
INSERT INTO Acao VALUES ('180', '11', '29', '11', 'Em caso de incêndio é necessário acesso por cima', 'Pessoas', 'Rotina', 'Colocar o sistema de segurança para acesso ao telhado dos silos I e II', 'Colocar passarela e cabo-vida no telhado dos silos ', 'Silos I e II', 'Márcia', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('181', '11', '29', '11', 'O atual sistema não oferece segurança necessária', 'Pessoas', 'Rotina', 'Mudar sistema de condução de carvão ao silo', 'Adaptando-o para ser conduzido ao silo, sem a companhia de carrinheiro', 'Silo I', 'Márcia', '', '0', '4000', '0', '2015-01-01', '2015-02-26', '0000-00-00', '')
INSERT INTO Acao VALUES ('182', '11', '29', '12', 'Gerar maior segurança e confiabilidade nos relatórios gerados no setor', 'Informações e Conhecimento', 'Rotina', 'Informatizar o setor de descarga de carvão da Siderúrgica Terra', 'Instalar computador e programa apropriado a demanda', 'Descarga carvão', 'Márcia', '', '2', '0', '0', '2015-01-01', '2015-02-27', '2015-05-01', '')
INSERT INTO Acao VALUES ('183', '11', '29', '11', 'Para evitar consumo de papel, tinta de impressora e agilizar posicionamento na fila de descarga de c', 'Informações e Conhecimento', 'Rotina', 'Informatizar portaria da Siderúrgica Terra', 'Instalar computador e passar a planilha da Fila de carvão para o setor que será instalado', 'Portaria Sid Terra', 'Márcia', '', '2', '0', '0', '2015-01-01', '2015-01-21', '0000-00-00', '')
INSERT INTO Acao VALUES ('184', '11', '29', '11', 'Os atuais funcionários já exercem  esta função e, assim, teriam mais motivação', 'Pessoas', 'Rotina', 'Classificar os auxiliares que trabalham no carro-metro como Metreiros', 'Mudar a nomenclatura do cargo na CTPSTPS', 'Descarga carvão', 'Márcia', '', '0', '0', '0', '2015-01-01', '2015-02-01', '0000-00-00', '')
INSERT INTO Acao VALUES ('185', '11', '28', '11', '35', 'Processos', 'Estratégica', 'Fazer manutenção nas câmeras da Siderúrgica Terra', 'Reduzir custos com manutenção realizada por terceiros', 'Sid. Terra', 'Gabriel', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('186', '11', '28', '11', '33', 'Processos', 'Estratégica', 'Realizar limpeza dos aparelhos de ar condicionado da Siderúrgica Terra', 'Assumir a respectiva tarefa utilizando equipe interna', 'Sid. Terra', 'Gabriel', '', '2', '0', '0', '2015-01-01', '2015-02-10', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('187', '11', '28', '11', '35', 'Processos', 'Estratégica', 'Substituir luminária de vapor de sódio de 400W por luminárias de led de 50W', 'Substituir as lâmpadas à medida que forem trocadas', 'Sid. Terra', 'Gabriel', '1. Custo por lâmpada = R$120,00/ unidade<br>2. Valor total será apurado no final do semestre', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('188', '11', '79', '11', '42', 'Estratégias e Planos', 'Estratégica', 'Definir os indicadores de desempenho do setor Expedição/ Balança', 'Definir os melhores indicadores, a memória de cálculo <fórmula utilizada> e os índices de comparação', 'Expedição/ Balança', 'Patrícia', '', '2', '0', '0', '2015-01-01', '2015-03-10', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('189', '20', '79', '20', 'Minimizar os impactos negativos da necessidade de alterações posteriores nos tíckets de carvão j', 'Processos', 'Rotina', 'Definir, juntamente com a Descarga de Carvão, formas de conferência mais precisa das catracas, evitando erros', 'Reunindo-se todos os interessados <Descarga de Carvão, Pagamento Carvão, Balança e Logística> para buscarem juntos uma solução', 'Balança', 'Patrícia', '', '2', '0', '0', '2015-01-01', '2015-03-06', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('190', '11', '30', '11', '46', 'Clientes', 'Estratégica', 'Levantar valores de PCI e PCS de subproduto gerado - pó de coletor primário (verificar a viabilidade comercial)', 'Enviar amostras para o laboratório', 'Laboratório', 'Evaldo', '', '1', '500', '0', '2015-01-01', '2015-02-01', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('191', '11', '23', '30', 'Reduzir a possibilidade de erros na conferência dos documentos; ampliar a qualidade das informaçõ', 'Liderança', 'Rotina', 'Reorganizar a portaria quanto a recepção de cargas de carvão', 'Treinar equipe', 'Depto Carvão', 'Múrcio', 'Novo Foco: Equipe a ser realocada em substituição ao pessoal terceirizado.', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('192', '11', '23', '30', 'Preparar uma segunda pessoa para realizar a tarefa, visando cobrir folgas, férias e assumir em caso', 'Liderança', 'Rotina', 'Treinar a auxiliar administrativa para cálculo, lançamento e pagamento de cargas de carvão', 'Formatar o treinamento: conteúdo, datas, avaliações/ aplicar o treinamento/ acompanhar os resultados', 'Depto Carvão', 'Múrcio', '', '2', '0', '0', '2015-01-01', '2015-04-30', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('196', '11', '17', '66', 'Fazendo contratação seguindo as normas corretas, a empresa só tem a ganhar, pois os encargos soci', 'Clientes', 'Rotina', 'Entregar o manual de procedimentos para a contratação de mão de obra de terceiros aos respectivos responsáveis pela contratação dos mesmos', 'Através do manual elaborado, entregue aos envolvidos na contratação', 'Depto Fiscal', 'Angela', '', '2', '0', '0', '2015-01-01', '2015-03-31', '2015-03-31', 'false')
INSERT INTO Acao VALUES ('198', '11', '26', '11', '35', 'Processos', 'Estratégica', 'Construir baia de estocagem de gusa na balança/ separar gusa de mercado externo do mercado interno - análise', 'Aprovação pela diretoria e efetuando obra civil', 'Em frente balança carregamento', 'Alicério', '1. Fazer orçamento', '0', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('199', '11', '26', '11', 'Em alguns pontos, o concreto já se desgastou', 'Processos', 'Rotina', 'Reparar pátio de gusa', 'Efetuando concretagem - uso ferragem adequada', 'Pátio de gusa', 'Alicério', '1. Fazer orçamento.', '0', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('200', '11', '26', '11', '42', 'Informações e Conhecimento', 'Estratégica', 'Melhorar relatórios (produção e expedição)/ visualizar melhor os resultados', 'Criando os mesmos e efetivando no dia a dia', 'Logística/ Expedição', 'Alicério', '', '2', '0', '0', '2015-01-01', '2015-01-31', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('201', '11', '26', '11', 'Padronizar e viabilizar as funções dos operadores do sistema', 'Informações e Conhecimento', 'Rotina', 'Confeccionar os procedimentos operacionais da logística e expedição', 'Resumindo experiências acumuladas até o momento em um único documento', 'Sid. Terra', 'Alicério', '', '2', '0', '0', '2015-01-01', '2015-01-31', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('202', '11', '26', '11', 'Aumentar a proteção aos funcionários (outras pessoas) do setor contra casquilhos e lingotes de gu', 'Sociedade', 'Rotina', 'Colocar tela de proteção nas janelas em frente a balança', 'Instalar tela externa nas janelas', 'Balança', 'Alicério', '1. Fazer orçamento.', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('203', '11', '26', '11', 'Aumentat a segurança em caso de falta de energia', 'Sociedade', 'Rotina', 'Implantar luzes de emergência nos diversos setores da usina', 'Aquisição e instalação das luzes', 'Sid. Terra', 'Alicério', '1. Alesson se posicionou sobre o assunto. Segundo ele, o momento atual não permite tal investimento. Apesar disso, registrou-se a ação para manter histórico. Futuramente a decisão pode ser alterada.', '2', '300', '0', '2015-01-01', '2015-06-30', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('204', '11', '25', '28', 'Evitar parada corretiva de longa duração devido a falha de equipamento', 'Processos', 'Estratégica', 'Executar projeto e levantar o custo para fabricar e montar a segunda peneira de carvão e instalações adjacentes no Alto Forno III', 'Fabricação da peneira moega, chute e plataformas com equipe interna e instalação com equipe terceirizada', 'Carregamento carvão', 'Cláudio/ Equipe Fabricação', '', '2', '50000', '0', '2015-01-01', '2015-06-30', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('205', '11', '25', '28', '35', 'Processos', 'Estratégica', 'Adaptar peneira e moega de finos de minério para enfornar coque no alto forno', 'Montar bica na moega de finos para peneirar coque e adaptar peneira vibratória', 'Carregamento minério', 'Cláudio/ Equipe Fabricação', '', '2', '1000', '800', '2015-01-01', '2015-01-24', '2015-01-23', 'false')
INSERT INTO Acao VALUES ('206', '11', '25', '28', 'Correia atual não oferece condições adequadas para o carregamento do AF', 'Processos', 'Rotina', 'Substituir correia principal de minério que está danificada', 'Comprar correira nova e substituir a atual', 'Carregamento minério', 'Cláudio/ Equipe Fabricação', '', '2', '16000', '14800', '2015-01-01', '2015-03-10', '2015-02-28', 'public/evidencias/a3f6429f1a523b9978f2cd2c63be211b.jpg')
INSERT INTO Acao VALUES ('207', '11', '25', '11', '46', 'Estratégias e Planos', 'Estratégica', 'Adquirir máquina briquetadeira', 'Comprar equipamento com capacidade mínima de 4.000ton/mês', 'Planta industrial', 'Cláudio/ Alesson', '1. Fazer orçamento.', '0', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('208', '11', '25', '28', 'Evitar parada corretiva e prejuízos com equipamentos ', 'Processos', 'Rotina', 'Montar bomba reserva para apagar fogo no topo do alto forno', 'Adquirir peças e reformar bomba existente na usina e interligar na rede existente', 'Topo alto forno', 'Cláudio/ Marcelo', '1- Adquirir material para fabricar eixo.<br>2- Usinar eixo para bomba reserva.<br>3- Recuperar caixa de mancal, serviço de mandrilhamento externo.<br>4- Substituir rolamentos danificados<br>5- Montar Equipamento na oficina Mecânica.<br>6- Montar equipamento na caixa de retorno do Alto Forno;<br>Obs.: Até o momento etapa de 1 a 5 concluída. Falta instalar o equipamento na caixa de retorno.', '2', '1000', '0', '2015-01-01', '2015-05-22', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('209', '11', '25', '28', 'Substituir peças danificadas para aumentar a vida útil das lingoteiras', 'Processos', 'Rotina', 'Reformar as duas rodas de lingotar gusa', 'Substituir roletes do munhão externo e suporte do munhão interno', 'Rodas lingotar', 'Cláudio/ Equipe Fabricação', '', '2', '820', '0', '2015-01-01', '2015-05-22', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('210', '11', '25', '28', ' Aumentar o preço da escória britada', 'Processos', 'Rotina', 'Reformar e instalar rebritador na planta de escória', 'Instalar rebritador na planta de britagem para diminuir granulometria', 'Planta britagem', 'Cláudio/ Equipe Man. e Fabr.', 'REFORMA DO EQUIPAMENTO NA OFICINA DE MANUTENÇÃO.<br>AGUARDAR CONFIRMAÇÃO DA DATA PARA SUBSTITUIÇÃO PARA NÃO PARAR PROCESSO PRODUTIVO.<br>SUBSTITUIR O BRITADOR <br>REFORMAR BASE DO MOTOR QUEBRADA.<br>USINAR PEÇAS PARA ARTICULAÇÃO DA NOVA BASE.<br>ALINHAR E TESTAR O CONJUNTO MOTOR E BRITADOR.', '2', '200', '400', '2015-01-12', '2015-02-28', '2015-01-24', 'false')
INSERT INTO Acao VALUES ('211', '11', '25', '11', ' Evitar risco de acidente com o operador do carro-metro', 'Processos', 'Rotina', 'Mudar projeto do carro-metro nº02 para descarregar automático no silo', 'Efetuar novo projeto, comprar material e executar projeto', 'Descarga carvão', 'Cláudio', '', '0', '4500', '0', '2015-01-01', '2015-03-15', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('212', '11', '25', '28', ' Eliminar risco de acidentes por queda devido a condição insegura', 'Pessoas', 'Rotina', 'Montar escada marinheiro e plataforma de acesso à ponte rolante e ao telhado AF', 'Instalar escada marinheiro e plataforma de acesso à ponte rolante', 'Telhado AF', 'Cláudio/ Equipe Fabricação', 'AQUISIÇÃO DE MATERIAIS<br>REAPROVEITAMENTO DE PARTE DE MATERIAL DA SUCATA . <TELAS DE PENEIRAS AO INVÉS DE CHAPA EXPANDIDA>.<br>MONTAR ESCADA COM FUNCIONÁRIOS DO TURNO DURANTE PARADA PROGRAMADA.<br>SOLDAR A ESCADA NA ESTRUTURA DA PONTE ROLANTE.<br>MONTAR PLATAFORMA DE ACESSO A PONTE ROLANTE.<br>', '2', '100', '400', '2015-01-01', '2015-03-30', '2015-03-30', 'public/evidencias/7654f7371ef3d253381399d57f1abd3c.jpg')
INSERT INTO Acao VALUES ('213', '11', '25', '11', ' Evitar processos ambientais e melhorar performance do AF com gases mais limpos', 'Processos', 'Rotina', 'Construir 2 caixas de decantação e retorno da água do lavador de gases', 'Realizar projeto civil e mecânico das caixas, contratar mão de obra para obra civil. Montagem mecânica com equipe interna', 'Sid. Terra', 'Cláudio/ Equipe Fabricação', '', '0', '300000', '0', '2015-01-01', '2015-06-30', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('214', '11', '25', '28', '35', 'Processos', 'Estratégica', 'Efetuar controle de qualidade e durabilidade das telas do peneiramento de minério', 'Aumentar o controle de qualidade junto aos fornecedores e realizar manutenções preventivas nas peneiras', 'Carregamento minério', 'Cláudio/ Suprimentos', '', '2', '0', '0', '2015-01-01', '2015-06-19', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('215', '11', '25', '28', ' Evitar paralização do processo produtivo por falta de água', 'Processos', 'Rotina', 'Efetuar controle de vazão dos poços artesianos periodicamente ', 'Controlar vazão dos poços artesianos mensalmente', 'Sid. Terra', 'Cláudio', 'ESTE SERVIÇO DEVE SER REALIZAÇO NO MÍNIMO UMA VEZ POR MÊS.', '2', '0', '0', '2015-01-01', '2015-02-28', '2015-02-25', 'false')
INSERT INTO Acao VALUES ('216', '11', '25', '28', 'Evitar danos ao retentor e diferencial da máquina carregadeira envolvida no processo', 'Processos', 'Rotina', 'Montar caixa de retorno auxiliar do granulador de escória', 'Esvaziar a baia de escória durante o processo de carregamento de escória', 'Granulador de escória', 'Cláudio/ Equipe Fabricação', 'RECUPERAR CAIXA DE CHAPA DE 1/8“ DO GRANULADOR DE ESCÓRIA DA FERGUBRAS.<br>FABRICAR TUBULAÇÃO DE 8“ A PARTIR DE MATERIAL RETIRADO DA SUCATA DE AÇO.<br>FABRICAR TUBULAÇÃO DE DESVIO PARA NOVA CAIXA DE CHAPA DO GRANULADOR.<br>MONTAR E SOLDAR O CONJUNTO DE CAIXA DE DESVIO DA ÁGUA, TUBULAÇÃO DE DESVIO E REGISTROS PARA MANOBRAR REGISTROS', '2', '1000', '900', '2015-01-01', '2015-06-30', '2015-04-03', 'public/evidencias/264d6c8506809caa161eb04cf9901c35.jpg')
INSERT INTO Acao VALUES ('217', '11', '25', '28', 'Eliminar queda de minério após a pesagem devida a queda da correira', 'Processos', 'Rotina', 'Reformar estrutura da correira principal de minério', 'Montar novos suportes de carga na correia de minério com alteração do projeto original', 'Carregamento minério', 'Cláudio/ Equipe Man.', 'REFORMA PARCIAL DA ESTRUTURA A FIM DE REDUZIR CUSTO DE MANUTENÇÃO NESTE EQUIPAMENTO.', '2', '8000', '0', '2015-01-01', '2015-01-23', '0000-00-00', 'public/evidencias/52bb97674e588c36bc5dc04edfef33b8.jpg')
INSERT INTO Acao VALUES ('218', '11', '25', '28', ' Otimizar o processo de carregamento do AF', 'Estratégias e Planos', 'Rotina', 'Executar alteração no projeto de inclinação da atual peneira de carvão', 'Melhorar a inclinação da peneira e diminuir o tempo no carregamento', 'Carregamento carvão', 'Cláudio/ Equipe Man. e Fabr.', 'AQUISIÇÃO DE MATERIAL<br>USINAGEM DOS SUPORTES DAS MOLAS<br>SUBSTITUIÇÃO DAS MOLAS<br>FABRICAÇÃO DOS NOVOS SUPORTES<br>CORTAR TODO O TRAVAMENTO DA MONTAGEM DA PENEIRA ATUAL.<br>MONTAR OS NOVOS SUPORTES FABRICADOS NA OFICINA.<br>SOLDAR OS NOVOS SUPORTES<br>ALTERAR PROJETO DA BASE DO MOTOR DE ACIONAMENTO.<br>REFORÇO ESTRUTURAL NAS ESTRUTURA DA BASE DO MOTOR.<br>ALTERAÇÃO DA FIXAÇÃO DAS PROTEÇÕES DO CONTRA-PESO.<br>SUBSTITUIR TELAS DANIFICADAS.<br>TESTAR E ENTREGAR NOVO SISTEMA DE PENEIRAMENTO.', '2', '8000', '3648', '2015-01-01', '2015-02-28', '2015-02-28', 'public/evidencias/2f91284b147415d3855756fed1d363ec.png')
INSERT INTO Acao VALUES ('219', '11', '25', '28', '46', 'Estratégias e Planos', 'Estratégica', 'Realizar projeto para transporte pneumático de pó de balão', 'Misturar o pó do filtro aos finos de carvão do silo de moinha', 'Carregamento carvão', 'Cláudio', 'REALIZAR VISITA TÉCNICA EM EMPRESA QUE POSSUA ESTE SISTEMA E ONDE O SISTEMA FUNCIONE COM EFICIÊNCIA PARA INICIARMOS OS ESTUDOS.', '2', '0', '0', '2015-06-22', '2015-07-31', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('220', '11', '25', '28', 'A bomba provisória não suporte o consumo do processo produtivo', 'Processos', 'Rotina', 'Revisar e instalar bomba BHS516-17 ', 'Substituir bomba provisória BHS511-07  <empresa terceirizada>', 'Novo poço artesiano', 'Cláudio', '', '2', '8500', '0', '2015-01-01', '2015-03-15', '2015-03-05', 'false')
INSERT INTO Acao VALUES ('221', '29', '24', '29', 'Necessário que a empresa tenha o controle do tratamento dos efluentes sanitários gerados', 'Liderança', 'Rotina', 'Realizar novas análises de efluentes sanitários', 'Realizar a contratação de pessoal autorizado', 'Sid. Terra', 'Matheus Padilha', '', '2', '1710', '0', '2015-01-01', '2015-05-31', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('222', '29', '24', '29', 'O resíduo encontra-se atualmente armazenado em local provisório  ', 'Liderança', 'Rotina', 'Realizar destinação adequada do pó de balã estocado no pátio', 'Realizar parceria com empresa devidamente regularizada para reaproveitamento do residuo', 'Sid. Terra', 'Matheus Padilha/ Alesson', '', '2', '0', '0', '2015-01-01', '2015-06-25', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('223', '11', '24', '29', 'Atualmente o lançamento de água do lavador de gases é feito em local improvisado - passível de m', 'Sociedade', 'Rotina', 'Construir caixas de decantação de água do lavador de gases', 'Executar o projeto já existente', 'Sid. Terra', 'Matheus Padilha', '', '2', '180000', '0', '2015-01-01', '2015-07-01', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('224', '11', '24', '11', 'Formalização das diretrizes de execução e fonte de argumentação em futuras fiscalizações', 'Informações e Conhecimento', 'Rotina', 'Elaborar cronograma executivo de construção da caixa d'água de decantação da água do lavador de gases', 'Elaborando cronograma com as etapas da execução', 'Sid. Terra', 'Matheus Padilha', '', '2', '0', '0', '2015-01-01', '2015-01-20', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('225', '11', '24', '29', '42', 'Informações e Conhecimento', 'Estratégica', 'Definir, criar e distribuir relatório gerencial mensal sobre as atividades do setor de meio ambiente', 'Levantando os dados e transformando-os em informações', 'Sid. Terra', 'Matheus Padilha', '', '2', '0', '0', '2015-01-01', '2015-01-31', '2015-02-15', 'public/evidencias/a6f68482c404c623f20db916b8a5bddb.xlsx')
INSERT INTO Acao VALUES ('226', '11', '24', '29', '43', 'Informações e Conhecimento', 'Estratégica', 'Definir indicadores de desempenho do setor', 'Após a confecção do relatório gerencial, extrair dele os indicadores a serem considerados ', 'Sid. Terra', 'Matheus Padilha', '', '2', '0', '0', '2015-01-01', '2015-01-15', '2015-01-09', 'public/evidencias/73269ca8589b103474cc8cec8ed77bdf.xlsm')
INSERT INTO Acao VALUES ('228', '11', '24', '29', 'Realizar o controle do ponto de vista ambiental dos resíduos gerados no processo produtivo do AF', 'Informações e Conhecimento', 'Rotina', 'Consolidar planilha de gerenciamento de resíduos mensal', 'Preencher mensalmente a planilha já elaborada de controle de geração/ estocagem e destinação dos resíduos gerados', 'Depto Meio Ambiente', 'Matheus Padilha', '', '2', '0', '0', '2015-01-01', '2015-01-31', '2015-02-04', 'public/evidencias/815b2b03c2ddc744abe82ffc5cf964b4.xlsx')
INSERT INTO Acao VALUES ('229', '11', '14', '31', '35', 'Liderança', 'Estratégica', 'Instalar peneirão de carvão reserva/ eliminar o risco de interrupção de marcha do AF por este motivo', 'Fabricar e instalar peneirão utilizando recursos próprios', 'Carregamento carvão', 'José Armando', '1. Ação não autorizada. Inserida para manter histórico.', '2', '100000', '0', '2015-01-01', '2015-06-30', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('230', '11', '14', '31', 'Solucionar a questão da manutenção nas carregadeiras, redução de água, eliminar água que desc', 'Liderança', 'Rotina', 'Fazer caixa contenção de água de granulação de escória', 'Construir a caixa de aproximadamente 4m x 2,5m e instalar uma bomba de retorno', 'Área abaixo máq. lingotar ', 'José Armando/ David/ Sérgio', '', '2', '8000', '0', '2015-01-01', '2015-06-30', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('231', '11', '14', '11', ' Evitar abastecimento errado', 'Processos', 'Rotina', 'Instalar placas identificadoras nos silos de minérios ', 'Confeccionar placas de chapa, escrever nas mesmas e soldar em cada silo', 'Silos minérios', 'José Armando/ Leonardo', '', '2', '500', '0', '2015-01-01', '2015-01-31', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('232', '11', '14', '11', 'Facilitar acesso e evitar acidentes', 'Processos', 'Rotina', 'Fazer acesso das balanças de minérios aos silos', 'Construir escada de alvenaria no local', 'Barranco silos minérios', 'José Armando/ Leonardo', '', '2', '800', '0', '2015-01-01', '2015-06-30', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('233', '11', '14', '11', 'Detectar a quantidade de água no material', 'Processos', 'Rotina', 'Controlar estoque de bauxita', 'Fazendo análise de umidade e o fechamento da entrada do produto no final de cada mês', 'Balança ind. laboratório', 'José Armando', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('234', '11', '14', '11', 'Evitar desperdício de carvão e foco de incêndio no topo do AF', 'Processos', 'Rotina', 'Evitar queda de carvão no topo do AF', 'Instalando fim de curso na caçamba de carga', 'Topo AF', 'José Armando/ Gabriel', '', '2', '500', '0', '2015-01-01', '2015-06-30', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('235', '11', '14', '11', 'Evitar contaminação do material', 'Processos', 'Rotina', 'Melhorar a qualidade da escória granulada', 'Instalando recipiente cônico metálico na baia de escória para receber resíduo contaminante', 'Baia de escória', 'José Armando', '', '2', '1000', '0', '2015-01-01', '2015-02-28', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('236', '11', '21', '32', 'Para que o RH e os gestores estejam alinhados com o histórico dos colaboradores', 'Liderança', 'Rotina', 'Iniciar as reuniões com os líderes de setores da usina', 'Cumprimdo cronograma mensal 2015 para que possa ser discutido assuntos referentes aos funcionários, acompanhamento, sugestão, dúvidas e apresentação de relatórios', 'Sid. Terra', 'Gisele', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', 'public/evidencias/f5a52cddec41bec3b51b47a33bd24a65.xls')
INSERT INTO Acao VALUES ('237', '11', '21', '11', 'Para que tenhamos um padrão a ser seguido e com isso maior agilidade e efieciência nos processos', 'Informações e Conhecimento', 'Rotina', 'Implantar procedimentos de RH', 'Padronizando, descrevendo e executando os procedimentos que deverão ser seguidos através de formulários e manuais', 'Depto RH', 'Gisele', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('238', '11', '21', '11', '33', 'Estratégias e Planos', 'Estratégica', 'Verificar a possibilidade de redução de horas extras', 'Criando procedimentos para sua realização e reunindo constantemente com a liderança para acompanhamento desses processos', 'Sid. Terra', 'Gisele', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('239', '11', '21', '32', '42', 'Informações e Conhecimento', 'Estratégica', 'Confeccionar e apresentar relatórios gerenciais para a Diretoria', 'Apresentando dia 09 de cada mês o custo e indicadores referente ao Depto Pessoal', 'Depto Carvão', 'Gisele', '', '2', '0', '0', '2015-01-01', '2015-01-30', '2015-01-30', 'false')
INSERT INTO Acao VALUES ('240', '11', '21', '11', '33', 'Estratégias e Planos', 'Estratégica', 'Solicitar junto a BSA uma parceria para implantar a catraca/ sistema para controle de refeições', 'Instalando uma catraca na entrada do refeitório com algum sistema onde para efetuar a refeição na empresa será necessário um pre-cadastro e com isso um controle real das refeições', 'Sid. Terra', 'Gisele', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('241', '11', '21', '32', 'Com a implantação desta nova obrigação temos que estar com um sistema integrado que facilite e n', 'Processos', 'Rotina', 'Reunir com Diretoria e TI para verificar melhor sistema para atender a empresa com o e-social', 'Apresentando para a Diretoria o que é o e-social e os impactos que irão causar nas empresas ', 'Depto RH', 'Gisele', '', '2', '0', '0', '2015-01-01', '2015-05-15', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('242', '11', '13', '11', 'Evitar que os trabalhadores do rodeio sofram impactos ao acessarem o interior para a remoção de su', 'Pessoas', 'Rotina', 'Instalar proteção sob a roda de lingotar, no acesso ao centro do rodeio', 'Buscar aprovação da ação e executar projeto <utilizar recursos próprios através de materiais recuperados>', 'Rodeio do AF', 'José Maria', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', 'false')
INSERT INTO Acao VALUES ('245', '11', '13', '11', 'Evitar a queda de pessoas de altura superior a 2 metros, em face ao risco existente, conforme determ', 'Pessoas', 'Rotina', 'Instalar estrutura disposta de cabo guia para o ancoramento de cinto de segurança ao realizar o enlonamento de caminhões', 'Buscar aprovação da ação, cotar serviço e contratar terceiros para executar o serviço', 'Praça de ferro - expedição', 'José Maria', '', '0', '3500', '0', '2015-01-01', '2015-03-30', '0000-00-00', 'nothing')
INSERT INTO Acao VALUES ('248', '11', '13', '11', 'Evitar o contato de pessoas com as partes móveis das máquinasm conforme recomendações de relató', 'Pessoas', 'Rotina', 'Confeccionar e instalar a proteção para polias das peneiras de finos', 'Buscar aprovação da ação e executar a obra - desenho será desenvolvido pela equipe interna de manutenção', 'Peneiras de finos', 'José Maria', '', '2', '800', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('251', '11', '13', '11', 'Proceder o bloqueio local e imediato em caso de emergência, bem como o atendimento da legislação ', 'Pessoas', 'Rotina', 'Instalar dispositivo para parada de emergência nas correias transportadoras das peneiras', 'Buscar aprovação da ação, contratar terceiros para executar o projeto', 'Planta benef. minério e escória', 'José Maria', '', '0', '10500', '0', '2015-01-01', '2015-04-30', '0000-00-00', 'nothing')
INSERT INTO Acao VALUES ('252', '11', '13', '11', 'Evitar o contato de pessoas com as partes móveis das máquinasm conforme recomendações de relató', 'Pessoas', 'Rotina', 'Instalar escadas, plataformas e proteção para polias e correias', 'Buscar aprovação da ação, cotar a obra e contratar terceiros para executar o projeto', 'Planta benef. minério e escória', 'José Maria', '', '0', '8500', '0', '2015-01-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('253', '11', '20', '11', 'Criar maior facilidade para negociações, avaliar real situação e capacidade do fornecedor, estab', 'Estratégias e Planos', 'Rotina', 'Encurtar a relação com os principais fornecedores da empresa', 'Fazer visitas mensais aos principais fornecedores e criar uma tabela de avaliação do fornecedor', 'Fornecedores', 'Mateus', '', '2', '0', '0', '2015-01-01', '2015-02-28', '0000-00-00', '')
INSERT INTO Acao VALUES ('254', '11', '20', '11', 'Suprir diferentes demandas, caso seja necessário', 'Pessoas', 'Rotina', 'Aumentar a capacidade de execução de serviço das pessoas do setor', 'Trocar funções entre as pessoas do setor', 'Suprimentos', 'Mateus', '', '2', '0', '0', '2015-01-01', '2015-02-28', '0000-00-00', '')
INSERT INTO Acao VALUES ('255', '11', '20', '11', 'Valorizar nosso capital intelectual e melhorar a capacitação no desempenho das funções', 'Pessoas', 'Rotina', 'Aumentar a quantidade de participantes no programa de treinamento fiscal/ contábil', 'Inserir expedição e Siderpam', 'Sid. Terra', 'Mateus', '', '2', '0', '0', '2015-01-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('256', '11', '20', '11', 'Evitar capital empregado em itens de baixo giro e baixa importância, focando em itens de maiores re', 'Processos', 'Rotina', 'Identificar e relacionar itens críticos no almoxarifado', 'Gerar relação de itens, valor em estoque, quantidade de circulação em determinado período e determinar áreas de risco maior', 'Almoxarifado', 'Mateus', '', '2', '0', '0', '2015-01-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('257', '11', '20', '34', 'Fechar balanço de 2014 - ítens em estoque valor almoxarifado', 'Processos', 'Rotina', 'Fazer inventário do almoxarifado da Siderúrgica Terra', 'Relacionar e contar todos os ítens em estoque', 'Almoxarifado', 'Mateus', '', '2', '0', '0', '2015-01-01', '2015-03-30', '2015-04-23', 'public/evidencias/c52c82dec17bf730e3d0857d714081ee.pdf')
INSERT INTO Acao VALUES ('258', '11', '20', '34', '39', 'Informações e Conhecimento', 'Estratégica', 'Gerar catálogo de equipamentos da Siderúrgica Terra', 'Catalogar e descrever todos os equipamentos e peças de cada equipamento', 'Almoxarifado', 'Mateus/ Cláudio', '', '2', '0', '0', '2015-01-01', '2015-04-30', '2015-04-23', '')
INSERT INTO Acao VALUES ('259', '11', '19', '11', '36', 'Resultados', 'Estratégica', 'Negociar com a VIVO a troca de aparelhos', 'Usar desconto concedido para aquisição de aparelhos pagando R$27,00/ mês para adquirir 10 aparelhos novos', 'Sid. Terra', 'Paulo Henrique/ Alan', '1. Fazer orçamento total - valor inserido no “Quanto Previsto“ refere-se apenas a 1 aparelho', '2', '27', '0', '2015-01-01', '2015-02-28', '0000-00-00', '')
INSERT INTO Acao VALUES ('260', '11', '19', '11', 'Evitar falhas previsíveis nos desktops da empresa', 'Estratégias e Planos', 'Rotina', 'Criar DIA DO HARDWARE', 'Usar dados de MTBF substituir os componentes de desgaste previsto afim de fazer paralização programada', 'Sid. Terra', 'Paulo Henrique/ Alan', '', '2', '40', '0', '2015-01-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('261', '11', '19', '11', 'Prestar um atendimento melhor e registrar os clientes internos e o setor passará a ter indicadores ', 'Clientes', 'Rotina', 'Mudar para sistema de chamados o atendimento do setor de TI', 'Adquirir um software de Helpdesk onde cada funcionário abrirá seu chamado e o classifica quanto a prioridade; após atendimento receberá um feedback', 'Setor TI', 'Paulo Henrique/ Alan', '', '2', '182', '0', '2015-01-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('262', '11', '19', '11', 'Documentar em forma de POP; cases de sucesso - por exemplo: Procedimento de compras da Sid. Terra', 'Informações e Conhecimento', 'Rotina', 'Criar manual de procedimentos dos setores informatizados', 'Desenvolver material auto didático para que outras empresas do grupo possam usar como referência', 'Setor TI', 'Paulo Henrique/ Alan', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('263', '11', '19', '11', 'Disponibilizar Internet no horário de almoço para uso pessoal nos celulares', 'Pessoas', 'Rotina', 'Criar rede WI-FI para funcionários do setor administrativo', 'Criar Hotspot com horário programado para liberar WI-FI', 'Sid. Terra', 'Paulo Henrique/ Alan', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('264', '11', '18', '11', 'Melhorar o controle de manutenção da frota e identificar o turno/ profissional que estava em opera', 'Informações e Conhecimento', 'Rotina', 'Implantar a rotina de check-list aos motoristas e operadores das máquinas', '1. Reunir com os motoristas e operadores e informar da nova rotina que deverá ser feita; 2. Acompanhar se a tarefa está sendo executada', 'Sid. Terra', 'Flávio', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('265', '11', '18', '11', '35', 'Resultados', 'Estratégica', 'Reduzir o consumo de diesel', 'Realocando e traçando novas rotas dos veículos e máquinas - Siderúrgica Terra', 'Sid. Terra', 'Flávio', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('266', '11', '18', '11', '35', 'Estratégias e Planos', 'Estratégica', 'Estudar terceirização da frota de veículos da Siderúrgica Terra', 'Levantando informações dos veículos da empresa; Estudar alteernativas; Elaborar relatórios e Apresentar a Diretoria para aprovação', 'Sid. Terra', 'Flávio', '', '2', '0', '0', '2015-01-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('267', '11', '18', '11', 'Facilitar o acesso; Fluxo de veículos; Garantir a segurança das pessoas; Cumprir padronização re', 'Sociedade', 'Rotina', 'Organizar estacionamento ao redor do escritório da Siderúrgica Terra', 'Rever projeto feito anteriormente; Buscar aprovação Diretoria caso tenha custo; Executar projeto', 'Sid. Terra', 'Flávio', '', '2', '0', '0', '2015-01-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('272', '11', '29', '11', 'Para gerenciar melhor o setor', 'Informações e Conhecimento', 'Rotina', 'Participar das tomadas de decisões referente ao setor', 'Participando das reuniões do setor e/ou sendo comunicada antecipadamente das decisões', 'Sid. Terra', 'Márcia', '', '2', '0', '0', '2015-01-01', '2015-04-01', '0000-00-00', '')
INSERT INTO Acao VALUES ('273', '11', '29', '11', 'Em caso de dúvida do fiscal fora do horário administrativo, ele pode conferir as imagens', 'Processos', 'Rotina', 'Instalar sistemas de câmeras (só as do carro metro) no setor', 'Usando o computador do setor', 'Descarga carvão', 'Márcia', '', '2', '0', '0', '2015-01-01', '2015-04-01', '0000-00-00', '')
INSERT INTO Acao VALUES ('274', '11', '29', '11', 'Economizar energia elétrica, durante o dia não precisará acender as lâmpadas', 'Resultados', 'Rotina', 'Substituir algumas telhas da cobertur dos carros metro por telhas translúcidas', 'Fazendo a substituição das telhas existentes <galvanizadas> por novas telhas <translúcidas>', 'Descarga carvão', 'Márcia', '1. Fazer orçamento', '2', '0', '0', '2015-01-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('276', '16', '75', '16', ' Preservar os equipamentos que estão superaquecendo durante os dias frios', 'Processos', 'Rotina', 'Instalar aparelho de ar condicionado na sala de TI ', 'Aproveitar ar condicionado da antiga sala de TI da Fergubrás e instalar no local', 'Siderpam', 'Paulo/ Bruno', '', '2', '300', '0', '2015-01-01', '2015-03-31', '0000-00-00', '')
INSERT INTO Acao VALUES ('277', '16', '75', '16', ' Adequar alocação de pessoal e demanda de chamados e quantificar o trabalho do setor', 'Clientes', 'Rotina', 'Mudar para sistema de chamados o atendimento do setor de TI', 'Usando software de help desk', 'Siderpam', 'Paulo/ Bruno', '', '0', '132', '0', '2015-01-01', '2015-03-31', '0000-00-00', '')
INSERT INTO Acao VALUES ('278', '16', '75', '16', ' Agilizar o atendimento de manutenção no sistema', 'Clientes', 'Rotina', 'Mudar o prestador de serviços de CFTV ', 'Procurar no mercado outro profissional que nos atenda em tempo hábil', 'Siderpam', 'Paulo/ Bruno', '', '2', '0', '0', '2015-01-01', '2015-03-31', '0000-00-00', '')
INSERT INTO Acao VALUES ('279', '16', '75', '16', 'Mobilizar o setor de DP para nova realidade da integração do INSS Caixa e Receita Federal', 'Informações e Conhecimento', 'Rotina', 'Conseguir palestras do EFD social', 'Realizar vários treinamentos até a data de obrigatoriedade do SPED Social', 'Siderpam', 'Paulo/ Bruno', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('280', '16', '76', '16', 'Definir a função que desempenha cada um na empresa', 'Pessoas', 'Rotina', 'Orientar sobre a necessidade da criação de um organograma', 'Determinação ao RH pela diretoria siderpam', 'Siderpam', 'Alice', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('281', '16', '76', '16', 'Cumprir a legislação trabalhista e mitigar riscos e passivos trabalhistas', 'Liderança', 'Rotina', 'Instruir a liderança sobre a obrigatoriedade de marcação e efetiva fruição do intervalo intrajornada de todos os colaboradores', 'Reunir com as lideranças da empresa', 'Siderpam', 'Alice', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('282', '16', '76', '16', 'Cumprir a legislação trabalhista e mitigar riscos e passivos trabalhistas', 'Processos', 'Rotina', 'Definir com a diretoria sobre procedimento de registro do horário de entrada e saída do funcionário (pagar ou nao os minutos residuais)', 'Reunir com a diretoria ', 'Siderpam', 'Alice', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('283', '16', '76', '16', 'Organização do trabalho sem perdas de tempo e até mesmo de atrasos que poderão ocasionar revelia', 'Processos', 'Rotina', 'Solicitar a diretoria um veículo para o setor jurídico fazer audiências e serviços correlatos (sugestão: deixar uma pessoa responsável que tenha autonomia para agendar/ providenciar o veículo)', 'Reunir com a diretoria e solicitar que se cumpra a decisão', 'Siderpam', 'Alice', '', '0', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('284', '16', '76', '16', 'Mitigar riscos e passivos trabalhistas', 'Informações e Conhecimento', 'Rotina', 'Solicitar ao RH/DP que não execute nenhuma ação que possa gerar implicação  jurídica sem o conhecimento do departamento jurídico', 'Orientação  ao RH/DP e diretoria', 'Siderpam', 'Alice', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('285', '16', '76', '16', ' Cumprir a legislação trabalhista e mitigar riscos e passivos trabalhistas', 'Informações e Conhecimento', 'Rotina', 'Orientar a liderança e o setor de Rh sobre a aplicação de penalidades (advertências, suspensões e justa causa)', 'Reunir com as lideranças da empresa', 'Siderpam', 'Alice', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('286', '16', '76', '16', ' Definir a função que cada setor deve desempenhar na empresa', 'Pessoas', 'Rotina', 'Orientar a diretoria sobre a importância da definição de funções dos setores de Rh e DP, bem como sua divulgação a todos os departamentos', 'Reunir com a diretoria', 'Siderpam', 'Alice', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('287', '16', '76', '16', ' Gerenciar os processos administrativos e judiciais das empresas do grupo', 'Informações e Conhecimento', 'Rotina', 'Solicitar ao setor de TI uma cotação referente a um software jurídico', 'Solicitar ao setor TI Siderpam', 'Siderpam', 'Alice', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('288', '16', '76', '16', ' Cumprir legislação trabalhista e mitigar riscos e passivos trabalhistas', 'Processos', 'Rotina', 'Orientar a diretoria sobre o procedimento incorreto de pagamento incorreto de horas extras e salários "por fora"', 'Proceder orientação', 'Siderpam', 'Alice', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('289', '16', '80', '16', 'Para que não ocorra atrasos/ perdas de produção, contribuindo também para redução do numero de', 'Processos', 'Rotina', 'Manter um estoque mínimo de pecas criticas/ materiais de reposição', 'Realizar a compra', 'Siderpam', 'Édson/ Compras', '', '0', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('290', '16', '80', '16', 'Manter e ampliar o nível técnico e motivação da equipe', 'Pessoas', 'Rotina', 'Desenvolver um programa de treinamento para a equipe de manutenção', 'Levantar as necessidades; verificar a disponibilidade no mercado <sem custo>', 'Siderpam', 'Édson', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('291', '16', '80', '16', ' Evitar perda de tempo, otimizando o processo de fabricação evitando gastos com terceiros', 'Processos', 'Rotina', 'Fazer orçamento para aquisição de uma calandra para a fabricação de pecas', 'Realizar orçamento', 'Siderpam', 'Édson', '', '1', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('292', '16', '80', '16', '56', 'Resultados', 'Estratégica', 'Reduzir gastos com terceirização de serviços', 'Realizar a compra de ferramentas de usinagem de pecas', 'Siderpam', 'Édson/ Compras', '', '0', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('293', '16', '80', '16', 'Trocar informações do setor; planejar atividades; motivar a equipe', 'Informações e Conhecimento', 'Rotina', 'Realizar reuniões periódicas com o pessoal do setor', 'Fazer cronograma de reuniões. Preparar reuniões com a equipe periodicamente', 'Siderpam', 'Édson', '', '2', '0', '0', '2015-01-01', '2015-04-15', '0000-00-00', '')
INSERT INTO Acao VALUES ('294', '16', '80', '16', '64', 'Informações e Conhecimento', 'Estratégica', 'Fazer relatórios de metas e indicadores de desempenho do setor', 'Elaborar os relatórios do setor, estabelecer metas e acompanhar o desempenho do setor', 'Siderpam', 'Édson', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('295', '16', '80', '16', '56', 'Resultados', 'Estratégica', 'Reduzir o custo de manutenção do material. Reaproveitar os vergalhões do alto forno', 'Restaurar a estrutura física do material através de desempeno, corte e solda', 'Siderpam', 'Édson', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('296', '16', '80', '16', '54', 'Resultados', 'Estratégica', 'Fazer estudo para redução de horas extras. Reduzir o custo da folha de pagamento', 'Realizar programações antecipadas junto aos clientes internos da empresa', 'Siderpam', 'Édson', '', '2', '0', '0', '2015-01-01', '2015-04-15', '0000-00-00', '')
INSERT INTO Acao VALUES ('297', '16', '80', '16', ' Melhorar a eficiência de granulação, retirada do produto e vida útil das maquinas', 'Processos', 'Rotina', 'Refazer a baia de granulação de escoria'', 'Com concreto de secagem rápida e trilhos', 'Siderpam', 'Édson', '', '1', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('298', '16', '82', '16', 'Evitar desmotivação e problemas judiciais', 'Informações e Conhecimento', 'Rotina', 'Estudar a possibilidade de estabelecer cronograma de pagamento salário Siderpam', 'Reunir com a diretoria e programar datas para pagamento salárioo', 'Siderpam', 'Júlio', '', '0', '0', '0', '2015-01-01', '2015-03-15', '0000-00-00', '')
INSERT INTO Acao VALUES ('299', '16', '82', '16', 'Cumprir legislação, facilitar processos e tornar mais eficiente os controles referente gestão de ', 'Processos', 'Rotina', 'Concluir o processo de implantação de ponto elétrico e folha de pagamento via sistema SIGAN ', 'Estabelecer cronograma de implantação para a folha pagamento <ponto eletrônico foi implantado>', 'Siderpam', 'Júlio', '', '2', '0', '0', '2015-01-01', '2015-02-15', '0000-00-00', '')
INSERT INTO Acao VALUES ('300', '16', '82', '16', 'Ter controle quantitativo de usuários para fins de auditoria interna (evitar duplicidade de benefí', 'Informações e Conhecimento', 'Rotina', 'Elaborar controle de alimentação - restaurante interno', 'Exigir da empresa contratada <restaurante> a apresentação dos controles de usuários>', 'Siderpam', 'Júlio', '', '2', '0', '0', '2015-01-01', '2015-02-28', '0000-00-00', '')
INSERT INTO Acao VALUES ('301', '16', '82', '16', 'Evitar lentidão destes processos, estabelecer prazos, evitar ruído na comunicação e tornar proce', 'Informações e Conhecimento', 'Rotina', 'Implantar POP referente aos processos - a) contratação funcionários, b) desligamento e c) promoção - etapas pré-definidas', 'Elaborar POP - norma padrão - atender ISO 9001', 'Siderpam', 'Júlio', '', '2', '0', '0', '2015-01-01', '2015-03-15', '0000-00-00', '')
INSERT INTO Acao VALUES ('302', '16', '82', '16', 'Controlar intervalo de 15 minutos para turnos de revezamento, determinados por lei e horário de alm', 'Processos', 'Rotina', 'Criar controle de marcação de ponto', 'Fazer uma comunicação aos setores e formalizar essa informação', 'Siderpam', 'Júlio', '', '2', '0', '0', '2015-01-01', '2015-03-15', '0000-00-00', '')
INSERT INTO Acao VALUES ('303', '16', '82', '16', 'Fiscalizar a efetiva marcação dos intervalos dos descansos ', 'Processos', 'Rotina', 'Criar controle de auditoria de marcação de ponto', 'Através do sistema de gestão CIGAN', 'Siderpam', 'Júlio', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('304', '16', '82', '16', 'Controlar a real necessidade de sua feitura, acompanhar com isso, os faltosos, atestados médicos qu', 'Informações e Conhecimento', 'Rotina', 'Criar formulário autorização de horas extras', 'Formulário impresso comum a todos os setores, onde sua emissão devera ser gerada somente pelo supervisor imediato e entregue ao RH no dia seguinte, bem como ciência da diretoria', 'Siderpam', 'Júlio', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('306', '16', '82', '16', 'Assegurar o controle de forma eficaz bem como, restringir acessos não permitidos e funcionários em', 'Processos', 'Rotina', 'Sugerir implantação do sistema de controle de acesso às dependências da Siderpam e manutenção da catraca', 'Configurando a catraca já existente no setor de portaria e implantação de sistema de controle <CIGAN>', 'Siderpam', 'Júlio', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('307', '16', '82', '16', 'Organizar de forma que todos saibam quais e a quem recorrer hierarquicamente ', 'Pessoas', 'Rotina', 'Elaborar Organograma da Siderpam', 'Criar estrutura junto à diretoria', 'Siderpam', 'Júlio/ Diretoria', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('309', '16', '87', '53', 'A empresa está enfrentando perda de fornecedores', 'Processos', 'Rotina', 'Reduzir prazo de pagamento de carvão', 'Após parecer favorável da Diretoria da empresa, proceder a redução do prazo de pagamento de carvão', 'Siderpam', 'Joliver/ Robson', '', '2', '0', '0', '2015-01-01', '2015-05-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('310', '16', '87', '53', ' Evitar falta de carvão, ou seja, evitar o comprometimento do abastecimento da matéria prima', 'Estratégias e Planos', 'Rotina', 'Evitar perda de fornecedores de carvão', 'Honrar os compromissos assumidos com os fornecedores de carvão', 'Siderpam', 'Joliver/ Robson/ Diretoria', '', '2', '0', '0', '2015-01-01', '2015-05-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('311', '16', '96', '16', '60', 'Informações e Conhecimento', 'Estratégica', 'Levantar e analisar custo do transporte interno Siderpam', 'Elaborar planilhas, usando dados do sistema Metalsoft', 'Setor Transporte', 'Yolando/ Cássia', '', '2', '0', '0', '2015-01-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('312', '16', '95', '16', 'Aumentar a potência de cada de 1200 para 1300KW', 'Processos', 'Rotina', 'Reformar as turbinas das Termo 1 e 2', 'Trocar os conjuntos - injetor/ diagramas/ disco e palhetamento do rotor, válvula de regulagem', 'TGM/ Siderpam', 'Carlos Eduardo', '', '0', '365000', '0', '2015-01-01', '2015-05-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('313', '16', '95', '16', 'Evitarmos queda de pressão da caldeira', 'Processos', 'Rotina', 'Melhorar a eficiência do sistema de abastecimento de águra da caldeira número 1', 'Reformar bombas d´água da caldeira 1 e inserir ao processo uma válvula de controle de abastecimento automático', 'Hidrotécnica/ Termelétrica', 'Carlos Eduardo', '', '2', '16100', '0', '2015-01-01', '2015-01-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('314', '16', '95', '16', 'Aumentar o intervalo de limpeza e eficiência das caldeiras e glendons', 'Processos', 'Rotina', 'Melhorar a eficência do lavador de gases', 'Ajustar os parâmetros no lavador e intensificar a retirada de resíduos no filtro prensa', 'AFS e filtro prensa', 'Carlos Eduardo', '', '2', '0', '0', '2015-01-01', '2015-02-28', '0000-00-00', '')
INSERT INTO Acao VALUES ('315', '16', '95', '16', 'Para que não ocorra perda de tempo ocasionando perda de produção', 'Processos', 'Rotina', 'Manter um estoque mínimo de peças críticas', 'Realizando a aquisição de peças <obter autorização para fazer tais compras>', 'Fábrica', 'Carlos Eduardo/ Diretoria', '', '2', '24000', '0', '2015-01-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('316', '16', '95', '16', 'Aumentar a eficiência na queima', 'Processos', 'Rotina', 'Substituir a injeção de ar frio do ventilador  primário por injeção de ar quente nas caldeiras', 'Aproveitando os gases de saída da chaminé da tiragem', 'Termelétrica', 'Carlos Eduardo', '', '2', '0', '0', '2015-01-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('317', '16', '95', '16', 'Para não ocorrer perda de tempo e transtornos à fábrica (tanto na geração como no desarme de en', 'Pessoas', 'Rotina', 'Melhorar a comunicação entre os encarregados dos AFs, eletricistas e demais envolvidos no processo de geração', 'Promover treinamentos e aquisição de radios para agilizar a comunicação', 'Fábrica', 'Carlos Eduardo/ Adélio', '', '2', '0', '0', '2015-01-01', '2015-01-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('318', '16', '95', '16', 'Para possibilitar a injeção de mais combustível nas caldeiras ganhando em geração', 'Processos', 'Rotina', 'Melhorar a eficiência de tiragem/ condensadores', 'Alterando a curva de funcionamento dos equipamentos', 'Externo/ Fábrica', 'Carlos Eduardo', '', '2', '0', '0', '2015-01-01', '2015-05-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('319', '16', '98', '16', 'Capacitar os trabalhadores e evitar prejuízos e acidentes devido a procedimentos não confiormes', 'Pessoas', 'Rotina', 'Fazer treinamentos das atividades do setor', 'Desmembrar os treinamentos por assunto ou setor', 'Produção', 'Plínio/ Adélio', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('320', '16', '98', '16', 'Manter todos os trabalhadores da produção informados e atualizados sobre novos procedimentos', 'Pessoas', 'Rotina', 'Fazer treinamentos a cada 45 dias em média', 'Realizar o treinamento e colher assinatura de todos os participantes', 'Produção', 'Plínio/ Adélio', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('321', '16', '98', '16', 'Atualizar e trocar informações; relatar falhas nos procedimentos; expor andamento das atividades; ', 'Informações e Conhecimento', 'Rotina', 'Fazer cronograma de reuniões com os supervisores', 'Fazer cronograma, agendar reuniões com todos os supervisores da produção', 'Produção', 'Plínio/ Adélio', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('322', '16', '98', '16', '56', 'Resultados', 'Estratégica', 'Reduzir geração de sucata no processo de tratamento e lingotamento do ferro gusa', '1º. Manter lingoteiras em bom estado/ 2º. Retreinar operadores da roda de lingotamento, chaveiros e forneiros paneleiros; 3º. ', 'AFII', 'Plínio/ Adélio', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('323', '16', '98', '16', 'Aumentar tempo de campanha do reator', 'Processos', 'Rotina', 'Melhorar o sistema de refrigeração do AFII', '1º. Trocar tubos e conexões do sistema de refrigeração de 1/2“ para 1“. 2º. Garantir o bom funcionamento das bombas. 3º. Manter calha da refrigeração limpa e desobstruída', 'AFII', 'Plínio/ Adélio', '', '2', '980', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('324', '16', '98', '16', 'Evitar que o resultado obtido em um dia não impacte em outro dia', 'Processos', 'Rotina', 'Garantir que a produção de um dia não impacte na produção de outro dia', '1º. Implantar horário limite para fechamento das corridas junto aos supervisores de produção', 'AFII', 'Plínio/ Adélio', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('325', '16', '98', '16', 'Aumentar resultado financeiro da empresa', 'Informações e Conhecimento', 'Rotina', 'Criar cronograma de treinamento de conscientização para os auxiliares de tratamento de gusa', '1º. Criar e seguir cronograma <dois em dois meses> para treinar todos os auxiliares de tratamento', 'AFII', 'Plínio/ Adélio', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('326', '16', '98', '16', 'Aumentar resultado financeiro da empresa', 'Informações e Conhecimento', 'Rotina', 'Criar índices/ metas para a produção', '1º. Criar meta para temperatura da coroa. 2º. Criar meta para redução na % de geração de sucata. 3º. Criar meta para temperatura de gusa', 'AFII', 'Plínio/ Adélio', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('327', '16', '98', '16', 'Para poder atuar de forma a garantir maior campanha', 'Informações e Conhecimento', 'Rotina', 'Criar cronograma de acompanhamento da campanha das panelas de tratamento do ferro gusa', 'Acompanhar oa trabalhos e reformas realizadas em cada panela', 'AFII', 'Plínio', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('328', '16', '98', '16', 'Evitar desperdício e impactos futuros', 'Sociedade', 'Rotina', 'Reduzir perda de água no processo de granulação de escória', '1º. Manter a bomba de água ligada apenas durante o vazamento de escória. 2º. Realizar limpeza das telas de contenção de escória. 3º. Realizando as manutenções preventivas nas bombas de recirculação', 'AFII', 'Plínio/ Adélio', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('329', '16', '98', '63', 'Evitar perda de sonda do AF por retorno de carga e perda de tempo', 'Processos', 'Rotina', 'Instalar sistema de câmeras no topo do AFII, foco no interior do skip', 'Montar sistema de câmeras no topo do AF focalizando dentro do skip', 'AFII', 'Plínio/ Adélio', '', '2', '0', '0', '2015-01-01', '2015-03-30', '2015-03-30', '')
INSERT INTO Acao VALUES ('330', '16', '98', '16', 'Aumentar o volume de carvão vegetal por carga, não sendo necessário reduzir o peso do minério', 'Processos', 'Rotina', 'Aumentar o volume da moega de carvão vegetal do AFII', 'Aumentar o volume da moega de carvão vegetal', 'AFII', 'Plínio/ Adélio', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('332', '16', '94', '16', 'Maximizar a eficiência do trabalho e ganhar tempo', 'Processos', 'Rotina', 'Criar rotina de tarefas/ atividades para a equipe de faxina e limpeza industrial', 'Verificar a rotina atual e junto aos colaboradores analisar melhores possibilidades', 'Área industrial', 'Plínio', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('333', '16', '94', '16', 'Para que não haja acúmulo de férias a vencerem no mesmo período', 'Informações e Conhecimento', 'Rotina', 'Desenvolver cronograma de férias junto ao RH para melhor programação financeira', 'Criar organograma de férias dentro das datas limites', 'Siderpam', 'Plínio/ Renata', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('334', '16', '94', '16', 'Evitar acidentes de trabalho', 'Pessoas', 'Rotina', 'Treinar colaboradores sobre riscos pertinentes a área industrial e quanto ao manuseio de ferramentas', 'Treinar os colaboradores quanto aos riscos da área industrial. Treinar colaboradores quanto ao manuseio de ferramentas, pás, motoserras, etc.', 'Siderpam', 'Plínio/ Seg. Trabalho', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('335', '16', '94', '16', 'Melhorar o ambiente de trabalho e manter a boa aparência da empresa', 'Sociedade', 'Rotina', 'Realizar capina/ poda de árvores, arbustos e taludes', 'Determinar junto aos auxiliares os locais para a realização destas atividades', 'Área industrial', 'Plínio', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('336', '16', '94', '16', 'Melhorar o ambiente de trabalho e manter a boa aparência da empresa', 'Sociedade', 'Rotina', 'Realizar pintura de meio fio com cal/ tinta adequada', 'Plínio e equipe de manutenção patrimonial executar o trabalho', 'Área industrial', 'Plínio', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('337', '16', '84', '16', 'Tentar viabilizar junto ao setor financeiro e planejamento para pagamento', 'Sociedade', 'Rotina', 'Avaliar empresas para medição de efluentes atmosféricos, fontes designadas pela licença de operação', 'Buscar prestadores de serviços com menor custos', 'Área industrial', 'André', '', '2', '4500', '0', '2015-01-01', '2015-03-01', '0000-00-00', '')
INSERT INTO Acao VALUES ('338', '16', '84', '16', 'Cumprir exigência ambiental', 'Sociedade', 'Rotina', 'Programar a destinação do pó de balão e da lama do lavador para empresas ambientalmente corretas', 'Viabilização do frete interno e externo', 'Área industrial', 'André', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('339', '16', '84', '16', 'Avaliar a procedência da matéria prima entregue na empresa', 'Informações e Conhecimento', 'Rotina', 'Vistoriar fornecedores de matérias primas (carvão vegetal e minério de ferro)', 'Manutenção de portfólio', 'Depto Carvão', 'André', '', '2', '0', '0', '2015-01-01', '2015-02-01', '0000-00-00', '')
INSERT INTO Acao VALUES ('340', '16', '84', '16', 'Atender condicionante ambiental', 'Sociedade', 'Rotina', 'Programar a vistoria do engenheiro civil, para garantir condições de estabilidade estrutural, erobilidade permeabilidade nos aterros industriais', 'Acertar contratação do profissional', 'Área industrial', 'André', '', '2', '1760', '0', '2015-01-01', '2015-02-01', '0000-00-00', '')
INSERT INTO Acao VALUES ('341', '16', '85', '16', 'Melhorar a distribuição de documentos; evitar "burocracia" de detalhes que atrasam a circulação ', 'Informações e Conhecimento', 'Rotina', 'Melhorar a comunicação entre os setores de compras, fiscal e financeiro', 'Documentos que tem origem de contrator como: White Martins, Advogados, Consultores e outros - não será necessário os lançamentos <compras> para serem pagos, pois a autorização já consta nos contratos', 'Setor Adm', 'Marcos Antônio', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('342', '16', '85', '16', 'Acelerar o processo de pagamento', 'Processos', 'Rotina', 'Fazer levantamento de todos os contratos vigentes atualmente', 'Solicitar ao setor Contábil', 'Financeiro', 'Marcos Antônio', '', '2', '0', '0', '2015-01-01', '2015-02-28', '0000-00-00', '')
INSERT INTO Acao VALUES ('343', '16', '85', '16', 'Estabelecer mecanismos de mensurar desempenho do setor', 'Informações e Conhecimento', 'Rotina', 'Elaborar relatórios do setor financeiro', 'Gerar relatórios do setor, citar os indicadores e metas do setor', 'Financeiro', 'Marcos Antônio', '', '2', '0', '0', '2015-01-01', '2015-02-15', '0000-00-00', '')
INSERT INTO Acao VALUES ('344', '16', '86', '16', 'Evitar acesso de pessoas não autorizadas no setor, com possibilidade de acesso a documentos sigilos', 'Processos', 'Rotina', 'Buscar autorização para colocar tranca na sala do setor de exportação para garantir a privacidade de documentos e assuntos estratégicos', '1. Em momento de redução de custos, buscar aprovação da diretoria; 2. Caso seja autorizado, efetuar o respectivo serviço', 'Siderpam', 'Mauro', '', '1', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('345', '16', '86', '16', 'Evitar documentos espalhados na mesa e garantir restrição de acesso a documentos sigilosos', 'Processos', 'Rotina', 'Verificar a possibilidade de colocar um armário na sala de "exportação" para manter em local restrito a documentação do setor', '1. Em momento de redução de custos, buscar aprovação da diretoria; 2. Verificar em outros setores disponibilidade de algum armário para remanejar para o setor de exportação', 'Siderpam', 'Mauro', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('346', '16', '86', '16', 'Estabelecer uma rotina de visitas ao terminal para verificar, dentre outros, a contaminação de mat', 'Processos', 'Rotina', 'Verificar a possibilidade de disponibilizar um veículo para o setor - será usado para acompanhar as cargas no terminal', '1. Buscar autorização junto a diretoria; 2. Atualmente o carro usado pertence ao funcionário do setor; 3. Evitar reembolso de despesas; 4. Caso seja autorizado, providenciar a aquisição', 'Siderpam', 'Mauro', '', '1', '40', '0', '2015-01-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('347', '16', '86', '16', 'Acompanhar, de perto, as cargas da Siderpam e evitar situações que causam prejuízo à empresa', 'Informações e Conhecimento', 'Rotina', 'Estabelecer rotina de visita ao terminal', '1. Ter veículo para fazer a tarefa; 2. Ter aprovação da diretoria em função dos gastos com deslocamento', 'Siderpam/ Terminal', 'Mauro', '', '2', '0', '0', '2015-01-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('348', '16', '86', '16', 'Comunicar aos clientes o "jeito de fazer da Siderpam"', 'Clientes', 'Rotina', 'Elaborar um vídeo sobre o processo envolvendo todas as etapas que antecedem a exportação', 'Fazer vídeo institucional: Siderpam, Descarga de carvão, Minério, Forno, Tratamento Gusa, Expedição, Terminal, Estoque, Vagão, Navio e Chegada ao destino', 'Siderpam/ Clientes', 'Mauro', '1. Fazer orçamento.', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('349', '16', '93', '16', 'Manter a organização e limpeza do setor e recolher sucatas para evitar furar pneus dos veículos', 'Processos', 'Rotina', 'Fazer limpeza do pátio de gusa', 'Varrer áreas, podar galhos secos de árvores, organizar o material no pátio. Obs.: É necessário auxílio do encarregado de limpeza com a sua equipe', 'Siderpam', 'Carlos <Pretinho>', '', '2', '0', '0', '2015-01-01', '2015-03-15', '0000-00-00', '')
INSERT INTO Acao VALUES ('350', '16', '93', '16', 'Manter a equipe informada e treinada sobre procedimento padrão do setor', 'Pessoas', 'Rotina', 'Treinar os balanceiros de acordo com as normas ISO 9000', 'Fazer o treinamento e formalizá-lo', 'Siderpam', 'Carlos <Pretinho>', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('351', '16', '93', '16', 'Melhorar as condições do pátio', 'Processos', 'Rotina', 'Concretar parte do pátio com bloquetes produzidos pela Siderúrgica Terra', 'Entrar em contato com a Siderúrgica Terra e solicitar os bloquetes: verificar como será feito a concretagem e executar o trabalho', 'Siderpam', 'Carlos <Pretinho>', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('352', '16', '93', '16', 'Evitar a contaminação do ferro tratado', 'Processos', 'Rotina', 'Separar o pátio para estocagem de aciaria e outra parte para ferro tratado', 'Definir onde será estocado o ferro tratado e a aciaria. Divulgar essa informação aos motoristas e operadores', 'Siderpam', 'Carlos <Pretinho>', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('353', '16', '97', '16', '56', 'Resultados', 'Estratégica', 'Incluir nas instalações lâmpadas mistas para substituírem lâmpadas a vapor de sódio e mercúrio', 'Substituir as lâmpadas quando que tiver troca <queima ou novas instalações>', 'Siderpam', 'Dênis', '', '2', '0', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('354', '16', '97', '16', 'Agilizar o processo para ligar os equipamentos e aumentar a segurança', 'Processos', 'Rotina', 'Instalar tomadas industriais nos fornos', 'Instalar tomadas em pontos estratégicos', 'AF I e II', 'Dênis', '', '0', '0', '0', '2015-01-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('355', '16', '97', '16', '56', 'Resultados', 'Estratégica', 'Substituir lâmpadas mistas de 250W por lâmpadas fluorescentes 450W', 'Substituir as lâmpadas quando que tiver troca <queima ou novas instalações>', 'Siderpam', 'Dênis', '1. Preço unitário - R$775,00', '2', '775', '0', '2015-01-01', '2015-03-13', '0000-00-00', '')
INSERT INTO Acao VALUES ('356', '16', '92', '16', 'Garantir a entrega do gusa na faixa solicitada pelo cliente. Evitar constrangimento junto ao cliente', 'Processos', 'Rotina', 'Evitar a contaminação do gusa no pátio', 'Orientar os bruqueiros e operadores; tornar obrigatório a sinalização do gusa no pátio imediatamente após o fechamento de cada corrida', 'Siderpam', 'Marcelo/ Rodolfo', '', '2', '0', '0', '2015-01-01', '2015-02-28', '0000-00-00', '')
INSERT INTO Acao VALUES ('357', '16', '92', '16', 'Evitar a mistura e contaminação do gusa ', 'Pessoas', 'Rotina', 'Sugerir treinamento dos motoristas e bruqueiros quanto ao gusa especial', 'Através de treinamentos', 'Siderpam', 'Marcelo', '', '2', '0', '0', '2015-01-01', '2015-02-28', '0000-00-00', '')
INSERT INTO Acao VALUES ('358', '16', '89', '16', '55', 'Processos', 'Estratégica', 'Definir limite de compras por setor', 'Inicialmente controlado por planilha excel - já solicitado aos gestores do sistema Metalsoft a respectiva implementação', 'Siderpam', 'Edivan', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('359', '16', '89', '16', '55', 'Resultados', 'Estratégica', 'Abrir contas em outros bancos', 'Solicitar junto a outros bancos benefícios que poderíamos ter com a abertura de conta no mesmo', 'Financeiro', 'Edivan/ Marcos Antônio', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('360', '16', '89', '43', 'Obter redução nos custos das mercadorias adquiridas pela Siderpam', 'Informações e Conhecimento', 'Rotina', 'Treinar pessoal do setor de compras - informações setor fiscal', 'Gerar créditona aquisição de itens da empresa', 'Siderpam', 'Edivan', '', '2', '0', '0', '2015-01-01', '2015-06-30', '2015-05-25', '')
INSERT INTO Acao VALUES ('361', '16', '88', '16', 'Evitar danos maiores e prejuízos com a falta de material na empresa', 'Processos', 'Rotina', 'Elaborar relação de materiais críticos na empresa - produção, elétrica, segurança, manutenção industrial, administrativo, etc', 'Reunir com responsável de cada setor e avaliar os materiais críticos e indispensáveis para a empresa', 'Almoxarifado', 'Cássia/ Jurandir', '', '2', '0', '0', '2015-01-01', '2015-04-28', '0000-00-00', '')
INSERT INTO Acao VALUES ('362', '16', '88', '16', '56', 'Processos', 'Estratégica', 'Fazer planejamento junto ao setor financeiro e diretoria visando a possibilidade de compra na área de produção pelo menos quinzenalmente', 'Comprar material direto na produção quinzenalmente, pois assim, pode-se negociar uma compra maior e termos mais tranquilidade para trabalhar', 'Almoxarifado', 'Cássia', '', '2', '0', '0', '2015-01-01', '2015-02-01', '0000-00-00', '')
INSERT INTO Acao VALUES ('363', '16', '88', '16', 'Em função da dificuldade de encontrar materiais e visibilidade do ambiente que não é muito boa', 'Processos', 'Rotina', 'Fazer melhoria na iluminação do almoxarifado', 'Fazer um orçamento com o responsável <Dênis Elétrica> e buscar aprovação junto a diretoria', 'Almoxarifado', 'Cássia/ Dênis', '', '1', '0', '0', '2015-01-01', '2015-02-01', '0000-00-00', '')
INSERT INTO Acao VALUES ('364', '16', '91', '44', 'Esperar estabilizar o nº. de funcionários para orçamento do material a adquirir <camisas, premia�', 'Sociedade', 'Rotina', 'Elaborar projeto para a realização da SIPAT no mês de Setembro/ 2015', 'Convidar os palestrantes <gratuitos>; verificar as premiações da motivação para a SIPAT; Patrocínio', 'Siderpam', 'Rodolfo/ CIPA', 'Em andamento: 1ª reunião_formação da equipe organizadora <15/04/2015>', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('365', '16', '91', '44', 'Motivar os trabalhadores', 'Liderança', 'Rotina', 'Criar sistema de premiação para o setor ou pessoa que mais se destacar na melhoria contínua da empresa (exemplo - limpeza, não ocorrência de acidentes, organização, etc.)', 'Fazer o projeto e apresentar à Diretoria; após aprovação, divulgar projeto e acompanhar', 'Siderpam', 'Rodolfo/ Diretoria', 'Obs.: É necessário esperar amenizar a crise financeira do momento, para então reunir com a Diretoria para definir essa ação. ', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('366', '16', '91', '44', '60', 'Processos', 'Estratégica', 'Elaborar e implantar ordem de serviço para o setor administrativo', 'Elaborar e colher assinatura de todos os colaboradores', 'Siderpam', 'Rodolfo', 'Em andamento. Esperar a conclusão do  PPRA para conferir e liberar as O.S. das novas funções. ', '2', '0', '0', '2015-01-01', '2015-06-30', '2015-04-30', '')
INSERT INTO Acao VALUES ('367', '16', '91', '44', 'Atender exigências da Gerdau', 'Pessoas', 'Rotina', 'Criar programação de treinamento anual', 'Elaborar uma programação de treinamentos e cumpri-la com comprovação através de lista de presença ', 'Siderpam', 'Rodolfo', 'Cronograma realizado. Treinamentos em andamento. ', '2', '0', '0', '2015-01-01', '2015-02-20', '2015-02-20', '')
INSERT INTO Acao VALUES ('368', '16', '91', '44', 'Envolver os supervisores com a segurança do trabalho', 'Pessoas', 'Rotina', 'Treinar supervisores para a implantação do DDS - Diálogo Diário de Segurança ou DSS - Diálogo Semanal de Segurança', 'Fazer treinamento; exigir formalização destes treinamentos', 'Siderpam', 'Rodolfo', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('369', '16', '91', '44', 'Sem incentivo os funcionários não demonstram interesse em participar da brigada', 'Pessoas', 'Rotina', 'Criar sistema de incentivo para formação da Brigada de incêndio', 'Criar incentivo como, por exemplo, folga no dia do aniversário do Brigadista', 'Siderpam', 'Rodolfo/ Diretoria', 'Fazer escudo no uniforme <no bolso e/ou manga> para identificar os brigadistas', '2', '0', '0', '2015-01-01', '2015-06-30', '2015-04-30', '')
INSERT INTO Acao VALUES ('370', '16', '91', '44', 'Atender exigências do Ministério do Trabalho - PPRA vencerá em Abril/15', 'Informações e Conhecimento', 'Rotina', 'Fazer orçamento com consultorias para a elaboração do PPRA 2015', 'Fazer orçamento, no mínimo, com 3 consultorias e apresentar à Diretoria para aprovação', 'Siderpam', 'Rodolfo', 'Fizemos orçamento com 07 <sete> consultorias, mas recebemos apenas 01 <um> orçamento do Cláudio Túlio da AST. <br>OBS.: para reduzir custos estamos elaborando o PPRA da Siderpam utilizando as medições do ano anterior. ', '2', '5000', '0', '2015-01-01', '2015-05-15', '2015-05-12', '')
INSERT INTO Acao VALUES ('371', '16', '91', '44', 'Atender condicionantes do AVCB e da Gerdau quanto a formação de brigadistas', 'Sociedade', 'Rotina', 'Verificar com o Corpo de Bombeiros a possibilidade de realizar treinamento de brigada de incêndio (sem custos para a empresa)', 'Entrar em contato com o Corpo de Bombeiros de Sete Lagoas e levantar tais informações', 'Siderpam', 'Rodolfo', 'Informado pelo Corpo de Bombeiros que esse serviço não é mais realizado pelo C.B; é necessário fazer orçamento com empresas que prestam esse serviço. ', '2', '0', '0', '2015-01-01', '2015-06-20', '0000-00-00', '')
INSERT INTO Acao VALUES ('372', '16', '91', '44', 'O AVCB vencerá em 21/09/15; programar a compra dos materiais para evitar despesas de última hora', 'Informações e Conhecimento', 'Rotina', 'Fazer planejamento para aquisição do material de prevenção e combate a incêndio para a renovação do AVCB', 'Fazer orçamento e distribuir  compra de forma mensal até o mês de set/2015', 'Siderpam', 'Rodolfo', 'Já foi encaminhado para o setor de compras o pedido de orçamento e pedido de aprovação para a compra do material desde março/2015. ', '2', '0', '0', '2015-01-01', '2015-03-25', '2015-03-25', 'public/evidencias/c47295f96989c6266b1167ecbd4c60d0.xlsx')
INSERT INTO Acao VALUES ('373', '16', '91', '44', 'Atender exigências da Gerdau', 'Clientes', 'Rotina', 'Providenciar as FISPQS dos produtos químicos utilizados na manutenção e abastecimento de veículos', 'Solicitar as FISPQS aos fornecedores, criar uma pasta e manter arquivada no setor de manutenção', 'Siderpam', 'Rodolfo', 'Em andamento: Pesquisa e impressão das Fispq', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('374', '16', '91', '44', 'Atender condicionantes da Gerdau e da ISO 9001', 'Estratégias e Planos', 'Rotina', 'Estudar a implantação do sistema 5S na empresa', 'Pesquisar a metodologia de implantação com menor custo possível', 'Siderpam', 'Rodolfo', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('375', '16', '91', '16', 'Atender condicionante da Gerdau e para a renovação do AVCB', 'Sociedade', 'Rotina', 'Elaborar o PAE - Plano de Ação de Emergência', 'Pesquisar modelo de PAE e elaborar o documento; apresentar à diretoria para aprovação', 'Siderpam', 'Rodolfo', '', '2', '0', '0', '2015-01-01', '2015-05-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('376', '16', '91', '16', 'Atender as condicionantes da Gerdau e para renovação do AVCB', 'Informações e Conhecimento', 'Rotina', 'Estabelecer e cumprir cronograma de realização de simulados de emergência após a implantação dda Brigada de Incêndio', '1. Montar a Brigada; 2. Elaborar cronograma de simulados de emergência; 3. Cumprir os treinamentos conforme cronograma', 'Siderpam', 'Rodolfo', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('377', '16', '91', '44', '54', 'Pessoas', 'Estratégica', 'Sugerir substituição do uniforme de Brim pelo uniforme de Malha para todos os setores exceto área do forno', 'Pedir e obter aprovação da Diretoria ', 'Siderpam', 'Rodolfo/ Diretoria', 'Solicitação enviada ao setor de compras em 13/03/2015', '2', '0', '0', '2015-01-01', '2015-03-30', '2015-03-13', 'public/evidencias/933c089c3f43569c1dd2bd4397644dba.docx')
INSERT INTO Acao VALUES ('379', '30', '23', '30', 'Promover maior integração dos colaboradores e melhorar ambiente de trabalho', 'Pessoas', 'Rotina', 'Promover reuniões individuais de Feedback com os colaboradores do setor', 'Agendar as reuniões mensalmente com cada colaborador; determinar assuntos a serem tratados; convocar os colaboradores.', 'Depto Carvão', 'Múrcio', '', '2', '0', '0', '2015-04-14', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('380', '3', '61', '3', '14', 'Informações e Conhecimento', 'Estratégica', 'Enviar carta-contato aos Diretores das cooperativas visitadas com o intuito de ingressarem no CCGC', 'Redigir carta, enviar mensagem eletrônica ao presidentes e aguardar retorno', 'CCGC', 'Nidelson', 'Cooperativas: <br>1. Cooprata<br>2. Calu<br>3. Capal<br>4. Coplim<br>5. Coproluz<br>6. Cooperbom<br>7. Cooperabaeté<br>8. Coopel<br>9. Coapa<br>10. Coopersete<br>11. Suinco<br>12. Coop. Vale Rio Doce', '2', '0', '0', '2015-04-01', '2015-04-14', '0000-00-00', '')
INSERT INTO Acao VALUES ('381', '16', '99', '73', 'Evitar prejuízos com queda de galhos sobre veículos e pessoas', 'Sociedade', 'Rotina', 'Sugerir o corte de euscaliptos secos', 'Sugerindo ao André responsável pelo setor Meio Ambiente', 'Siderpam', 'Carlos Aparecido', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('382', '16', '99', '73', 'Facilitar o controle de entrada e saída de funcionários da usina', 'Processos', 'Rotina', 'Sugerir o sistema de trava na roleta', 'Solicitar ao setor de manutenção da empresa', 'Siderpam', 'Carlos Aparecido', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('383', '16', '99', '73', 'Evitar registro de ponto inadequado e as filmagens adequadas de situações de risco como assaltos, ', 'Processos', 'Rotina', 'Conferir se as câmeras da portaria estão funcionando', 'Verificar, periodicamente, as câmeras da portaria', 'Siderpam', 'Carlos Aparecido', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('384', '16', '100', '74', ' Reaproveitar a sucata no forno/ manter a área das peneiras limpa', 'Processos', 'Rotina', 'Retirar diariamento sucatas produzidas da peneira de escória e levar para o pátio de estocagem', 'Retirar a sucata diariamente e levar para a estocagem de sucata', 'Siderpam', 'Antônio Carlos', '', '2', '0', '0', '2015-01-01', '2015-04-30', '2015-04-30', '')
INSERT INTO Acao VALUES ('385', '16', '100', '74', 'Manter as peneiras limpas', 'Processos', 'Rotina', 'Retirar finos de minério repeneirados diariamente', 'Retirar finos de minério para levar para a estocagem de finos', 'Siderpam', 'Antônio Carlos', '', '2', '0', '0', '2015-01-01', '2015-04-30', '2015-04-30', '')
INSERT INTO Acao VALUES ('386', '16', '100', '74', 'Reduzir custos com material enfornado', 'Processos', 'Rotina', 'Recolher as sucatas pequenas no ato do peneiramento para enfornar', 'Recolher as sucatas pequenas no pátio e enviar para o enfornamento', 'Siderpam', 'Antônio Carlos', '', '2', '0', '0', '2015-01-01', '2015-04-30', '2015-04-30', '')
INSERT INTO Acao VALUES ('387', '16', '100', '74', 'Manter a ordem e limpeza', 'Processos', 'Rotina', 'Fazer limpeza na baia de escória de tratamento', 'Fazer limpeza diariamente', 'Siderpam', 'Antônio Carlos', '', '2', '0', '0', '2015-01-01', '2015-04-30', '2014-12-30', '')
INSERT INTO Acao VALUES ('388', '16', '100', '74', 'Evitar contaminação do meio ambiente', 'Sociedade', 'Rotina', 'Fazer limpeza no tanque de decantação', 'Fazer limpeza no referido local', 'Siderpam', 'Antônio Carlos', '', '2', '0', '0', '2015-01-01', '2015-01-30', '2015-01-30', '')
INSERT INTO Acao VALUES ('390', '16', '101', '16', 'Para evitar o acumulo de moinha e carvão que di@culta a limpeza da área, evitando desperdicio de c', 'Processos', 'Rotina', 'Fechar com tijolos abertura que se encontra a estrutura que sustenta a bica e o piso da area da descarga', 'Fazendo um isolamento com tijolos, do piso ate a estrutura da tampas laterais', 'Siderpam', 'Júlio Carvalho', '', '2', '0', '0', '2015-01-01', '2015-03-10', '0000-00-00', '')
INSERT INTO Acao VALUES ('391', '16', '101', '16', 'Manter a organização do local ', 'Processos', 'Rotina', 'Solicitar a limpeza das áeras adjacentes da descarca de carvão de forma periódica', 'Encaminhar memorando ao responsavel com a programação da limpeza periódica', 'Siderpam', 'Júlio Carvalho', '', '2', '0', '0', '2015-01-01', '2015-03-10', '0000-00-00', '')
INSERT INTO Acao VALUES ('392', '16', '101', '16', 'Para facilitar a limpeza e o recolhimento do carvão bem como a organização do local ', 'Processos', 'Rotina', 'Concretar área do metro', 'concretando a área', 'Siderpam', 'Júlio Carvalho/ Paulo', '', '2', '70', '0', '2015-01-01', '2015-02-26', '0000-00-00', '')
INSERT INTO Acao VALUES ('393', '16', '101', '16', 'Para evitar entrada de pessoas não autorizadas ', 'Sociedade', 'Rotina', 'Colocar Portão para entrada do metro AF2', 'Colocando um portão de grade, delimitando o acesso', 'Siderpam', 'Júlio Carvalho', '1. Qual é o valor?', '2', '0', '0', '2015-01-01', '2015-03-10', '0000-00-00', '')
INSERT INTO Acao VALUES ('394', '16', '101', '16', 'Para maior segurança na execução das tarefas, contribuindo para visibilidade da área devido anim', 'Sociedade', 'Rotina', 'Providenciar Iluminação, área externa e interna Descarga do AF2', 'Instalando luminárias em pontos onde a iluminação é de@ciente', 'Siderpam', 'Júlio Carvalho', '', '0', '0', '0', '2015-01-01', '2015-03-10', '0000-00-00', '')
INSERT INTO Acao VALUES ('395', '16', '101', '16', 'Para facilitar a limpeza do metro, contribuindo para manobrar veiculos na área da descarga, ameniza', 'Pessoas', 'Rotina', 'Instalar ponto d`agua na área do metro e descarga AF2', 'Canalizando ponto próximo a descarga. Solicitando a compra de tubos, registros e conexões', 'Siderpam', 'Júlio Carvalho', '', '0', '1871', '0', '2015-01-01', '2015-02-25', '0000-00-00', '')
INSERT INTO Acao VALUES ('396', '3', '66', '3', 'Atualmente a tramitação de documentação da parte legal da empresa é realizada via certificado d', 'Processos', 'Rotina', 'Liberar certificado digital da Márcia e do CCGC', 'Iniciar processo de certificação junto a empresa NÚCLEO DIGITAL', 'CCGC', 'Márcia', '', '2', '649', '0', '2015-01-01', '2015-03-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('397', '3', '66', '3', '1. Adequar o novo endereço do CCGC', 'Sociedade', 'Rotina', 'Levantar informações junto ao Prefeitura de Patos de Minas sobre a troca de endereço do CCGC', '1. Levantar informações junto a Prefeitura e 2. Agir com o intuito de resolver tal processo', 'CCGC', 'Márcia', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('398', '3', '70', '3', 'Definir procedimentos referente ao novo núcleo criado', 'Processos', 'Rotina', 'Criar POP para o Núcleo Postos de Combustíveis/ Transporte/ Logística', 'Reunir com a Diretoria Executiva para discutir os itens e Elaborar o documento', 'CCGC', 'Eustáquio', '', '0', '0', '0', '2015-02-02', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('399', '11', '24', '29', 'Cumprir item 08 do TAC', 'Sociedade', 'Rotina', 'Implantar poços de monitoramento a montante e a jusante do empreendimento', 'Contratar empresa especialização em perfuração de poços', 'Sid. Terra', 'Matheus Padilha', '', '2', '17000', '0', '2015-01-01', '2015-06-20', '0000-00-00', '')
INSERT INTO Acao VALUES ('400', '11', '17', '66', 'Minimizar possíveis retificações nas declarações acessórias mensais', 'Processos', 'Rotina', 'Monitorar frequência de inconsistências nos registros fiscais (3º ID do setor)', 'Conferências fiscais no decorrer do mês de fechamento', 'Sid. Terra', 'Angela', '', '2', '0', '0', '2015-01-01', '2015-04-27', '2015-04-27', '')
INSERT INTO Acao VALUES ('401', '11', '17', '11', 'A partir da implantação do E-social, os prazos para fechamentos das operações mensais deverão r', 'Pessoas', 'Rotina', 'Reunir com os setores Fiscal/ RH/ TI/ Compras/ Transportes/ Contábil/ Carvão/ Administrativo para decidirmos sobre prazos de encerramento de lançamentos de NF's para fechamento das operações mensais', 'Solicitar reunião para tratar do assunto', 'Sid. Terra', 'Angela', '', '2', '0', '0', '2015-01-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('402', '11', '14', '11', 'Maior controle operacional', 'Processos', 'Rotina', 'Evitar falha na pesagem das matérias-primas no setor de carregamento do AF', 'Limitar o peso dentro da moega para iniciar a próxima pesagem', 'Setor carregamento', 'José Armando/ David/ Gabriel', '', '2', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('403', '33', '13', '11', ' Para atender a legislação vigente - NR 9 e 15 da Portaria 3214/78', 'Pessoas', 'Rotina', 'Realizar o monitoramento dos riscos ocupacionais, conforme NR 9', 'Através da contratação de empresa especializada', 'Toda área operacional da Usina', 'José Maria', '1. José Maria coloquei a data final em 30/06/15 em função do final 1º semestre/ 2015', '0', '6500', '0', '2015-04-20', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('404', '12', '34', '12', '46', 'Liderança', 'Estratégica', 'vender projeto pó de balao', 'oferecendo o projeto com business plan formalizado', 'pedro leopoldo', 'alesson', 'apresentar a Precon o projeto juntamente com o “business plan“,<br>oferecer interação de nosso corpo tecnico e operacional, buscar outras parcerias mais proximas a sete lagoas, viabilizando a logistica', '2', '1', '0', '2015-04-01', '2015-04-01', '0000-00-00', '')
INSERT INTO Acao VALUES ('405', '31', '14', '11', '35', 'Processos', 'Estratégica', 'Automatizar sistema pulverização', 'Instalando sistema automático de caiação', 'Roda de lingotamento', 'José Armando / Claudio / gabriel', '', '0', '5', '0', '2015-06-01', '2015-07-31', '0000-00-00', '')
INSERT INTO Acao VALUES ('406', '67', '27', '11', '35', 'Processos', 'Estratégica', 'Identificar numeração das correias de cada motor', 'Discriminando cada motor com a respectiva correia', 'Plantas 1 e 2', 'David', '', '2', '0', '0', '2015-04-01', '2015-04-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('407', '67', '27', '11', '39', 'Informações e Conhecimento', 'Estratégica', 'Elaborar relatórios mensais das plantas de beneficiamento', 'Detalhando e discriminando produção/receita de cada coproduto', 'Sala supervisão', 'David', '', '2', '0', '0', '2015-01-02', '2015-01-02', '0000-00-00', '')
INSERT INTO Acao VALUES ('408', '22', '15', '11', 'As NF´s as quais são registradas no faturamento não tem nenhuma validade fiscal. Ex.: cliente Ger', 'Processos', 'Rotina', 'Inserir normas de compras/ financeiro para pagamentos de fornecedores somente após o envio do arquivo XML de cada NF emitida para a Sid. Terra', 'Elaborando criação de uma pasta no setor de compras onde setor de compras só efetua a entrada da NF-e no sistema NETI após o recebimento do arquivo, liberando assim que o financeiro dê quitação ao fornecedor', 'Sistema de compras', 'Tânia, Paulo, Alan, Compras', '', '0', '0', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('410', '57', '98', '57', '56', 'Liderança', 'Estratégica', 'Desenvolver planta de sinterização', 'Desenvolvendo com recursos internos uma mini planta de Sinterização', 'Siderpam Siderúrgica', 'Plínio Maia', '1 Desenvolver projeto piloto.<br>2 Executar projeto<br>3 Montar leito de sinter<br>4 Sinterizar leito proposto<br>5 Analisar a eficácia de sinterização<br>   5.1 Realizar análise química<br>   5.2 Realizar análise granulométrica<br>   5.3 Realizar teste de resistência mecânica   ', '2', '30', '0', '2015-05-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('411', '57', '98', '57', 'Para manter a temperatura de coroa na faixa operacional com menor quantidade de gás de alto forno.', 'Processos', 'Estratégica', 'Aumentar eficiencia dos Glendons', 'Instalar eletrossoprador individual em cada um dos três Glendons', 'AF II', 'Plínio Maia', '1 Dimensionar sopradores para os glendons<br>2 Definir local de instalação<br>3 Orçar ventoinha + motor + tubulação.<br>4 Realizar a instalação de todo o equipamento<br>5 Verificar delta da temperatura de coroa', '2', '0', '0', '2015-04-02', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('412', '57', '98', '57', 'Para reaproveitar material com elevado teor de ferro metálico', 'Processos', 'Rotina', 'Enfornar Sinter de beneficiamento', 'Enfornando o sinter de beneficiamento nos pedidos de gusa de aciaria', 'AF II', 'Plínio Maia, Adélio Pires', '1 Beneficiar escória do tratamento<br>2 Pesar quantidade beneficiada<br>3 Abastecer silo com Sinter<br>4 Enfornar quantidades determinadas do material', '2', '0', '0', '2015-03-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('413', '57', '98', '57', 'Para evitar paralizações corretivas', 'Estratégias e Planos', 'Rotina', 'Criar cronograma de paralizações do reator', 'Montar cronograma anual de paralização com as datas definidas pela equipe de produção, manutenção e diretoria', 'AF II', 'Plínio Maia, Adélio Pires, João Lúcio', '1 Verificar melhores datas para parada programada com toda equipe de produção, manutenção e diretoria.<br>2 Verificar datas de feriados<br>3 Montar cronograma<br>', '2', '0', '0', '2015-01-01', '2015-01-31', '0000-00-00', '')
INSERT INTO Acao VALUES ('414', '57', '98', '57', 'Para reduzir a geração de sucata no processo de lingotamento do ferro gusa.', 'Processos', 'Rotina', 'Melhorar bicas de lingotamento de ferro gusa', 'Realizando reforma parcial nas bicas de corrida de gusa do lado direito e esquerdo.', 'AF II', 'João Lúcio', '1 Realizar reforma parcial nas bicas de corrida de gusa.', '2', '0', '0', '2015-03-01', '2015-03-31', '0000-00-00', '')
INSERT INTO Acao VALUES ('415', '57', '98', '57', 'Para aumentar a produtividade do AF, reduzir o consumo de CV.', 'Processos', 'Rotina', 'Manter volume de escória abaixo de 300 kg/tonelada de gusa', 'Montando Leito de fusão com percentual de sílica tal que o volume de escória esteja sempre abaixo de 300 Kg/t', 'AF II', 'Plínio Maia, Adélio Pires', '1 Montar leito de fusão com % SiO2 de proporcione um volume de escória com até 300 Kg/t<br>2 Estudar viabilidade econômica do leito montado<br>3 Avaliar eficácia do leito', '2', '0', '0', '2015-04-27', '2015-12-31', '0000-00-00', '')
INSERT INTO Acao VALUES ('419', '28', '25', '28', '43', 'Processos', 'Estratégica', 'Fabricar o cone superior da tremonha', 'Adquirir material, traçar, calandrar, montar e usinar peça', 'oficiana de manutenção e fabricação', 'Equipe de fabricação', 'Traçar peça na oficina<br>Cortar peça bipartida<br>Efetuar serviço de dobra externo.<br>Montar peça na oficina fabricação<br>Enviar peça para serviço de usinagem externo.<br>Conclusão da 1ª etata.<br>2ª Etapa - Substituir cone com desgaste acentuado no topo do AF<br>', '2', '2800', '0', '2015-04-24', '2015-06-26', '0000-00-00', '')
INSERT INTO Acao VALUES ('421', '28', '25', '28', '43', 'Estratégias e Planos', 'Estratégica', 'Iniciar o projeto do fim de curso do girador de caçamba', 'Realizar estudo detalhado no solidworks', 'Topo do AF', 'Engenharia e Projetos', 'Iniciar projeto inicial.<br>Realizar simulação de funcionamento.<br>Levantar material.<br>Orçar material.<br>Levantar custo<br>Após aprovação da diretoria executar projeto', '2', '1000', '0', '2015-05-20', '2015-05-26', '0000-00-00', '')
INSERT INTO Acao VALUES ('422', '28', '25', '28', 'Evitar intoxicação do funcionário por monoxido de carbono durante a desobstrução do tubo', 'Pessoas', 'Rotina', 'Fabricar e montar janela de visita para limpar tubulação do Lavador Gás', 'Adquirir material fabricar e montar', 'Lavador de gás', 'Equipe de fabricação', '', '2', '1000', '0', '2015-05-04', '2015-05-08', '0000-00-00', '')
INSERT INTO Acao VALUES ('423', '50', '81', '50', 'Evitar custo de taxas bancarias', 'Processos', 'Estratégica', 'Suspender emissão de cheques', 'Efetuar pagamento via TED', 'Pagamento de Carvão', 'Financeiro / Carvão', '', '2', '0', '0', '2015-04-22', '2015-04-22', '0000-00-00', '')
INSERT INTO Acao VALUES ('427', '75', '101', '75', '55', 'Liderança', 'Estratégica', 'Instalação ponto de internet', 'Instalando antena.', 'Sala Descarga de Carvão', 'Paulo', '', '2', '30', '0', '2030-04-15', '2006-05-15', '0000-00-00', '')
INSERT INTO Acao VALUES ('428', '75', '101', '75', '56', 'Liderança', 'Estratégica', 'Retirada de tiços ', 'Através de trabalho manual sendo feita a retirada dos tiços do local.', 'Entre a Área do metro e Silo de carvão AFII.', 'Alesson/ Fabiano, Francisco, Normando.', 'No dia 20/04 foi autorizado pelo diretor Alesson a retirada dos tiços sendo doados aos funcionários que fizeram a limpeza da área, em troca da limpeza do local, não gerando custo.', '2', '29', '0', '2022-04-15', '2020-04-15', '0000-00-00', '')
INSERT INTO Acao VALUES ('429', '2', '61', '2', '7', 'Liderança', 'Estratégica', '1', '1', '1', '1', '', '0', '201', '0', '2015-01-01', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('430', '29', '24', '29', '50', 'Estratégias e Planos', 'Estratégica', 'Realizar análise de classificação do Resíduo Pó de Coletor(Pó de balão) aglutinado', 'Contratar empresa autorizada ', 'Sid. Terra', 'Matheus Padilha/ Alesson', '', '2', '1900', '0', '2015-01-01', '2015-05-22', '0000-00-00', '')
INSERT INTO Acao VALUES ('431', '73', '99', '73', '54', 'Liderança', 'Estratégica', 'Sugerir a manutenção do portão eletrônico da Portaria', 'Fazer a manutenção ', 'Siderpam', 'Carlos / Manutenção', '', '0', '150', '0', '2015-05-12', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('432', '73', '99', '73', '63', 'Liderança', 'Estratégica', 'Sugerir a informatização da Portaria', 'Instalar computador interligado a rede', 'Siderpam', 'Carlos / TI', '', '0', '1.5', '0', '2015-05-12', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('433', '28', '25', '28', '50', 'Processos', 'Estratégica', 'Fabricar e usinar um rotor em aço inox', 'Executar projeto do rotor e usinar peça', 'Bomba do Granulador Escória', 'Engenharia, Projetos e Marcelo', 'DETALHAR PEÇA PARA FABRICAÇÃO<br>EXECUTAR O PROJETO NO SOLIDWORKS<br>ADQUIRIR MATERIAIS PARA EXECUÇÃO DA PEÇA<br>MONTAR ROTOR NA OFICINA DE FABRICAÇÃO. <br>USINAR ROTOR.<br>BALANCEAR ROTOR.<br>MONTAR ROTOR E TESTAR CORRENTE DE TRABALHO DA BOMBA. <br>TESTAR PRESSÃO DE TRABALHO DA BOMBA <MÍNIMO DE 02KG>', '2', '400', '0', '2015-05-26', '2015-06-05', '0000-00-00', '')
INSERT INTO Acao VALUES ('434', '11', '25', '28', '50', 'Estratégias e Planos', 'Estratégica', 'Fabricar e montar uma nova peneira na planta de britagem para peneirar e classificar monte de escória', ' 	Peneirar e classificar escoria para venda', 'Planta de britagem nº.01', 'Equipe manutenção/Equipe fabricação', 'Esta ação foi aprovada com número 417, mas em função de um erro de acesso fiz a exclusão da mesma <Nidelson - 21/05/15 as 09:26h>.', '2', '3000', '0', '2015-05-12', '2015-06-10', '0000-00-00', '')
INSERT INTO Acao VALUES ('435', '11', '25', '28', '43', 'Estratégias e Planos', 'Estratégica', 'Iniciar o Orçamento Parcial para Reforma do AF', 'Iniciar levantamento em campo dos equipamentos e instalações que serão reformados', 'Sid. Terra', 'Cláudio - Engenharia', 'A ação nº 420 foi excluída em função de um erro de acesso. A ação estava aprovada pelo Alesson <Nidelson em 21/05/15 as 09:31h>.', '2', '2800000', '0', '2015-06-15', '2015-08-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('437', '29', '24', '11', 'Reafirmar o interesse “socioambiental“ da empresa ', 'Sociedade', 'Rotina', 'Reestreitar relações com a Gruta Rei do Mato, juntamente com a Siderpam', 'Desenvolver atividades em conjunto', 'Sid. Terra', 'Matheus Padilha', '', '2', '0', '0', '2015-01-01', '2015-06-01', '0000-00-00', '')
INSERT INTO Acao VALUES ('438', '67', '27', '67', 'Facilita mensuração da produção', 'Informações e Conhecimento', 'Rotina', 'Otimizar obtenção do indicador da planta 2', 'Criando lotes mensais do coproduto', 'Planta 2', 'David', '', '2', '0', '0', '2015-06-01', '2015-06-01', '0000-00-00', '')
INSERT INTO Acao VALUES ('439', '67', '27', '67', ' Reduz interrupções no funcionamento', 'Resultados', 'Rotina', 'Obter maior índice de funcionamento das plantas', 'Mantendo pá-carregadeira com dedicação exclusiva para as plantas', 'Plantas de beneficiamento', 'David/Flávio/José Armando', '', '2', '1', '0', '2015-06-01', '2015-06-01', '0000-00-00', '')
INSERT INTO Acao VALUES ('440', '67', '27', '67', ' Aumentar o faturamento da empresa', 'Resultados', 'Rotina', 'Otimizar expedição de escória granulada da planta 1', 'Expedidndo pequenas quantidades a cada carga', 'Planta 1', 'David', '', '2', '15', '0', '2015-05-15', '2015-05-15', '0000-00-00', '')
INSERT INTO Acao VALUES ('441', '44', '91', '44', '56', 'Liderança', 'Estratégica', 'Sugerir a compra de mangueira de borracha apropriada para limpeza de tubulação de gás e demais áreas do forno e proibir o uso das mangueiras de hidrante para esse fim.', 'Comprar mangueira específica para limpeza; educar funcionários quanto ao uso dos hidrantes somente em caso de incêndio', 'Siderpam', 'Rodolfo/ Compras / Diretoria', '', '0', '1800', '0', '2015-05-22', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('442', '32', '21', '32', ' Para que se tenha um controle do aumento de quadro pela Diretoria', 'Processos', 'Rotina', 'Adotar procedimentos de contratação (aumento de quadro), apenas sob aval dos Diretores com um minimo de 03 assinaturas', 'As contratações somente serão efetuadas, após autorização da Diretoria no formulário RP em anexo', 'RH', 'Gisele', '', '0', '0', '0', '2015-05-01', '2015-05-31', '0000-00-00', 'public/evidencias/377db439efbbeae263ee85d103058d1d.docx')
INSERT INTO Acao VALUES ('444', '32', '21', '32', '33', 'Estratégias e Planos', 'Estratégica', 'Rever custos com a alimentação ', 'Negociando redução do nº mínimo de refeições mês,  retirando o café da manhã, controlando o acesso real através da catraca/roleta, as refeiçoes ref. a visitantes/dobras somente serão fornecidas mediante autorização por escrito emitida pelo RH, rever valores cartão alimentação <reduzir ou retornar para cesta básica', 'RH/Diretoria/BS&A', 'RH', '', '0', '0', '0', '2015-05-01', '2015-05-31', '0000-00-00', '')
INSERT INTO Acao VALUES ('445', '22', '15', '22', 'Para que os gestores possam estar cientes da situação contábil da empresa.', 'Processos', 'Rotina', 'Disponibilizar balancete mensal', 'Disponibilizando mensalmente balancete contábil até dia 25 de cada mês para análise da diretoria a partir do mês de junho/2015.', 'Setor de contabilidade', 'Tania ', '', '0', '0', '0', '2015-04-22', '2015-05-13', '0000-00-00', '')
INSERT INTO Acao VALUES ('446', '22', '15', '22', 'Para definir novos indicadores mais adequados com o trabalho realizado no setor.', 'Processos', 'Rotina', 'Agendar Reunião com a Diretoria para revisão dos Indicadores Contábeis', 'Indicando pontos relevantes a serem analisados no desenvolvimento do setor', 'Setor de contabilidade e diretoria', 'Tania, Alisson', '', '0', '0', '0', '2015-05-12', '2015-06-30', '0000-00-00', '')
INSERT INTO Acao VALUES ('447', '66', '17', '66', 'Como os documentos fiscais restantes do mês chegam praticamente próximo à data do fechamento fisc', 'Estratégias e Planos', 'Estratégica', 'Reunir com o os  setores contábil, compras, exportação e administrativo para fixarmos melhor datas de lançamentos finais dos documentos fiscais mensais.', 'Convocando reunião entre os setores envolvidos.', 'No setor fiscal', 'Angela/ Nadir', '', '2', '0', '0', '2015-05-25', '2015-06-01', '0000-00-00', '')
INSERT INTO Acao VALUES ('448', '66', '17', '66', 'Para que o Setor Administrativo possa visualizar  os valores monetários dos impostos gerados mensal', 'Processos', 'Estratégica', 'Definir junto ao Setor Administrativo modelo de relatórios de impostos a serem apresentados.', 'Através de reunião', 'No Setor Administrativo', 'Angela', '', '2', '0.01', '0', '2015-05-26', '2015-05-26', '0000-00-00', '')


-- Criando tabela: Anexo
CREATE TABLE `Anexo` (
  `idAnexo` int(11) NOT NULL AUTO_INCREMENT,
  `idPlan` int(11) NOT NULL,
  `arquivo` blob NOT NULL,
  PRIMARY KEY (`idAnexo`),
  KEY `idPlan` (`idPlan`),
  CONSTRAINT `Anexo_ibfk_1` FOREIGN KEY (`idPlan`) REFERENCES `PlanejamentoEstrategico` (`idPlan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

-- Salva os dados


-- Criando tabela: Cargo
CREATE TABLE `Cargo` (
  `idCargo` int(11) NOT NULL AUTO_INCREMENT,
  `idDep` int(11) NOT NULL,
  `nivel` int(11) NOT NULL,
  `nomeFuncao` varchar(60) NOT NULL,
  `idEmpresa` int(11) NOT NULL,
  PRIMARY KEY (`idCargo`),
  KEY `idDep` (`idDep`),
  KEY `idEmpresa` (`idEmpresa`),
  CONSTRAINT `Cargo_ibfk_1` FOREIGN KEY (`idDep`) REFERENCES `Departamento` (`idDep`),
  CONSTRAINT `Cargo_ibfk_2` FOREIGN KEY (`idEmpresa`) REFERENCES `Empresa` (`idEmpresa`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8

-- Salva os dados
INSERT INTO Cargo VALUES ('1', '1', '-1', '', '1')
INSERT INTO Cargo VALUES ('2', '2', '0', '', '2')
INSERT INTO Cargo VALUES ('3', '3', '1', 'Diretor Executivo', '2')
INSERT INTO Cargo VALUES ('4', '4', '2', 'Controller', '2')
INSERT INTO Cargo VALUES ('5', '5', '2', 'Comprador Master - Insumos Nutrição', '2')
INSERT INTO Cargo VALUES ('7', '9', '2', 'Comprador Senior', '2')
INSERT INTO Cargo VALUES ('8', '6', '2', 'Comprador Senior', '2')
INSERT INTO Cargo VALUES ('9', '8', '2', 'Comprador Senior', '2')
INSERT INTO Cargo VALUES ('10', '4', '3', 'Assistente Administrativo', '2')
INSERT INTO Cargo VALUES ('11', '11', '0', '', '3')
INSERT INTO Cargo VALUES ('12', '12', '1', 'Diretor Industrial', '3')
INSERT INTO Cargo VALUES ('13', '14', '1', 'Diretor Suprimentos', '3')
INSERT INTO Cargo VALUES ('14', '13', '1', 'Diretora Financeira ', '3')
INSERT INTO Cargo VALUES ('15', '15', '0', '', '4')
INSERT INTO Cargo VALUES ('16', '16', '0', '', '5')
INSERT INTO Cargo VALUES ('17', '17', '1', 'Diretor Administrativo', '3')
INSERT INTO Cargo VALUES ('18', '18', '2', 'Gerente Financeiro', '3')
INSERT INTO Cargo VALUES ('19', '19', '3', 'Faturista', '3')
INSERT INTO Cargo VALUES ('20', '20', '3', 'Supervisor de Produção', '3')
INSERT INTO Cargo VALUES ('21', '21', '2', 'Contadora', '3')
INSERT INTO Cargo VALUES ('22', '22', '3', 'Encarregada Dpto Fiscal', '3')
INSERT INTO Cargo VALUES ('23', '23', '3', 'Supervisora Descarga Carvão', '3')
INSERT INTO Cargo VALUES ('24', '24', '3', 'Engenheiro Eletricista', '3')
INSERT INTO Cargo VALUES ('25', '25', '3', 'Analista Químico', '3')
INSERT INTO Cargo VALUES ('26', '26', '3', 'Operador de Logística', '3')
INSERT INTO Cargo VALUES ('27', '27', '3', 'Engenheiro de Manutenção', '3')
INSERT INTO Cargo VALUES ('28', '28', '3', 'Auxiliar Meio Ambiente', '3')
INSERT INTO Cargo VALUES ('29', '29', '3', 'Coordenador Pagamento Carvão', '3')
INSERT INTO Cargo VALUES ('30', '30', '2', 'Gerente Produção', '3')
INSERT INTO Cargo VALUES ('31', '31', '3', 'Gerente de Recursos Humanos', '3')
INSERT INTO Cargo VALUES ('32', '32', '2', 'Engenheiro Segurança Trabalho', '3')
INSERT INTO Cargo VALUES ('33', '33', '3', 'Gerente de Compras', '3')
INSERT INTO Cargo VALUES ('34', '34', '3', 'Encarregado Tecnologia Informação', '3')
INSERT INTO Cargo VALUES ('35', '35', '3', 'Coordenador de Transporte', '3')
INSERT INTO Cargo VALUES ('36', '6', '3', 'Assistente Compras', '2')
INSERT INTO Cargo VALUES ('37', '36', '1', 'Diretor Industrial', '4')
INSERT INTO Cargo VALUES ('38', '37', '1', 'Diretor Administrativo', '4')
INSERT INTO Cargo VALUES ('39', '38', '1', 'Diretora Financeira', '4')
INSERT INTO Cargo VALUES ('40', '39', '2', 'Gerente de Pagamento de Carvão', '4')
INSERT INTO Cargo VALUES ('41', '40', '2', 'Comprador', '4')
INSERT INTO Cargo VALUES ('42', '41', '2', 'Contador', '4')
INSERT INTO Cargo VALUES ('43', '42', '2', 'Coordenador Segurança Trabalho', '4')
INSERT INTO Cargo VALUES ('44', '43', '2', 'Coordenador Laboradoria', '4')
INSERT INTO Cargo VALUES ('45', '44', '2', 'Supervisor Descarga de Carvão', '4')
INSERT INTO Cargo VALUES ('46', '45', '3', 'Supervisor de Elétrica', '4')
INSERT INTO Cargo VALUES ('47', '46', '2', 'Encarregado Expedição/ Balança/ Pátio de Gusa', '4')
INSERT INTO Cargo VALUES ('48', '47', '2', 'Exportação', '4')
INSERT INTO Cargo VALUES ('49', '48', '2', 'Analista Financeiro', '4')
INSERT INTO Cargo VALUES ('50', '49', '2', 'Analista Ambiental', '4')
INSERT INTO Cargo VALUES ('51', '50', '2', 'Encarregado de TI', '4')
INSERT INTO Cargo VALUES ('52', '51', '2', 'Advogada', '4')
INSERT INTO Cargo VALUES ('53', '52', '3', 'Supervisor de Produção', '4')
INSERT INTO Cargo VALUES ('54', '53', '2', 'Encarregado de Manutenção Mecânica', '4')
INSERT INTO Cargo VALUES ('55', '54', '2', 'Coordenador Pagamento de Carvão', '4')
INSERT INTO Cargo VALUES ('56', '55', '2', 'Supervisor de Portaria', '4')
INSERT INTO Cargo VALUES ('57', '56', '3', 'Supervisor de Produção', '4')
INSERT INTO Cargo VALUES ('58', '57', '2', 'Gerente de Recursos Humanos', '4')
INSERT INTO Cargo VALUES ('59', '58', '3', 'Supervisor de Termelétrica', '4')
INSERT INTO Cargo VALUES ('61', '60', '2', 'Peneiras', '4')
INSERT INTO Cargo VALUES ('62', '58', '2', 'Engenheiro Segurança Trabalho', '4')
INSERT INTO Cargo VALUES ('63', '56', '2', 'Gerente Industrial', '4')
INSERT INTO Cargo VALUES ('64', '64', '2', 'Advogada', '3')
INSERT INTO Cargo VALUES ('65', '65', '0', '', '6')
INSERT INTO Cargo VALUES ('66', '66', '1', 'Cargo', '6')
INSERT INTO Cargo VALUES ('69', '69', '1', 'Gerente de Tecnologia da Informação', '5')
INSERT INTO Cargo VALUES ('70', '70', '4', 'Analista de Informática', '5')
INSERT INTO Cargo VALUES ('71', '59', '2', 'Transporte Interno', '4')
INSERT INTO Cargo VALUES ('72', '3', '1', 'Conselheiro de Administração', '2')
INSERT INTO Cargo VALUES ('73', '71', '2', 'Comprador Carvão', '3')
INSERT INTO Cargo VALUES ('74', '72', '0', '', '7')
INSERT INTO Cargo VALUES ('75', '73', '1', 'Diretor Geral', '7')


-- Criando tabela: Departamento
CREATE TABLE `Departamento` (
  `idDep` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `idEmpresa` int(20) NOT NULL,
  PRIMARY KEY (`idDep`),
  KEY `idEmpresa` (`idEmpresa`),
  CONSTRAINT `Departamento_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `Empresa` (`idEmpresa`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8

-- Salva os dados
INSERT INTO Departamento VALUES ('1', '', '1')
INSERT INTO Departamento VALUES ('2', '', '2')
INSERT INTO Departamento VALUES ('3', 'Diretoria Executiva', '2')
INSERT INTO Departamento VALUES ('4', 'Controladoria', '2')
INSERT INTO Departamento VALUES ('5', 'Núcleo Insumos Nutrição Animal', '2')
INSERT INTO Departamento VALUES ('6', 'Núcleo Agroveterinaria', '2')
INSERT INTO Departamento VALUES ('8', 'Núcleo Laticinios', '2')
INSERT INTO Departamento VALUES ('9', 'Núcleo Supermercado', '2')
INSERT INTO Departamento VALUES ('11', '', '3')
INSERT INTO Departamento VALUES ('12', 'Diretoria Industrial', '3')
INSERT INTO Departamento VALUES ('13', 'Diretoria Financeira', '3')
INSERT INTO Departamento VALUES ('14', 'Diretoria Suprimentos', '3')
INSERT INTO Departamento VALUES ('15', '', '4')
INSERT INTO Departamento VALUES ('16', '', '5')
INSERT INTO Departamento VALUES ('17', 'Diretoria Administrativa', '3')
INSERT INTO Departamento VALUES ('18', 'Financeiro', '3')
INSERT INTO Departamento VALUES ('19', 'Expedição - Balança', '3')
INSERT INTO Departamento VALUES ('20', 'Beneficiamento - Peneiras', '3')
INSERT INTO Departamento VALUES ('21', 'Contabilidade', '3')
INSERT INTO Departamento VALUES ('22', 'Fiscal', '3')
INSERT INTO Departamento VALUES ('23', 'Descarga Carvão', '3')
INSERT INTO Departamento VALUES ('24', 'Elétrica', '3')
INSERT INTO Departamento VALUES ('25', 'Laboratório', '3')
INSERT INTO Departamento VALUES ('26', 'Logística', '3')
INSERT INTO Departamento VALUES ('27', 'Manutenção Mecânica', '3')
INSERT INTO Departamento VALUES ('28', 'Meio Ambiente', '3')
INSERT INTO Departamento VALUES ('29', 'Pagamento Carvão', '3')
INSERT INTO Departamento VALUES ('30', 'Produção', '3')
INSERT INTO Departamento VALUES ('31', 'RH - DP', '3')
INSERT INTO Departamento VALUES ('32', 'SESMET', '3')
INSERT INTO Departamento VALUES ('33', 'Suprimentos', '3')
INSERT INTO Departamento VALUES ('34', 'Tecnologia da Informação', '3')
INSERT INTO Departamento VALUES ('35', 'Transporte Interno', '3')
INSERT INTO Departamento VALUES ('36', 'Diretoria Industrial', '4')
INSERT INTO Departamento VALUES ('37', 'Diretoria Administrativa', '4')
INSERT INTO Departamento VALUES ('38', 'Diretoria Financeira', '4')
INSERT INTO Departamento VALUES ('39', 'Compra de Carvão', '4')
INSERT INTO Departamento VALUES ('40', 'Compra e Almoxarifado', '4')
INSERT INTO Departamento VALUES ('41', 'Contabilidade', '4')
INSERT INTO Departamento VALUES ('42', 'SESMET', '4')
INSERT INTO Departamento VALUES ('43', 'Laboratório', '4')
INSERT INTO Departamento VALUES ('44', 'Descarga de Carvão', '4')
INSERT INTO Departamento VALUES ('45', 'Manutenção Elétrica', '4')
INSERT INTO Departamento VALUES ('46', 'Expedição/ Balança/ Pátio de Gusa', '4')
INSERT INTO Departamento VALUES ('47', 'Exportação', '4')
INSERT INTO Departamento VALUES ('48', 'Financeiro', '4')
INSERT INTO Departamento VALUES ('49', 'Meio Ambiente', '4')
INSERT INTO Departamento VALUES ('50', 'Tecnologia da Informação', '4')
INSERT INTO Departamento VALUES ('51', 'Jurídico', '4')
INSERT INTO Departamento VALUES ('52', 'Manutenção Patrimonial', '4')
INSERT INTO Departamento VALUES ('53', 'Manutenção Industrial', '4')
INSERT INTO Departamento VALUES ('54', 'Pagamento de Carvão', '4')
INSERT INTO Departamento VALUES ('55', 'Portaria', '4')
INSERT INTO Departamento VALUES ('56', 'Produção', '4')
INSERT INTO Departamento VALUES ('57', 'Recursos Humanos', '4')
INSERT INTO Departamento VALUES ('58', 'Termelétrica/ Elétrica/ Man Industrial/ SESMET', '4')
INSERT INTO Departamento VALUES ('59', 'Transportes', '4')
INSERT INTO Departamento VALUES ('60', 'Peneiras', '4')
INSERT INTO Departamento VALUES ('63', 'Núcleo Postos Combustíveis/ Transporte', '2')
INSERT INTO Departamento VALUES ('64', 'Jurídico', '3')
INSERT INTO Departamento VALUES ('65', '', '6')
INSERT INTO Departamento VALUES ('66', 'Dept', '6')
INSERT INTO Departamento VALUES ('69', 'Tecnologia da Informação', '5')
INSERT INTO Departamento VALUES ('70', 'Manutenção Telefonia', '5')
INSERT INTO Departamento VALUES ('71', 'Compra Carvão', '3')
INSERT INTO Departamento VALUES ('72', '', '7')
INSERT INTO Departamento VALUES ('73', 'Diretoria Geral', '7')


-- Criando tabela: Empresa
CREATE TABLE `Empresa` (
  `idEmpresa` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `historico` text,
  `infraestrutura` text,
  `mercadoAtuacao` text,
  `produtosServicos` text,
  `logo` varchar(32) DEFAULT NULL,
  `CNPJ` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `telefone` varchar(18) DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `rua` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEmpresa`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8

-- Salva os dados
INSERT INTO Empresa VALUES ('1', '', '', '', '', '', '', '', '1', '', '', '', '', '', '')
INSERT INTO Empresa VALUES ('2', 'CCGC - Consórcio Cooperativo Grupo Cemil', 'O Consórcio Cooperativo Grupo Cemil - CCGC Ltda., é uma Sociedade Simples, tributada pelo Lucro Real, com sede em Patos de Minas, estado de Minas Gerais, constituída em 18/11/2012, tendo como objeto social o desenvolvimento de estratégias para o fortalecimento da intercooperação e da atividade cooperativa praticada por cada um dos sócios. 

A sociedade simples constituída não realizará, em nenhuma hipótese, atividade empresária, limitando-se a realizar os trabalhos de gestão necessários à implementação e operacionalização de um Consórcio, regido conforme artigo 14, da Lei nº 4.504 de 30 de Novembro de 1964 (Estatuto da Terra). 

O total da capital subscrito foi de R$ 400.000,00 (Quatrocentos mil reais), onde a participação das empresas sócias segue abaixo:
 Cooperativa Central Mineira de Laticínios Ltda. – CEMIL, com participação de 24% do capital social.
 Cooperativa Mista Agropecuária de Patos de Minas Ltda. – COOPATOS, com participação de 19% do capital social.
 Cooperativa Mista Agropecuária de Dores do Indaiá Ltda. – COMADI, com participação de 19% do capital social.
 Cooperativa Agropecuária de Patrocínio Ltda. – COOPA, com participação de 19% do capital social.
 Cooperativa Agropecuária do Vale do Paracatu Ltda. – COOPERVAP, com participação de 19% do capital social.', 'As primeiras tarefas se voltaram para a adequação da infraestrutura física e tecnológica (reforma da sala, computadores e móveis) e organizacional. Neste sentido foi montada a equipe CCGC: Diretor Executivo, Controller, Secretária e Compradores. Estes últimos, indicados pelas consorciadas como forma de preservar a cultura e as características de cada cooperativa no novo desenho organizacional. Sendo assim, estes profissionais passaram a frequentar o CCGC três vezes por semana e assumiram o importante papel de construir os processos envolvendo as consorciadas e a central de compras. 

A partir de agosto/ 13, com a instalação do sistema Totvs Protheus, houve a necessidade de contratarmos um comprador em tempo integral. Desta forma, o colaborador Francisco Aurélio integrou a equipe do consórcio e assumiu a tarefa de cadastro de produtos e fornecedores para o novo sistema que estava sendo implantado.

Outra importante etapa aconteceu em dezembro/2013, com a autorização do Conselho de Administração para que os compradores, que frequentavam semanalmente o consórcio, fossem contratados em tempo integral. Desta forma, procederam-se as contratações, a partir de 2014, dos demais colaboradores: Jaime (Comadi), José Eustáquio (Coopervap), Fábio (Coopa) e Wellerson (Coopatos). 

Paralelo, à estruturação do consórcio, outras ações foram concretizadas em 2013, tal como a criação de instrumentos de comunicação (Banner, Cartão de visita, Logomarca CCGC e da Central de compras), criação de uniformes e crachás, elaboração do Código de ética e implantação de um sistema de gestão baseado na ferramenta 5W2H e critérios do MEG – Modelo de Excelência em Gestão da FNQ (Fundação Nacional da Qualidade).', 'O Consórcio cooperativo é um tipo de estratégia adotada por organizações pautadas, legalmente, na Lei nº 6.404/76 (Lei das Sociedades Anônimas) e na Lei 4.504/64 (Estatuto da Terra). Trata-se de um empreendimento sem personalidade jurídica (mas que possui CNPJ) que equivale a uma sociedade simples e detentora de autonomia para efetuar transações comerciais em nome das consorciadas, mas que não pode auferir receitas. Sendo assim, o Consórcio deve se valer de práticas gerenciais bem sucedidas para proporcionar ganhos às consorciadas. Desta forma, as empresas detentoras de consórcio efetuam rateios de despesas operacionais e, assim, se encarregam de assumir as responsabilidades referentes às transações que lhes são pertinentes. 

Para Balestrin e Verschoore (2008), não existe uma única maneira de empreender um consórcio e seu perfil está diretamente relacionado aos fatores motivacionais que levaram à sua criação, bem como os objetivos que impulsionaram tal iniciativa. Para Casarotto e Pires (1999), o consórcio de empresas pode ser utilizado com relativa eficiência no processo de capacitação e apoio às consorciadas. Estes autores defendem ainda, algumas estratégicas que podem proporcionar vantagens competitivas duradouras, a destacar: inovação tecnológica, instrumentalização da gestão, internacionalização, independência estratégica para exploração de oportunidades empresariais. 

Segundo Balestrin e Verschoore (2008), os consórcios empresariais apresentam pontos críticos que devem ser observados com o intuito de fortalecer a relação entre as consorciadas: instaurar um processo de tomada de decisão mais participativo, pautar ações voltadas ao bom relacionamento entre as consorciadas, buscar o equilíbrio entre a propriedade e a riqueza gerada, fortalecer os relacionamentos de longo prazo e tratar com transparência a distribuição dos ganhos alcançados pelo consórcio.', 'O principal serviço oferecido neste primeiro ano de funcionamento do CCGC se volta para a Central de compras subdividia em compras operacionais e compras estratégicas. As compras operacionais contam com fluxo operacional integrado via sistema Protheus da Totvs e permite inserção de solicitações de compras pelas consorciadas de maneira individualizada. Para garantir eficiência neste processo dividiu-se a gestão tática-operacional em núcleos: Insumos Nutrição Animal, Agropecuária, Laticínio e Supermercado. Desta forma, busca-se uma melhorar integração da Central de compras com colaboradores das cooperativas alocados em cada núcleo.
As compras de produtos considerados estratégicos e sazonais são voltadas para a aquisição de Fertilizantes, Defensivos, Sementes de Milho e Sementes de pastagem. Tais processos integram a participação efetiva de uma equipe multivariada composta por compradores do CCGC, gestores de compras das consorciadas e técnicos indicados pelas cooperativas para tal finalidade. ', '3976e15c86cc83c00fc16e78fede188b', '17.256.839/0001-98', '1', '(34) 3818 3731', 'Brasil', 'Minas Gerais', 'Patos de Minas', 'Distrito Industrial II', 'Avenida das Indústrias')
INSERT INTO Empresa VALUES ('3', 'Siderúrgica Terra Ltda', 'A Siderúrgica Terra Ltda, CNPJ 09.639.962/0001-60 está situada à Rodovia BR 040,
KM 472, Bairro Universitário, na cidade de Sete Lagoas, CEP 35.702-372, Estado de
Minas Gerais. Iniciou sua operação em julho de 2012 e possui atualmente 190
colaboradores diretos e produção média mensal de 12.000 ton de Gusa.', 'Unidade industrial com 1 Alto Forno e capacidade de produção média de 12.000
toneladas/ mês.', 'Produção e comercialização de Ferro Gusa de aciaria e subprodutos dos processos
siderúrgicos.', 'Ferro Gusa de aciaria e subprodutos siderúrgicos.', 'ccca18f0bf4d5da3ecceafd1b3c1c5a6', '09.639.962/0001-60', '1', '(31) 3776 5300', 'Brasil', 'Minas Gerais', 'Sete Lagoas', 'Universitário', 'Rodovia BR 040, KM 472')
INSERT INTO Empresa VALUES ('4', 'Siderpam Siderúrgica Ltda', '* Razão Social: SIDERPAM SIDERURGICA LTDA; * CNPJ: 19.326.353/0001-04; * Data da abertura: 27/11/2013; * Endereço:
ROD BR 040, KM 476, SN; * Bairro INDUSTRIAS; * Sete Lagoas/ MG; * CEP 35.701-970.', 'Possui dois alto fornos  - 160m3 e 119m3 ambos com tecnologia para desfosforação e refino de ferro gusa; Atua especificamente em ferro gusa nodular e nodular siliciado e possui geração própria de energia - termelétrica.
empresa considera uma das melhores empresas do mercado em se tratando de tecnologia', ' Atua especificamente em ferro gusa nodular e nodular siliciado e possui geração própria de energia - termelétrica.', 'Ferro gusa nodular e nodular siliciado - Termeletrica - geração de energia (consumo próprio).', '77aa4221ca33965f44f578fcd84a2094', '19.326.353/0001-04', '1', '(31) 3776 5300', 'Brasil', 'Minas Gerais', 'Sete Lagoas', 'Indústrias', 'Rodovia BR 040 KM 476')
INSERT INTO Empresa VALUES ('5', 'Cemil - Cooperativa Central Mineira de Latici', 'Planejamento Estratégico é uma ferramenta gerencial utilizada pelas empresas como mecanismo de adequação ao ambiente onde se encontra de forma a otimizar seus resultados (Oliveira, 1998). Peter e Certo (2005) corrobora com esta definição ao afirmarem que a Administração Estratégica é um processo contínuo, dinâmico e integrado entre empresa e seu ambiente. Assim, tais pressupostos convergem para a afirmação de Lorange e Vancíl (1976) quando afirmam que não existe um sistema universal de planejamento, porque as empresas diferem em tamanho, diversidade de operações, organização, filosofia e estilo gerencial. Desta forma, não se pretende esgotar as possibilidades deste tema e nem apresentar uma “receita” para a formulação e implantação do Planejamento Estratégico. O intuito é instigar a reflexão sobre o assunto e sugerir uma metodologia que, certamente, estará presente total ou parcialmente na maioria dos instrumentos elaborados pelas empresas brasileiras.', 'Planejamento Estratégico é uma ferramenta gerencial utilizada pelas empresas como mecanismo de adequação ao ambiente onde se encontra de forma a otimizar seus resultados (Oliveira, 1998). Peter e Certo (2005) corrobora com esta definição ao afirmarem que a Administração Estratégica é um processo contínuo, dinâmico e integrado entre empresa e seu ambiente. Assim, tais pressupostos convergem para a afirmação de Lorange e Vancíl (1976) quando afirmam que não existe um sistema universal de planejamento, porque as empresas diferem em tamanho, diversidade de operações, organização, filosofia e estilo gerencial. Desta forma, não se pretende esgotar as possibilidades deste tema e nem apresentar uma “receita” para a formulação e implantação do Planejamento Estratégico. O intuito é instigar a reflexão sobre o assunto e sugerir uma metodologia que, certamente, estará presente total ou parcialmente na maioria dos instrumentos elaborados pelas empresas brasileiras.', 'Planejamento Estratégico é uma ferramenta gerencial utilizada pelas empresas como mecanismo de adequação ao ambiente onde se encontra de forma a otimizar seus resultados (Oliveira, 1998). Peter e Certo (2005) corrobora com esta definição ao afirmarem que a Administração Estratégica é um processo contínuo, dinâmico e integrado entre empresa e seu ambiente. Assim, tais pressupostos convergem para a afirmação de Lorange e Vancíl (1976) quando afirmam que não existe um sistema universal de planejamento, porque as empresas diferem em tamanho, diversidade de operações, organização, filosofia e estilo gerencial. Desta forma, não se pretende esgotar as possibilidades deste tema e nem apresentar uma “receita” para a formulação e implantação do Planejamento Estratégico. O intuito é instigar a reflexão sobre o assunto e sugerir uma metodologia que, certamente, estará presente total ou parcialmente na maioria dos instrumentos elaborados pelas empresas brasileiras.', 'Planejamento Estratégico é uma ferramenta gerencial utilizada pelas empresas como mecanismo de adequação ao ambiente onde se encontra de forma a otimizar seus resultados (Oliveira, 1998). Peter e Certo (2005) corrobora com esta definição ao afirmarem que a Administração Estratégica é um processo contínuo, dinâmico e integrado entre empresa e seu ambiente. Assim, tais pressupostos convergem para a afirmação de Lorange e Vancíl (1976) quando afirmam que não existe um sistema universal de planejamento, porque as empresas diferem em tamanho, diversidade de operações, organização, filosofia e estilo gerencial. Desta forma, não se pretende esgotar as possibilidades deste tema e nem apresentar uma “receita” para a formulação e implantação do Planejamento Estratégico. O intuito é instigar a reflexão sobre o assunto e sugerir uma metodologia que, certamente, estará presente total ou parcialmente na maioria dos instrumentos elaborados pelas empresas brasileiras.', 'c6562bd7d046b515a9b6e3a298aa39b1', '42942235000142', '1', '(34) 3818 1300', 'Brasil', 'Minas Gerais', 'Patos de Minas', 'Distrito Industrial II', 'Avenida das Indústrias')
INSERT INTO Empresa VALUES ('6', 'InfoAlto - Teste', '', '', '', '', '', '16.695.171/0001-12', '1', '', '', '', '', '', '')
INSERT INTO Empresa VALUES ('7', 'Siderúrgica Carbofer Ltda ', '', '', '', '', '', '18906082000101', '1', '', '', '', '', '', '')


-- Criando tabela: EnderecoEmpresa
CREATE TABLE `EnderecoEmpresa` (
  `idEndereco` int(11) NOT NULL AUTO_INCREMENT,
  `idEmpresa` int(11) NOT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL,
  `rua` varchar(45) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEndereco`),
  KEY `idEmpresa` (`idEmpresa`),
  CONSTRAINT `EnderecoEmpresa_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `Empresa` (`idEmpresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

-- Salva os dados


-- Criando tabela: Estrategia
CREATE TABLE `Estrategia` (
  `idEstrategia` int(11) NOT NULL AUTO_INCREMENT,
  `idPlan` int(11) NOT NULL,
  `classificacao` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `estrategia` text NOT NULL,
  PRIMARY KEY (`idEstrategia`),
  KEY `idPlan` (`idPlan`),
  CONSTRAINT `Estrategia_ibfk_1` FOREIGN KEY (`idPlan`) REFERENCES `PlanejamentoEstrategico` (`idPlan`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8

-- Salva os dados
INSERT INTO Estrategia VALUES ('7', '1', 'Estrategia Macro', 'Estratégia de concentração', 'Compra conjunta CCGC: Laticínios; Nutrição Animal; Lojas Agropecuárias; Supermercado; Combustív')
INSERT INTO Estrategia VALUES ('8', '1', 'Estrategia Macro', 'Estratégia de concentração', 'Cons')
INSERT INTO Estrategia VALUES ('9', '1', 'Estrategia Macro', 'Estratégia de concentração', 'Realização de logística conjunta para a captação e distribuição de produtos diversos vinculad')
INSERT INTO Estrategia VALUES ('10', '1', 'Estrategia Macro', 'Estratégia de concentração', 'Venda conjunta consorciadas CCGC:  Produtos industrializados pelas consorciadas  Não abrange prod')
INSERT INTO Estrategia VALUES ('11', '1', 'Estrategia Macro', 'Estratégia de concentração', 'Implantar centros de distribuição conjunta (Brasília, Montes Claros, Belo Horizonte, Uberlândia)')
INSERT INTO Estrategia VALUES ('12', '1', 'Estrategia Macro', 'Estratégia de concentração', 'Padronização de embalagens: • Indústrias • Agropecuária')
INSERT INTO Estrategia VALUES ('13', '1', 'Estrategia Macro', 'Estratégia de concentração', 'Padronização de insumos:  Indústrias')
INSERT INTO Estrategia VALUES ('14', '1', 'Estrategia Macro', 'Estratégia de concentração', 'Ingresso de novas consorciadas CCGC')
INSERT INTO Estrategia VALUES ('15', '1', 'Estrategia Macro', 'Estratégia de concentração', 'Censo das consorciadas CCGC:  UFV Rio Paranaíba (Responsável pelo projeto)  Sebrae/MG (financiad')
INSERT INTO Estrategia VALUES ('16', '1', 'Estrategia Macro', 'Estratégia de concentração', 'Operações de Barter consorciadas CCGC')
INSERT INTO Estrategia VALUES ('17', '1', 'Estrategia Macro', 'Estratégia de concentração', 'Gestão de Riscos (operações hedge consorciadas)')
INSERT INTO Estrategia VALUES ('18', '1', 'Estrategia Macro', 'Estratégia de concentração', 'Integração sistemas compras (CCGC x consorciadas):  Sistema Totvs Fluig')
INSERT INTO Estrategia VALUES ('19', '1', 'Estrategia Macro', 'Estratégia de concentração', 'Feiras consorciadas CCGC:  Compra produtos negociados durante a Feira  Integração da estratégia')
INSERT INTO Estrategia VALUES ('20', '1', 'Estrategia Macro', 'Estratégia de concentração', 'Representação comercial Máquinas e Equipamentos')
INSERT INTO Estrategia VALUES ('21', '1', 'Estrategia Macro', 'Estratégia de concentração', 'Produtos marca própria:  Arroz  Feijão  Café')
INSERT INTO Estrategia VALUES ('22', '1', 'Estrategia Macro', 'Estratégia de concentração', 'Padronização da Política de captação de Leite')
INSERT INTO Estrategia VALUES ('23', '1', 'Estrategia Macro', 'Estratégia de concentração', 'Integração Planejamento Estratégico das consorciadas')
INSERT INTO Estrategia VALUES ('24', '1', 'Estrategia Macro', 'Estratégia de concentração', 'Aumentar Rede de supermercados consorciadas')
INSERT INTO Estrategia VALUES ('25', '1', 'Estrategia Macro', 'Estratégia de concentração', 'Instalar lojas comercialização produtos das consorciadas em grandes centros')
INSERT INTO Estrategia VALUES ('33', '2', 'Estrategia Redução de Dispesas', 'Estratégia de desinvestimento', 'Reduzir despesas relacionadas ao Departamento Pessoal - adequação de equipes, redução da folha d')
INSERT INTO Estrategia VALUES ('34', '2', 'Estrategia Redução de Dispesas', 'Estratégia de desinvestimento', 'Reduzir despesas administrativas - material de escritório, telefonia, informática, combustível, e')
INSERT INTO Estrategia VALUES ('35', '2', 'Estrategia Redução de Dispesas', 'Estratégia de desinvestimento', 'Redução de custo industrial (exemplos - Manutenção mecânica, Energia elétrica, etc.)')
INSERT INTO Estrategia VALUES ('36', '2', 'Estrategia Macro', 'Estratégia de concentração', 'Rever contratos com terceiros - foco redução de despesas (exemplo - segurança patrimonial).')
INSERT INTO Estrategia VALUES ('37', '2', 'Estrategia Macro', 'Estratégia de concentração', 'Compra conjunta (empresas do grupo) - adequar processos, rever estrutura de compras de cada empresa,')
INSERT INTO Estrategia VALUES ('38', '2', 'Estrategia Macro', 'Estratégia de concentração', 'Elaborar estudo sobre o pagamento de juros e multas pela empresa e propor alternativas para eliminar')
INSERT INTO Estrategia VALUES ('39', '2', 'Estrategia Macro', 'Estratégia de concentração', 'Tornar mais efetivos os controles administrativos (exemplos - controle de veículo, controle de usu�')
INSERT INTO Estrategia VALUES ('40', '2', 'Estrategia Macro', 'Estratégia de concentração', 'Elaborar estudo sobre o reflexo da exportação no fluxo de caixa da empresa e propor adequações p')
INSERT INTO Estrategia VALUES ('41', '2', 'Estrategia Macro', 'Estratégia de concentração', 'Estudar alternativas para a exportação sem passar por intermediários - redução de custo de come')
INSERT INTO Estrategia VALUES ('42', '2', 'Estrategia Macro', 'Estratégia de concentração', 'Relatórios gerenciais - propor relatórios por setor e definir datas para apresentação à Diretor')
INSERT INTO Estrategia VALUES ('43', '2', 'Estrategia Macro', 'Estratégia de concentração', 'Indicadores de desempenho - proposta por setor com a respectiva meta.')
INSERT INTO Estrategia VALUES ('44', '2', 'Estrategia Macro', 'Estratégia de concentração', 'Compra de carvão - foco Pessoa Jurídica e carvão a granel.')
INSERT INTO Estrategia VALUES ('45', '2', 'Estrategia Macro', 'Estratégia de concentração', 'Estudar processos internos em que existe a possibilidade de terceirização (exemplo - transporte in')
INSERT INTO Estrategia VALUES ('46', '2', 'Estrategia Macro', 'Estratégia de concentração', 'Estudar alternativas (e respectiva viabilidade) para utilização de coprodutos no alto forno com in')
INSERT INTO Estrategia VALUES ('47', '2', 'Estrategia Macro', 'Estratégia de concentração', 'Compra de minério - compra com foco em custo e qualidade (teor Bauxita); estabelecer critérios de ')
INSERT INTO Estrategia VALUES ('48', '2', 'Estrategia Macro', 'Estratégia de concentração', 'Repensar o processo envolvendo a Planta de Beneficiamento de Minério (exemplo - reduzir custo de lo')
INSERT INTO Estrategia VALUES ('49', '2', 'Estrategia Macro', 'Estratégia de concentração', 'Sucata - estudar alternativas para a redução de sua geração e respectivo uso (consumo direto na ')
INSERT INTO Estrategia VALUES ('50', '2', 'Estrategia Macro', 'Estratégia de concentração', 'Estoque co-produtos - avalancagem nas vendas.')
INSERT INTO Estrategia VALUES ('54', '3', 'Estrategia Redução de Dispesas', 'Estratégia de desinvestimento', 'Reduzir despesas relacionadas ao Departamento Pessoal - adequação de equipes, redução da folha de pagamento, redução de horas extras, redução despesas com transporte, redução despesas com alimentação e demais despesas relacionadas ao quadro de colaboradores. ')
INSERT INTO Estrategia VALUES ('55', '3', 'Estrategia Redução de Dispesas', 'Estratégia de desinvestimento', 'Reduzir despesas administrativas - material de escritório, telefonia, informática, combustível, etc.')
INSERT INTO Estrategia VALUES ('56', '3', 'Estrategia Redução de Dispesas', 'Estratégia de desinvestimento', 'Redução de custo industrial (exemplos - Manutenção mecânica, Energia elétrica, etc.)')
INSERT INTO Estrategia VALUES ('57', '3', 'Estrategia Macro', 'Estratégia de estabilidade', 'Rever contratos com terceiros - foco redução de despesas (exemplo - segurança patrimonial).')
INSERT INTO Estrategia VALUES ('58', '3', 'Estrategia Macro', 'Estratégia de estabilidade', 'Compra conjunta (empresas do grupo) - adequar processos, rever estrutura de compras de cada empresa, adequar rotinas do setor e buscar redução de custos.')
INSERT INTO Estrategia VALUES ('59', '3', 'Estrategia Macro', 'Estratégia de estabilidade', 'Elaborar estudo sobre o pagamento de juros e multas pela empresa e propor alternativas para eliminar tais desembolsos.')
INSERT INTO Estrategia VALUES ('60', '3', 'Estrategia Macro', 'Estratégia de estabilidade', 'Tornar mais efetivos os controles administrativos (exemplos - controle de veículo, controle de usuários restaurante, etc).')
INSERT INTO Estrategia VALUES ('61', '3', 'Estrategia Macro', 'Estratégia de estabilidade', 'Elaborar estudo sobre o reflexo da exportação no fluxo de caixa da empresa e propor adequações para que o caixa não seja sacrificado.')
INSERT INTO Estrategia VALUES ('62', '3', 'Estrategia Macro', 'Estratégia de estabilidade', 'Estudar alternativas para a exportação sem passar por intermediários - redução de custo de comercialização.')
INSERT INTO Estrategia VALUES ('63', '3', 'Estrategia Macro', 'Estratégia de estabilidade', 'Relatórios gerenciais - propor relatórios por setor e definir datas para apresentação à Diretoria da empresa.')
INSERT INTO Estrategia VALUES ('64', '3', 'Estrategia Macro', 'Estratégia de estabilidade', 'Indicadores de desempenho - proposta por setor com a respectiva meta.')
INSERT INTO Estrategia VALUES ('65', '3', 'Estrategia Macro', 'Estratégia de estabilidade', 'Compra de carvão - foco Pessoa Jurídica e carvão a granel.')
INSERT INTO Estrategia VALUES ('66', '3', 'Estrategia Macro', 'Estratégia de estabilidade', 'Estudar processos internos em que existe a possibilidade de terceirização  - foco em redução de custos. ')
INSERT INTO Estrategia VALUES ('67', '3', 'Estrategia Macro', 'Estratégia de estabilidade', 'Estudar alternativas (e respectiva viabilidade) para utilização de co-produtos no alto forno com intuito de reduzir custos de produção.')
INSERT INTO Estrategia VALUES ('68', '3', 'Estrategia Macro', 'Estratégia de estabilidade', 'Compra de minério - compra com foco em custo e qualidade (teor Bauxita, por exemplo); estabelecer critérios de classificação dos insumos; ter controles efetivos referente à qualidade e exigir dos fornecedores o cumprimento de tais parâmetros. ')
INSERT INTO Estrategia VALUES ('69', '3', 'Estrategia Macro', 'Estratégia de estabilidade', 'Sucata - estudar alternativas para a redução de sua geração e respectivo uso.')
INSERT INTO Estrategia VALUES ('70', '3', 'Estrategia Redução de Dispesas', 'Estratégia de rotatividade', '')
INSERT INTO Estrategia VALUES ('71', '1', 'Estrategia Redução de Dispesas', 'Estratégia de desinvestimento', '')
INSERT INTO Estrategia VALUES ('72', '1', 'Estrategia Redução de Dispesas', 'Estratégia de desinvestimento', '')
INSERT INTO Estrategia VALUES ('73', '1', 'Estrategia Redução de Dispesas', 'Estratégia de desinvestimento', '')
INSERT INTO Estrategia VALUES ('74', '1', 'Estrategia Redução de Dispesas', 'Estratégia de desinvestimento', '')
INSERT INTO Estrategia VALUES ('75', '1', 'Estrategia Redução de Dispesas', 'Estratégia de desinvestimento', '')
INSERT INTO Estrategia VALUES ('76', '5', 'Estrategia Redução de Dispesas', 'Estratégia de rotatividade', 'Hue')


-- Criando tabela: Fundamento
CREATE TABLE `Fundamento` (
  `idFundamento` int(11) NOT NULL AUTO_INCREMENT,
  `idEmpresa` int(11) NOT NULL,
  `nome` text NOT NULL,
  `nivel` int(11) NOT NULL DEFAULT '0',
  `descricao` text NOT NULL,
  PRIMARY KEY (`idFundamento`),
  KEY `idEmpresa` (`idEmpresa`),
  CONSTRAINT `Fundamento_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `Empresa` (`idEmpresa`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8

-- Salva os dados
INSERT INTO Fundamento VALUES ('1', '3', 'Pensamento Sistêmico', '1', 'Compreensão e tratamento das relações de interdependência e seus efeitos entre os diversos componentes que formam a organização, bem como entre eles e o ambiente com o qual interagem')
INSERT INTO Fundamento VALUES ('2', '3', 'Aprendizado organizacional', '3', 'Busca de maior eficácia e eficiência dos processos da organização e alcance de um novo patamar de competência, por meio da percepção, reflexão, avaliação e do compartilhamento de conhecimento e experiências')
INSERT INTO Fundamento VALUES ('3', '3', 'Agilidade', '5', 'Flexibilidade e rapidez de adaptação a novas demandas das partes interessadas e mudanças do ambiente, considerando a velocidade de assimilação e o tempo de ciclo dos processos')
INSERT INTO Fundamento VALUES ('6', '3', 'Olhar para o futuro', '7', 'Projeção e compreensão de cenários e tendências prováveis do ambiente e dos possíveis efeitos sobre a organização, no curto e longo prazos, avaliando alternativas e adotando estratégias mais apropriadas')
INSERT INTO Fundamento VALUES ('7', '3', 'Atuação em rede', '2', 'Desenvolvimento de relações e atividades em cooperação entre organizações ou indivíduos com interesses comuns e competências complementares')
INSERT INTO Fundamento VALUES ('8', '3', 'Inovação', '4', 'Promoção de um ambiente favorável à criatividade, experimentação e implementação de novas ideias capazes de gerar ganhos de competitividade com desenvolvimento sustentável')
INSERT INTO Fundamento VALUES ('9', '3', 'Liderança transformadora', '6', 'Atuação dos líderes de forma inspiradora, exemplar, realizadora e com constância de propósito, estimulando as pessoas em torno de valores, princípios e objetivos da organização, explorando as potencialidades das culturas presentes, preparando líderes e interagindo com as partes interessadas')
INSERT INTO Fundamento VALUES ('10', '3', 'Conhecimento sobre clientes e mercados', '8', 'Interação com clientes e mercados e entendimento de necessidades, expectativas e comportamentos, explícitos e potenciais, criando valor de forma sustentável')
INSERT INTO Fundamento VALUES ('11', '3', 'Responsabilidade social', '9', 'Dever da organização de responder pelos impactos de suas decisões e atividades, na sociedade e no meio ambiente, e de contribuir para a melhoria das condições de vida, por meio de um comportamento ético e transparente, visando ao desenvolvimento sustentável')
INSERT INTO Fundamento VALUES ('12', '3', 'Valorização das pessoas e da cultura', '10', 'Criação de condições positivas e seguras para as pessoas se desenvolverem integralmente, com ênfase na maximização do desempenho, na diversidade e no fortalecimento de crenças, costumes e comportamentos favoráveis à excelência')
INSERT INTO Fundamento VALUES ('13', '3', 'Decisões fundamentadas', '11', 'Deliberações sobre direções a seguir e ações a executar, utilizando o conhecimento gerado a partir do tratamento de informações obtidas em medições, avaliações e análises de desempenho, de riscos, de retroalimentações e de experiências')
INSERT INTO Fundamento VALUES ('14', '3', 'Orientação por processos', '12', 'Busca de eficiência e eficácia nos conjuntos de atividades que formam a cadeia de agregação de valor para os clientes e demais partes interessadas')
INSERT INTO Fundamento VALUES ('15', '3', 'Geração de valor', '13', 'Alcance de resultados econômicos, sociais e ambientais, bem como de resultados dos processos que os potencializam, em níveis de excelência, e que atendam às necessidades das partes interessadas')
INSERT INTO Fundamento VALUES ('16', '2', 'Pensamento sistêmico', '0', 'Compreensão e tratamento das relações de interdependência e seus efeitos entre os diversos componentes que formam a organização, bem como entre eles e o ambiente com o qual interagem')
INSERT INTO Fundamento VALUES ('17', '2', 'Atuação em rede', '0', 'Desenvolvimento de relações e atividades em cooperação entre organizações ou indivíduos com interesses comuns e competências complementares')
INSERT INTO Fundamento VALUES ('18', '2', 'Aprendizado organizacional', '0', 'Busca de maior eficácia e eficiência dos processos da organização e alcance de um novo patamar de competência, por meio da percepção, reflexão, avaliação e do compartilhamento de conhecimento e experiências')
INSERT INTO Fundamento VALUES ('19', '2', 'Inovação', '0', 'Promoção de um ambiente favorável à criatividade, experimentação e implementação de novas ideias capazes de gerar ganhos de competitividade com desenvolvimento sustentável')
INSERT INTO Fundamento VALUES ('20', '2', 'Agilidade', '0', 'Flexibilidade e rapidez de adaptação a novas demandas das partes interessadas e mudanças do ambiente, considerando a velocidade de assimilação e o tempo de ciclo dos processos')
INSERT INTO Fundamento VALUES ('21', '2', 'Liderança transformadora', '0', 'Atuação dos líderes de forma inspiradora, exemplar, realizadora e com constância de propósito, estimulando as pessoas em torno de valores, princípios e objetivos da organização, explorando as potencialidades das culturas presentes, preparando líderes e interagindo com as partes interessadas')
INSERT INTO Fundamento VALUES ('22', '2', 'Olhar para o futuro', '0', 'Projeção e compreensão de cenários e tendências prováveis do ambiente e dos possíveis efeitos sobre a organização, no curto e longo prazos, avaliando alternativas e adotando estratégias mais apropriadas')
INSERT INTO Fundamento VALUES ('23', '2', 'Conhecimento sobre clientes e mercados', '0', 'Interação com clientes e mercados e entendimento de necessidades, expectativas e comportamentos, explícitos e potenciais, criando valor de forma sustentável')
INSERT INTO Fundamento VALUES ('24', '2', 'Responsabilidade social', '0', 'Dever da organização de responder pelos impactos de suas decisões e atividades, na sociedade e no meio ambiente, e de contribuir para a melhoria das condições de vida, por meio de um comportamento ético e transparente, visando ao desenvolvimento sustentável')
INSERT INTO Fundamento VALUES ('25', '2', 'Valorização das pessoas e da cultura', '0', 'Criação de condições positivas e seguras para as pessoas se desenvolverem integralmente, com ênfase na maximização do desempenho, na diversidade e no fortalecimento de crenças, costumes e comportamentos favoráveis à excelência')
INSERT INTO Fundamento VALUES ('26', '2', 'Decisões fundamentadas', '0', 'Deliberações sobre direções a seguir e ações a executar, utilizando o conhecimento gerado a partir do tratamento de informações obtidas em medições, avaliações e análises de desempenho, de riscos, de retroalimentações e de experiências')
INSERT INTO Fundamento VALUES ('27', '2', 'Orientação por processos', '0', 'Busca de eficiência e eficácia nos conjuntos de atividades que formam a cadeia de agregação de valor para os clientes e demais partes interessadas')
INSERT INTO Fundamento VALUES ('28', '2', 'Geração de valor', '0', 'Alcance de resultados econômicos, sociais e ambientais, bem como de resultados dos processos que os potencializam, em níveis de excelência, e que atendam às necessidades das partes interessadas')
INSERT INTO Fundamento VALUES ('30', '4', 'Pensamento Sistêmico', '1', 'Compreensão e tratamento das relações de interdependência e seus efeitos entre os diversos componentes que formam a organização, bem como entre eles e o ambiente com o qual interagem')
INSERT INTO Fundamento VALUES ('31', '4', 'Atuação em rede', '2', 'Desenvolvimento de relações e atividades em cooperação entre organizações ou indivíduos com interesses comuns e competências complementares')
INSERT INTO Fundamento VALUES ('32', '4', 'Aprendizado organizacional', '3', 'Busca de maior eficácia e eficiência dos processos da organização e alcance de um novo patamar de competência, por meio da percepção, reflexão, avaliação e do compartilhamento de conhecimento e experiências')
INSERT INTO Fundamento VALUES ('33', '4', 'Inovação', '4', 'Promoção de um ambiente favorável à criatividade, experimentação e implementação de novas ideias capazes de gerar ganhos de competitividade com desenvolvimento sustentável')
INSERT INTO Fundamento VALUES ('34', '4', 'Agilidade', '5', 'Flexibilidade e rapidez de adaptação a novas demandas das partes interessadas e mudanças do ambiente, considerando a velocidade de assimilação e o tempo de ciclo dos processos')
INSERT INTO Fundamento VALUES ('35', '4', 'Liderança transformadora', '6', 'Atuação dos líderes de forma inspiradora, exemplar, realizadora e com constância de propósito, estimulando as pessoas em torno de valores, princípios e objetivos da organização, explorando as potencialidades das culturas presentes, preparando líderes e interagindo com as partes interessadas')
INSERT INTO Fundamento VALUES ('36', '4', 'Olhar para o futuro', '7', 'Projeção e compreensão de cenários e tendências prováveis do ambiente e dos possíveis efeitos sobre a organização, no curto e longo prazos, avaliando alternativas e adotando estratégias mais apropriadas')
INSERT INTO Fundamento VALUES ('37', '4', 'Conhecimento sobre clientes e mercados', '8', 'Interação com clientes e mercados e entendimento de necessidades, expectativas e comportamentos, explícitos e potenciais, criando valor de forma sustentável')
INSERT INTO Fundamento VALUES ('38', '4', 'Responsabilidade social', '9', 'Dever da organização de responder pelos impactos de suas decisões e atividades, na sociedade e no meio ambiente, e de contribuir para a melhoria das condições de vida, por meio de um comportamento ético e transparente, visando ao desenvolvimento sustentável')
INSERT INTO Fundamento VALUES ('39', '4', 'Valorização das pessoas e da cultura', '10', 'Criação de condições positivas e seguras para as pessoas se desenvolverem integralmente, com ênfase na maximização do desempenho, na diversidade e no fortalecimento de crenças, costumes e comportamentos favoráveis à excelência')
INSERT INTO Fundamento VALUES ('40', '4', 'Decisões fundamentadas', '11', 'Deliberações sobre direções a seguir e ações a executar, utilizando o conhecimento gerado a partir do tratamento de informações obtidas em medições, avaliações e análises de desempenho, de riscos, de retroalimentações e de experiências')
INSERT INTO Fundamento VALUES ('41', '4', 'Orientação por processos', '12', 'Busca de eficiência e eficácia nos conjuntos de atividades que formam a cadeia de agregação de valor para os clientes e demais partes interessadas')
INSERT INTO Fundamento VALUES ('42', '4', 'Geração de valor', '13', 'Alcance de resultados econômicos, sociais e ambientais, bem como de resultados dos processos que os potencializam, em níveis de excelência, e que atendam às necessidades das partes interessadas')


-- Criando tabela: IndicadorDesempenho
CREATE TABLE `IndicadorDesempenho` (
  `idIndicador` int(11) NOT NULL AUTO_INCREMENT,
  `idEstrategia` int(11) DEFAULT NULL,
  `idDep` int(11) NOT NULL,
  `idCargo` int(11) NOT NULL,
  `nome` text NOT NULL,
  `resultadoObtido` int(11) NOT NULL,
  `meta` int(11) NOT NULL,
  `tipoIndicador` varchar(100) NOT NULL,
  `periodicidade` varchar(100) NOT NULL,
  `criterioGestao` text NOT NULL,
  PRIMARY KEY (`idIndicador`),
  KEY `idEstrategia` (`idEstrategia`),
  KEY `idDep` (`idDep`),
  KEY `idCargo` (`idCargo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8

-- Salva os dados
INSERT INTO IndicadorDesempenho VALUES ('1', '0', '3', '3', 'Nidelson Teixeira Falcão', '12', '10', 'Rotina', 'Mensal', 'Processos')
INSERT INTO IndicadorDesempenho VALUES ('5', '9', '3', '3', 'Nidelson Teixeira Falcão', '1100', '1000', 'Estratégico', 'Mensal', 'Liderança')
INSERT INTO IndicadorDesempenho VALUES ('6', '0', '9', '7', 'Jaime M Faria', '46', '45', 'Rotina', 'Semestral', 'Pessoas')
INSERT INTO IndicadorDesempenho VALUES ('7', '33', '19', '19', 'Patrícia ', '110', '100', 'Estratégico', 'Mensal', 'Clientes')
INSERT INTO IndicadorDesempenho VALUES ('8', '7', '25', '18', 'Jose Eustáquio Amorim', '4', '3', 'Estratégico', 'Semestral', 'Sociedade')


-- Criando tabela: Item
CREATE TABLE `Item` (
  `idItem` int(11) NOT NULL AUTO_INCREMENT,
  `idSubtopico` int(11) NOT NULL,
  `nomeItem` text NOT NULL,
  `texto` text NOT NULL,
  PRIMARY KEY (`idItem`),
  KEY `idSubtopico` (`idSubtopico`),
  CONSTRAINT `Item_ibfk_1` FOREIGN KEY (`idSubtopico`) REFERENCES `Subtopico` (`idSubtopico`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8

-- Salva os dados
INSERT INTO Item VALUES ('11', '7', 'Missão', 'Desenvolver, implantar e executar empreendimentos voltados à geração de valor na
cadeia do agronegócio, fortalecendo a intercooperação, a atividade cooperativa das
consorciadas e seus respectivos cooperados.')
INSERT INTO Item VALUES ('12', '8', 'Visão', 'Ser referência regional como empreendimento sustentável e com elevada capacidade de
gerar oportunidades econômicas e fortalecer o cooperativismo de produção.')
INSERT INTO Item VALUES ('13', '9', 'Valores', ' Princípios cooperativistas
 Agregar valor às consorciadas
 Desenvolvimento sustentável
 Confiança nas relações
 Empreendedorismo
 Transparência
 Ética')
INSERT INTO Item VALUES ('14', '10', 'Objetivos', '• Estruturar o consórcio no primeiro ano de existência (2013/ 2014).
• Aumentar a quantidade de consorciadas no segundo ano de existência (2014/
2015).
• Integrar os sistemas de Compras (CCGC x Consorciadas) no segundo ano de
existência do consórcio (2014/ 2015).
• Implantar o Planejamento Estratégico do CCGC até 2015.')
INSERT INTO Item VALUES ('15', '11', 'Ameaças', '• Boicote dos fornecedores em relação à Central de compras do CCGC.
• Fortalecimento de grupos econômicos concorrentes do Grupo Cemil com o
respectivo enfraquecimento das cooperativas consorciadas CCGC.
• Lideranças locais não adeptas à Estratégia de cooperação assumirem a
Presidência das cooperativas consorciadas CCGC.')
INSERT INTO Item VALUES ('16', '11', 'Oportunidades', '• As regiões de atuação das consorciadas CCGC não têm grandes concorrentes
estruturados.
• O agronegócio nacional continua com significa participação no PIB brasileiro e com
tendência de crescimento.
• As regiões de atuação das consorciadas CCGC são destaque no agronegócio
estadual e nacional. Proporciona atração à empreendimentos voltados a este
segmento.')
INSERT INTO Item VALUES ('17', '12', 'Pontos Fortes', '• Forte identidade organizacional – pertencem ao mesmo grupo econômico.
• Excelência imagem – as cooperativas consorciadas são consideradas referência
nas respectivas regiões de atuação.
• Solidez financeira das consorciadas.
• Compromentimento dos Presidentes das consorciadas com o CCGC.
• Bom sistema de Governança corporativa.
• Infraestrutura de Informática bem estabelecida e funcional.')
INSERT INTO Item VALUES ('18', '12', 'Pontos Fracos', '• O CCGC possui apenas cinco consorciadas e tal situação deixa o emprendimento
vulnerável em relação à dependência das cooperativas. A força das partes
isoladamente pode se equiparar, em determinados momentos, à força do grupo.
• Resistências internas – trata-se de um empreendimento que implica em
encolhimento das estruturas do setor de compras das consorciadas.')
INSERT INTO Item VALUES ('19', '13', 'Risco de Novos Concorrentes', 'O risco de novos concorrentes representa baixo impacto para o CCGC
(considerando o funcionamento apenas da Central de Compras).')
INSERT INTO Item VALUES ('20', '13', 'Poder de Barganha dos Fornecedores', '• Poder de barganha dos fornecedores CCGC – baixo impacto.

• Poder de barganha dos fornecedores das consorciadas CCGC (Central de Compras) – pode representar uma forte ameaça ao sucesso do empreendimento.

* Os fornecedores, em geral, não querem compradores articulados e procuram desarticular tais iniciativas.')
INSERT INTO Item VALUES ('21', '13', 'Poder de Barganha dos Compradores', '• Para fins desta análise consideraremos como “compradores” as consorciadas, pois
estas são os clientes dos serviços prestados pelo CCGC.
• As consorciadas podem ter, em determinados momentos, objetivos individuais
diferentes dos objetivos do consórcio.
• Os Conselheiros do CCGC são também Presidentes e Diretores das consorciadas
e, em determinados momentos, podem tomar decisões com foco apenas em suas
cooperativas.')
INSERT INTO Item VALUES ('22', '13', 'Risco de Produtos Substitutos', '• O risco de produtos substitutos representa baixo impacto para o CCGC
(considerando o funcionamento apenas da Central de Compras).')
INSERT INTO Item VALUES ('23', '13', 'Rivalidade entre Concorrentes', '• A rivalidade entre concorrentes representa baixo impacto para o CCGC
(considerando o funcionamento apenas da Central de Compras).')
INSERT INTO Item VALUES ('24', '14', 'Estratégia de Rotatividade', 'Não será adotada a estratégia de rotatividade.')
INSERT INTO Item VALUES ('25', '14', 'Estratégia de desinvestimento', 'Não será adotada a estratégia de desinvestimento.')
INSERT INTO Item VALUES ('26', '14', 'Estratégia de liquidação', 'Não será adotada a estratégia de liquidação.')
INSERT INTO Item VALUES ('27', '15', 'Estratégia de concentração', 'Não será adotada a estratégia de concentração.')
INSERT INTO Item VALUES ('28', '15', 'Estratégia de estabilidade', 'Não será adotada a estratégia de estabilidade.')
INSERT INTO Item VALUES ('29', '15', 'Estratégias de crescimento', ' Integração vertical
 Integração horizontal
 Diversificação - foco')
INSERT INTO Item VALUES ('30', '16', 'Liderança de custos', 'Não será adotada a estratégia de liderança de custos.')
INSERT INTO Item VALUES ('31', '16', 'Diferenciação', 'Algumas estratégias mencionadas como “Estratégias de crescimento” se
enquadram também como “Estratégia de diferenciação” e, em função de
representarem mais fortemente aquela estratégia, optou-se por menciona-las em
apenas um lugar.')
INSERT INTO Item VALUES ('32', '16', 'Enfoque', 'Não será adotada a estratégia de enfoque.')
INSERT INTO Item VALUES ('33', '17', 'Componente Econômico', '● PIB Mundial US$85,0 trilhões:
• 1º Estados Unidos - US$15,3 trilhões – 19,0%
• 2º China - US$11,4 trilhões - 14,2%
• 3º Índia - US$4,5 trilhões - 5,6%
• 4º Japão - US$4,5 trilhões - 5,6%
• 5º Alemanha - US$3,1 trilhões - 3,9%
• 6º Rússia - US$2,4 trilhões – 3,0% e
• 7º Brasil - US$2,3 trilhões - 2,9%
• Fonte: Cia World Factbook. 2012.
● Previsão PIB brasileiro em 2014 – 0,9%.
● Economia internacional – em recessão desde 2008.
● Demanda do aço – mercado desaquecido.
● Taxa Cambial – 2,40 (previsão final 2014).
● Mercado de Ferro Gusa – aumento da importação de aço e,
consequentemente, redução da demanda por produtos da cadeia produtiva
nacional (inclui o Ferro Gusa).
● Mercado nacional da construção civil levemente aquecido.
● Copa do Mundo de Futebol (2014) e Olimpíadas (2016) no Brasil –
investimentos em infra-estrutura não impactou positivamente no setor
industrial.
● Investimento nas obras do PAC (Programa de Aceleração do Crescimento) -
redução do ritmo em função do período pré-eleitoral.
● Aumento da Renda Per capta do brasileiro nos últimos anos - grande oferta
de sucata de aço no país.
● Brasil – integrante os BRICs (investimentos internacionais).
● Aumento da exportação de Gusa para os EUA em função das retalhações
que este país impôs à Rússia e a Ucrânia em resposta aos conflitos na
região. Desta forma, favorece-se a indústria nacional deste produtos, pois a
Rússia e a Ucrânia são fortes concorrentes do mercado guseiro brasileiro.')
INSERT INTO Item VALUES ('34', '17', 'Componente Social', '● População mundial – 7.095,2 milhões de habitantes. Fonte: IBGE. 2012.
● População brasileira – 196,9 milhões de habitantes. Fonte: IBGE. 2012.
● Ranking populacional:
• 1º China - 1.343,2 milhões – 19,1%;
• 2º India - 1.205,1 milhões – 17,2%;
• 3º Estados Unidos - 313,8 milhões – 4,5%;
• 4º Indonésia - 248,6 milhões – 3,5% e
• 5º Brasil - 196,9 milhões – 2,8%.
• Fonte: Cia World Factbook. 2012.
● Gênero população brasileira:
• 48,7% homens e 51,3% mulheres. Fonte: IBGE. 2012.
● População rural brasileira – 29,9 milhões de habitantes. Fonte: IBGE. 2012.
● Forte apelo ambiental.
● Órgãos públicos sensíveis ao apelo socioambiental e dispostos à punição e
uso da burocracia para barrarem operações de produção de Ferro Gusa e
Carvão Vegetal.
● Sociedade e agentes públicos com alta sensibilidade e baixa tolerância para
questões que envolvem impactos ambientais advindos das operações
industriais (Siderúrgica TERRA está localizada ao lado da Gruta Rei do Mato).
● Recente autuação dos órgãos florestais proibindo as usinas que tiveram suas
atividades iniciadas após 2009 a consumirem apenas carvão de origem
plantada. Desta forma, elevou-se a demanda por esse insumo, forçando
assim a elevação dos preços (elevação de custos).')
INSERT INTO Item VALUES ('35', '17', 'Componente Político', '● Eleições em Outubro/ 2014:
• Presidente e Vice-presidente da República
• Governadores e Vice-governadores
• Senadores
• Deputados Federais e
• Deputados Estaduais
● Governo Federal:
• Discurso de centro-esquerda e prática de Centro-direita
• 8 anos governo PT
• Baixo crescimento econômico – previsão de 0,9% para 2014
• Política voltada para programas sociais
• Tendencia de inflação próxima da meta – 6,5% em 2014
• Pleno emprego
● Governo Estadual Centro-direita:
• Busca do equilíbrio das contas públicas
• 8 anos governo PSDB
• Foco do governo: “Choque de Gestão” e “Déficit zero”')
INSERT INTO Item VALUES ('36', '17', 'Componente Legal', '● As Siderúrgicas são fortemente monitoradas pelos órgãos públicos de
fiscalização.
● A indústria de Carvão Vegetal é alvo de várias iniciativas de regulação por
parte do governo – todas as esferas.
● Valores elevados dos tributos (grandes impactos nos caixas das empresas).
● Novo Código Florestal – 95% de floresta própria até 2018 (cronograma
progressivo).
● Siderúrgica Terra – área urbanizada')
INSERT INTO Item VALUES ('37', '17', 'Componente Tecnológico', '● Siderurgia – inovações e tecnologias voltadas ao aproveitamento dos
subprodutos das usinas.
● Injeção de subprodutos (finos de carvão) no processo produtivo da usina.
● Geração Própria de Energia (termoelétrica).
● Carvão Vegetal – tecnologia centenária e com grande dependência do
conhecimento e habilidade do elemento humano.
● Sistema de reaproveitamento de residuos siderúrgicos (sinterização)
investimento de aproximadamente R$15 milhões com Pay back estimado em
18 meses - utilização de resíduos gerados na usina e com possibilidade de
comprar este sub-produtos em empresas vizinhas (baixo custo).')
INSERT INTO Item VALUES ('38', '18', 'Componente Cliente', '● Gerdau (principal cliente).')
INSERT INTO Item VALUES ('39', '18', 'Componente Concorrência', '● Concorrência do Produto - Sucata de Aço: reaproveitamento realizado pela
sociedade e impacto direto advindo do aumento da renda da população
(reciclagem de produtos com aço na sua composição).
● Concorrência regional - Divinópolis, Itaúna e Sete Lagoas:
Em operação 152.000 34%
Operação parada 148.000 33%
Atividades encerradas 120.000 27%
Em operação parcial 25.000 6%
TOTAL 445.000 100%')
INSERT INTO Item VALUES ('40', '18', 'Componente Mão-de-obra', '● Mão de obra local
● Mercado demandante de mão de obra operacional, apesar da constatação de
demissões por parte de grandes empresas da região. A IVECO, por exemplo,
dispençou, no 1º semestre de 2014, 1.500 colaboradores na unidade de
produção de Sete Lagoas.
● Nível salarial baixo/ baixa qualificação
● Construção civil – setor demandante (a mão de obra que ficou a disposição
das siderúrgicas é de baixa qualificação e considerada excluída das outras
demandas)
● Na região de Sete Lagoas percebe-se também o comportamento replicado
em outros municípios do país em que alguns trabalhadores optam pelos
benefícios sociais do governo federal ao invés de buscarem um emprego.')
INSERT INTO Item VALUES ('41', '18', 'Componente Fornecedor', '● Carvão Vegetal:
• Preço reduzido em função da queda de demanda (setor com baixa
possibilidade de continuar a redução de custos – risco de parar a
atividade).
• Redução de 18% no preço do carvão nos últimos 3 meses.
• Fornecimento atual - 30% Pessoa Jurídica e 70% Pessoa Física.
• Estados fornecedores de Carvão Vegetal: MG (61%); PI (4,5%); TO
(27); GO (2,5%) e BA (3,5%).
• Oferta de carvão da região atualmente está menor que a demanda -
apesar do preço deste insumo ter sofrido quedas recentes, não é
possível reduzir mais o custo da matéria-prima. Isso se explica por um
Ato recente da Fiscalização que obrigou aproximadamente 80% das
siderúrgicas a consumirem somente carvão vegetal de origem plantada
(Eucalipto) - tal medida elevou drasticamente a demanda de carvão e,
assim, a pressão de alta dos preços pode permanecer na região.
● Minério de Ferro:
• Preço reduzido no mercado externo, mas sem o respectivo impacto na
política de preços do mercado interno. Há uma forte articulação entre
as empresas – corporativismo.
• Minérios de baixa qualidade – baixo teor de ferro, alto teor de sílica
(aumento considerável do volume de escoria) e elevado percentual de
impurezas.
• Mineração Herculano
• Mineração Itaminas
• Mineração Ferro Mais
• Mineração MMX
• Mineração Ibirité – MIB
• Acelor Mittal
• Mineração Manesmann (Pau Branco)
• Mineração TEX SERVICE
• Minerita')
INSERT INTO Item VALUES ('42', '18', 'Componente Internacional', '● Aumento do volume de aço importado')
INSERT INTO Item VALUES ('43', '18', 'Componente Internacional', '● Ucrânia – um dos principais exportadores para o mercado mundial. Nesta
época do ano, o inverno intenso reduz a produção e consequentemente
volumes de produto no mercado internacional.
● Conflitos recentes Rússia/ Ucrânia.
● EUA – maior comprador mundial de aço está em processo de recuperação
econômica (crise econômica 2008).')
INSERT INTO Item VALUES ('44', '19', 'Aspectos Organizacionais', 'Estrutura própria com parque industrial em excelente estado de conservação. A
usina iniciou operação em julho de 2012. Há uma diretriz estratégica que orienta
para a formação de uma “central administrativa” que envolvam unidades de
negócios de propriedade dos atuais acionistas.')
INSERT INTO Item VALUES ('45', '19', 'Aspectos de Pessoal', 'Equipe administrativa e de produção proveniente da Itasider.')
INSERT INTO Item VALUES ('46', '19', 'Aspectos de Marketing', 'Venda corporativa, poucos clientes e marketing institucional – relação contratual e
entre pessoas jurídicas.')
INSERT INTO Item VALUES ('47', '19', 'Aspectos de Produção', 'Produção média de 12.000 ton/ mês. Equipe qualificada e bom parque industrial.')
INSERT INTO Item VALUES ('48', '19', 'Aspectos Financeiros', 'A operação da usina apresenta equilíbrio entre Receitas e Despesas e, portanto, é
capaz de cumprir seus compromissos operacionais.')
INSERT INTO Item VALUES ('49', '20', 'Cenário Otimista', '● Recuperação do preço de venda do ferro gusa no mercado nacional.
● Caso não tenha alteração no valor do produto, ter redução do valor das
matérias primas (minério e carvão vegetal).
● Reaquecimento da economia internacional.
● Cenário nacional prevendo investimentos em infra-estrutura (copa do mundo
de futebol e olimpíadas).
● Escassez de sucata de aço no mercado.')
INSERT INTO Item VALUES ('50', '20', 'Cenário Pessimista', '● Permanência de elevado volume de importação de aço.
● Redução da demanda mundial do aço.
● Redução da oferta de ferro gusa no mercado nacional.
● Aumento da oferta da sucata de aço.
● Paralisação das Aciarias no fim de ano (estoque atual de 2 meses).
● Intenso período chuvoso destoando da quantidade de chuva esperada para
os meses de novembro, dezembro e janeiro.')
INSERT INTO Item VALUES ('51', '20', 'Cenário Provável', '● Permanência da tendência de redução de preço do ferro gusa no mercado
nacional.
● Nos últimos anos (desde 2012) algumas siderúrgicas pararam suas
operações, mas com alguns fatos recentes, na esfera política e econômica
(conflitos Rússia/ Ucrânia), tal tendência foi interrompida e não há previsão de
novas paralizações.
● Em função de uma recente negociação para venda ao mercado externo
algumas empresas podem evitar paradas de produção.
● Os fornecedores das principais matérias primas permanecerão resistentes à
redução de preços, mas contata-se forte desvalorização do preço do minério
de ferro no mercado externo.')
INSERT INTO Item VALUES ('52', '21', 'Missão', 'Empreender negócios voltados à cadeia produtiva do Ferro Gusa de maneira
sustentável, com responsabilidade socioambiental, sustentabilidade econômica e
agregando valor aos nossos clientes, fornecedores, colaboradores, acionistas e
sociedade em geral.')
INSERT INTO Item VALUES ('53', '22', 'Visão', 'Consolidar como um dos principais grupos empresariais da cadeia produtiva do
Ferro Gusa de Minas Gerais até 2015.')
INSERT INTO Item VALUES ('54', '22', 'Valores', '● Segurança em 1º lugar
● Desenvolvimento sustentável (econômico, social e ambiental)
● Satisfação dos clientes
● Competitividade, qualidade e rentabilidade
● Confiabilidade nas relações contratuais
● Transparência
● Respeito')
INSERT INTO Item VALUES ('55', '22', 'Objetivos', '● Adequar nossos custos ao preço atual do Ferro Gusa.
● Manter as empresas em funcionamento (sem interrupção).
● Cumprir com todas as obrigações financeiras/ tributárias.
● Sair fortalecido estrategicamente deste período de recessão.')
INSERT INTO Item VALUES ('56', '23', 'Valores', '● Segurança em 1º lugar
● Desenvolvimento sustentável (econômico, social e ambiental)
● Satisfação dos clientes
● Competitividade, qualidade e rentabilidade
● Confiabilidade nas relações contratuais
● Transparência
● Respeito')
INSERT INTO Item VALUES ('57', '24', 'Objetivos', '● Adequar nossos custos ao preço atual do Ferro Gusa.
● Manter as empresas em funcionamento (sem interrupção).
● Cumprir com todas as obrigações financeiras/ tributárias.
● Sair fortalecido estrategicamente deste período de recessão.')
INSERT INTO Item VALUES ('58', '25', 'Ameaças', '● Retração da economia e queda da demanda de aço e, consequentemente,
ferro gusa.
● Importação de aço restringindo, ainda mais, a demanda interna deste produto.
● Intensificação da crise econômica mundial.
● Legislação ambiental punitiva em relação auto-suficiência em carvão vegetal
e em relação aos procedimentos de operação das usinas e UPC’s.
● Redução de preços do ferro gusa no mercado nacional.')
INSERT INTO Item VALUES ('59', '25', 'Oportunidades', '● O mercado restritivo inibe o avanço da concorrência e, consequentemente,
recompensará aquelas empresas que permanecerão em operação.
● Adquirir outras empresas que estão em dificuldades financeiras.
● Estabelecer novas alianças comerciais com outras empresas (clientes e
fornecedores).')
INSERT INTO Item VALUES ('60', '25', '', '')
INSERT INTO Item VALUES ('61', '26', 'Pontos Fortes', '● Credibilidade junto ao cliente (estreito relacionamento).
● Elevada participação do mercado de aciaria no estado de Minas Gerais – 15 a
20% das empresas em operação neste semestre - Siderúrgica GAGE,
TERRA, Fergubrás, Carbofer e Hubner.
● Segundo maior fornecedor brasileiro Ferro Gusa para a Gerdau.
● Equipe de produção com vasta experiência na atividade.')
INSERT INTO Item VALUES ('62', '26', 'Pontos Fracos', '● Falta de co-geração de energia.
● Falta de tecnologia de injeção de finos no processo produtivo
● Falta de integração entre as empresas do grupo (junção dos setores de
compras, por exemplo).
● Falta de floresta própria (fragilidade em períodos recessivos).')
INSERT INTO Item VALUES ('63', '27', 'Risco de Novos Concorrentes', '● No atual contexto, o risco de novos concorrentes é muito baixo e não afeta o
negócio.')
INSERT INTO Item VALUES ('64', '27', 'Poder de Barganha dos Fornecedores', '● Siderurgia – o atual contexto é favorável aos fornecedores de minério, pois
estão fortalecidos financeiramente em função de resultados positivos ao longo
dos meses. Além disso, estes fornecedores possuem baixo custo para a
paralisação de suas operações. Já os fornecedores de carvão vegetal tem
pouco poder de barganha, pois a atividade também é deficitária e o limite de
redução de preço pode ser a decisão de pararem as suas operações.')
INSERT INTO Item VALUES ('65', '27', 'Poder de Barganha dos Compradores', '● Elevado poder dos compradores, principalmente pelo atual momento é
favorável à redução de preços de ferro gusa.
● Mercado nacional possui apenas 3 compradores.')
INSERT INTO Item VALUES ('66', '27', 'Risco de Produtos Substitutos', '● Existe a possibilidade de oferta de sucata de aço.')
INSERT INTO Item VALUES ('67', '27', 'Rivalidade entre Concorrentes', '● A rivalidade entre os concorrentes é intensa especificamente no processo de
compra de carvão vegetal, principalmente em períodos de baixa oferta desta
matéria prima.')
INSERT INTO Item VALUES ('68', '28', 'Estratégia de Rotatividade', '● Não será adotada a estratégia de rotatividade.')
INSERT INTO Item VALUES ('69', '28', 'Estratégia de desinvestimento', '● A atual conjuntura econômica brasileira não está favorável ao setor industrial
especialmente para as siderúrgicas que enfrentam diversas dificuldades para se manterem em funcionamento. Sendo assim, a principal estratégia será de
redução de despesas. Espera-se que o esforço coletivo seja capaz de evitar
um encerramento das atividades que seria muito negativo para todos os
envolvidos com a empresa.')
INSERT INTO Item VALUES ('70', '28', 'Estratégia de liquidação', '● Não será adotada a estratégia de liquidação.')
INSERT INTO Item VALUES ('71', '29', 'Estratégia de concentração', '● Não será adotada a estratégia de concentração.')
INSERT INTO Item VALUES ('72', '29', 'Estratégia de estabilidade', '● Além da estratégia de redução de despesas, buscar-se-á estabilidade na
operação da usina. Desta forma, os esforços se concentrarão em manter o
desempenho da empresa mesmo com a redução de custo necessária.')
INSERT INTO Item VALUES ('73', '29', 'Estratégias de crescimento', 'Integração vertical - Integração horizontal - Diversificação
● Não será adotada a estratégia de crescimento.')
INSERT INTO Item VALUES ('74', '30', 'Liderança de custos', '● Não será adotada a estratégia de Liderança em custos apesar da estratégia
principal ser "Redução de Despesas".')
INSERT INTO Item VALUES ('75', '30', 'Diferenciação', '● Não será adotada a estratégia de Diferenciação.')
INSERT INTO Item VALUES ('76', '30', 'Enfoque', '● Não será adotada a estratégia de Enfoque.')
INSERT INTO Item VALUES ('77', '31', 'Componente Econômico', 'PIB Mundial US$85,0 trilhões:
1º Estados Unidos - US$15,3 trilhões – 19,0%
2º China - US$11,4 trilhões - 14,2%
3º Índia - US$4,5 trilhões - 5,6%
4º Japão - US$4,5 trilhões - 5,6%
5º Alemanha - US$3,1 trilhões - 3,9%
6º Rússia - US$2,4 trilhões – 3,0% e 
7º Brasil - US$2,3 trilhões - 2,9%
Fonte: Cia World Factbook. 2012.    
Previsão PIB brasileiro em 2014 – 0,9%.
Economia internacional – em recessão desde 2008.
Demanda do aço – mercado desaquecido.
Taxa Cambial – 2,40 (previsão final 2014).
(Henrique)
Brasil – integrante os BRICs (investimentos internacionais).
possibilidade do PIB EUA fechar em 4% 2015 e Europa saída de retração e possibilidade de crescimento 2015.
Câmbio desvalorizado
Nova equipe econômica nomeada para o segundo mandato presidente Dilma Roussef com perfil conservador/ ortodoxo 
Compromisso da nova equipe econômica com a transparência de informações do governo e aparente tendência de redução de gastos do governo e equilíbrio das contas públicas.')
INSERT INTO Item VALUES ('78', '31', 'Componente Social', 'População mundial – 7.095,2 milhões de habitantes. Fonte: IBGE. 2012.
População brasileira – 196,9 milhões de habitantes. Fonte: IBGE. 2012.
Ranking populacional:
1º China - 1.343,2 milhões – 19,1%;
2º India - 1.205,1 milhões – 17,2%; 
3º Estados Unidos - 313,8 milhões – 4,5%;
4º Indonésia - 248,6 milhões – 3,5% e
5º Brasil - 196,9 milhões – 2,8%.
Fonte: Cia World Factbook. 2012.    
Gênero população brasileira:
48,7% homens e 51,3% mulheres. Fonte: IBGE. 2012.
População rural brasileira – 29,9 milhões de habitantes. Fonte: IBGE. 2012.
Forte apelo ambiental.
Órgãos públicos sensíveis ao apelo socioambiental e dispostos à punição e uso da burocracia para barrarem operações de produção de Ferro Gusa e Carvão Vegetal.
Sociedade e agentes públicos com alta sensibilidade e baixa tolerância para questões que envolvem impactos ambientais advindos das operações industriais.
Recente autuação dos órgãos florestais proibindo as usinas que tiveram suas atividades iniciadas após 2009 a consumirem apenas carvão de origem plantada. Desta forma, elevou-se a demanda por esse insumo, forçando assim a elevação dos preços (elevação de custos).')
INSERT INTO Item VALUES ('79', '31', 'Componente Político', 'Eleições em Outubro/ 2014:
Presidente e Vice-presidente da República
Governadores e Vice-governadores
Senadores
Deputados Federais e
Deputados Estaduais
Governo Federal: 
Discurso de centro-esquerda e prática de Centro-direita
8 anos governo PT
Baixo crescimento econômico – previsão de 0,9% para 2014
Política voltada para programas sociais
Tendência de inflação próxima da meta – 6,5% em 2014')
INSERT INTO Item VALUES ('80', '31', 'Componente Político', 'Pleno emprego
Governo Estadual Centro-direita:
Busca do equilíbrio das contas públicas
8 anos governo PSDB
Foco do governo: “Choque de Gestão” e “Déficit zero”')
INSERT INTO Item VALUES ('81', '31', 'Componente Legal', 'As Siderúrgicas são fortemente monitoradas pelos órgãos públicos de fiscalização.
A indústria de Carvão Vegetal é alvo de várias iniciativas de regulação por parte do governo – todas as esferas.
Valores elevados dos tributos (grandes impactos nos caixas das empresas).
Novo Código Florestal – 95% de floresta própria até 2018 (cronograma progressivo).')
INSERT INTO Item VALUES ('82', '31', 'Componente Tecnológico', 'Siderurgia – inovações e tecnologias voltadas ao aproveitamento dos subprodutos das usinas.
Injeção de subprodutos (finos de carvão) no processo produtivo da usina.
Geração Própria de Energia (termoelétrica).
Carvão Vegetal – tecnologia centenária e com grande dependência do conhecimento e habilidade do elemento humano.
Sistema de reaproveitamento de residuos siderúrgicos (sinterização) investimento de aproximadamente R$15 milhões com  Pay back estimado em 18 meses - utilização de resíduos gerados na usina e com possibilidade de comprar este sub-produtos em empresas vizinhas (baixo custo).')
INSERT INTO Item VALUES ('83', '32', 'Componente Cliente', 'Henrique')
INSERT INTO Item VALUES ('84', '32', 'Componente Concorrência', 'Plantar - 16.000 em operação; 
Alterosa - 8.000 em operação;
VDL Siderurgia - 6.000 operação; 
Siderurgica Santa Barbara - ES - 7.000 operação;
SIDERPAM - 15.000 em operação.')
INSERT INTO Item VALUES ('85', '32', 'Componente Mão-de-obra', 'Mão de obra local 
Mercado demandante de mão de obra operacional, apesar da constatação de demissões por parte de grandes empresas da região. A IVECO, por exemplo,  dispençou, no 1º semestre de 2014, 1.500 colaboradores na unidade de produção de Sete Lagoas. 
Nível salarial baixo/ baixa qualificação

Na região de Sete Lagoas percebe-se também o comportamento replicado em outros municípios do país em que alguns trabalhadores optam pelos benefícios sociais do governo federal ao invés de buscarem um emprego.')
INSERT INTO Item VALUES ('86', '32', 'Componente Fornecedor', 'Carvão Vegetal:
Redução de 18% no preço do carvão nos últimos 6 meses.
Fornecimento atual - 70% Pessoa Jurídica e 30% Pessoa Física.
Estados fornecedores de Carvão Vegetal: MG (98%); OUTROS (2%). 
Ato recente da Fiscalização que obrigou aproximadamente 80% das siderúrgicas a consumirem somente carvão vegetal de origem plantada (Eucalipto).
Minério de Ferro:
Grande fornecedor Vale demonstra flexibilidade para negociação de preço que pode ditar os preços do mercado.
Minérios de baixa qualidade – baixo teor de ferro, alto teor de sílica (aumento considerável do volume de escoria) e elevado percentual de impurezas.
Mineração  Tejucano
Mineração 
Mineração Ferro Mais
Mineração 
Mineração Ibirité – MIB
Mineração Manesmann (Pau Branco)
Minerita')
INSERT INTO Item VALUES ('87', '32', 'Componente Internacional', 'EUA – maior economia mundial em processo de recuperação econômica (crise econômica 2008).')
INSERT INTO Item VALUES ('88', '33', 'Aspectos Organizacionais', 'Júlio RH-DP')
INSERT INTO Item VALUES ('89', '33', 'Aspectos de Pessoal', 'Equipe administrativa e de produção proveniente da SIDERPA e da FERGUBRAS - processo possibilitou uma seleção dos melhores profissionais dessas 2 empresas.')
INSERT INTO Item VALUES ('90', '33', 'Aspectos de Marketing', 'Diferentemente do mercado de gusa aciaria, o gusa especial (Siderpam) conta com clientes com perfil varejo, ou seja, em torno de 200 clientes (potencial mercado interno). Tal perfil, faz com que os aspectos de marketing sejam mais evidentes do que para empresas de gusa aciaria. Nesse sentido, a empresa pode explorar melhor sua comunicação institucional (site, material de divulgação institucional, etc).')
INSERT INTO Item VALUES ('91', '33', 'Aspectos de Produção', 'Produção média de 15.000 ton/ mês. Equipe qualificada e bom parque industrial.')
INSERT INTO Item VALUES ('92', '33', 'Aspectos Financeiros', 'A operação da usina apresenta equilíbrio entre Receitas e Despesas e, portanto, é capaz de cumprir seus compromissos operacionais.')
INSERT INTO Item VALUES ('93', '34', 'Cenário Otimista', 'Recuperação do preço de venda do gusa especial no mercado nacional.
Caso não tenha alteração no valor do produto, ter redução do valor das matérias primas (minério e carvão vegetal).
Reaquecimento da economia internacional.
Reaquecimento da economia brasileira')
INSERT INTO Item VALUES ('94', '34', 'Cenário Pessimista', 'Redução da demanda de gusa especial no mercado nacional.
Paralisação das fundições final do ano
Intenso período chuvoso destoando da quantidade de chuva esperada para os meses de novembro, dezembro e janeiro.
retração da economia brasileira')
INSERT INTO Item VALUES ('95', '34', 'Cenário Provável', 'Permanência da tendência de redução de preço do gusa especial no mercado nacional. 
Nos últimos anos (desde 2012) algumas siderúrgicas pararam suas operações, mas com alguns fatos recentes, na esfera política e econômica   tal tendência foi interrompida e não há previsão de novas paralizações.
Os fornecedores das principais minerio de ferro se demonstram mais flexíveis à redução de preços de minério ferro no mercado externo.')
INSERT INTO Item VALUES ('96', '35', 'Missão', 'Empreender negócios voltados à cadeia produtiva do Ferro Gusa de maneira sustentável, com responsabilidade socioambiental, sustentabilidade econômica e agregando valor aos nossos clientes, fornecedores, colaboradores, acionistas e sociedade em geral.')
INSERT INTO Item VALUES ('97', '36', 'Visão', 'Ser referência no mercado brasileiro de ferro gusa especial até 2016.')
INSERT INTO Item VALUES ('98', '37', 'Valores', 'Segurança em 1º lugar
Desenvolvimento sustentável (econômico, social e ambiental)
Satisfação dos clientes
Competitividade, qualidade e rentabilidade
Confiabilidade nas relações contratuais
Transparência')
INSERT INTO Item VALUES ('99', '38', 'Objetivos', 'Adequar nossos custos ao preço atual do Ferro Gusa especial.
Cumprir com todas as obrigações financeiras/ tributárias.
Sair fortalecido estrategicamente deste período de recessão.
Implantar processos de beneficiamento de co-produtos em prol da sustentabilidade do negócio.')
INSERT INTO Item VALUES ('100', '39', 'Ameaças', 'Retração da economia e queda da demanda do mercado automobilistico e, consequentemente, ferro gusa especial.
Intensificação da concorrência ferro gusa especial (novos entrantes).
Legislação ambiental punitiva em relação auto-suficiência em carvão vegetal e em relação aos procedimentos de operação de usinas de ferro gusa.
Redução de preços do ferro gusa especial no mercado nacional.')
INSERT INTO Item VALUES ('101', '39', 'Oportunidades', 'Este segmento (ferro gusa especial) requer tecnologia diferenciada e, assim, inibe o avanço da concorrência.
Estabelecer novas alianças comerciais com outras empresas (clientes e fornecedores).
Moeda nacional desvalorizada em relação ao dólar (possibilidade de exportação com melhor preço).')
INSERT INTO Item VALUES ('102', '40', 'Pontos Fortes', 'Geração de energia para consumo próprio (termeletrica)
Elevada participação do mercado de gusa especial estado de Minas Gerais/ espirito santo - 29% das empresas em operação atualmente.
Equipe de produção com vasta experiência na atividade.
Detenção de tecnologia diferenciada para a produção de ferro gusa especial com custo reduzido em relação aos demais concorrentes')
INSERT INTO Item VALUES ('103', '40', 'Pontos Fracos', 'Falta de tecnologia de injeção de finos no processo produtivo
Falta de integração entre as empresas do grupo (junção dos setores de compras, por exemplo).
Falta de floresta própria (fragilidade em períodos recessivos).
Falta de capital de giro - mercado demanda pagamento de 30, 60 e 90 dias - que significa perda de clientes com essa cultura. Os estoques de produtos especiais são vendidos, as vezes, como commodities por falta de fôlego financeiro. 
Perda de capital humano que detêm conhecimento da tecnologia para fabricação de ferro gusa especial para concorrentes
Baixa capacidade de manter estoques de matérias-prima')
INSERT INTO Item VALUES ('104', '41', 'Risco de Novos Concorrentes', 'Recentemente, em função da estagnação do segmento de gusa aciaria, alguns concorrentes migraram e/ou passaram a ofertar gusa especial. Elevação da concorrência que passou a utilizar comportamento não trivial para o setor.')
INSERT INTO Item VALUES ('105', '41', 'Poder de Barganha dos Fornecedores', 'Siderurgia – o atual contexto é favorável aos fornecedores de minério, pois estão fortalecidos financeiramente em função de resultados positivos ao longo dos meses. Além disso, estes fornecedores possuem baixo custo para a paralisação de suas operações. Já os fornecedores de carvão vegetal tem pouco poder de barganha, pois a atividade também é deficitária e o limite de redução de preço pode ser a decisão de pararem as suas operações.')
INSERT INTO Item VALUES ('106', '41', 'Poder de Barganha dos Compradores', 'Elevado poder dos compradores, principalmente pelo atual momento que é favorável à redução de preços de ferro gusa especial.')
INSERT INTO Item VALUES ('107', '41', 'Risco de Produtos Substitutos', 'Não existe essa possibilidade')
INSERT INTO Item VALUES ('108', '41', 'Rivalidade entre Concorrentes', 'A rivalidade entre os concorrentes é intensa especificamente no processo de compra de carvão vegetal, principalmente em períodos de baixa oferta desta matéria prima.')
INSERT INTO Item VALUES ('109', '42', 'Estratégia de Rotatividade', 'Não será adotada a estratégia de rotatividade.')
INSERT INTO Item VALUES ('110', '42', 'Estratégia de desinvestimento', 'A atual conjuntura econômica brasileira não está favorável ao setor industrial especialmente para as siderúrgicas que enfrentam diversas dificuldades para se manterem em funcionamento. Sendo assim, a principal estratégia será de redução de despesas. Espera-se que o esforço coletivo seja capaz de evitar um encerramento das atividades que seria muito negativo para todos os envolvidos com a empresa.')
INSERT INTO Item VALUES ('111', '42', 'Estratégia de liquidação', 'Não será adotada a estratégia de liquidação.')
INSERT INTO Item VALUES ('112', '43', 'Estratégia de concentração', 'Não será adotada a estratégia de concentração.')
INSERT INTO Item VALUES ('113', '43', 'Estratégia de estabilidade', 'Além da estratégia de redução de despesas, buscar-se-á estabilidade na operação da usina. Desta forma, os esforços se concentrarão em manter o desempenho da empresa mesmo com a redução de custo necessária.')
INSERT INTO Item VALUES ('114', '43', 'Estratégias de crescimento', 'Integração vertical - Integração horizontal - Diversificação - 
Não será adotada a estratégia de crescimento.')
INSERT INTO Item VALUES ('115', '44', 'Liderança de custos', 'Não será adotada a estratégia de Liderança em custos apesar da estratégia principal ser "Redução de Despesas".')
INSERT INTO Item VALUES ('116', '44', 'Diferenciação', 'Não será adotada a estratégia de Diferenciação.')
INSERT INTO Item VALUES ('117', '44', 'Enfoque', 'Não será adotada a estratégia de Enfoque.')
INSERT INTO Item VALUES ('127', '25', 'Ameaças', '● Retração da economia e queda da demanda de aço e, consequentemente, ferro gusa. 
● Importação de aço restringindo, ainda mais, a demanda interna deste produto. ● Intensificação da crise econômica mundial. 
● Legislação ambiental punitiva em relação auto-suficiência em carvão vegetal e em relação aos procedimentos de operação das usinas e UPC’s. 
● Redução de preços do ferro gusa no mercado nacional.')
INSERT INTO Item VALUES ('128', '25', 'Oportunidades', '● O mercado restritivo inibe o avanço da concorrência e, consequentemente, recompensará aquelas empresas que permanecerão em operação. 
● Adquirir outras empresas que estão em dificuldades financeiras. 
● Estabelecer novas alianças comerciais com outras empresas (clientes e fornecedores).')
INSERT INTO Item VALUES ('130', '11', 'Ameaças', '• Boicote dos fornecedores em relação à Central de compras do CCGC. 
• Fortalecimento de grupos econômicos concorrentes do Grupo Cemil com o respectivo enfraquecimento das cooperativas consorciadas CCGC. 
• Lideranças locais não adeptas à Estratégia de cooperação assumirem a Presidência das cooperativas consorciadas CCGC.')
INSERT INTO Item VALUES ('132', '2', 'Componente Econômico', '• PIB Mundial US$85,0 trilhões:
◦ 1º Estados Unidos - US$15,3 trilhões – 19,0%
◦ 2º China - US$11,4 trilhões - 14,2%
◦ 3º Índia - US$4,5 trilhões - 5,6%
◦ 4º Japão - US$4,5 trilhões - 5,6%
◦ 5º Alemanha - US$3,1 trilhões - 3,9%
◦ 6º Rússia - US$2,4 trilhões – 3,0% e
◦ 7º Brasil - US$2,3 trilhões - 2,9%
◦ Fonte: Cia World Factbook. 2012.
• PIB Agronegócio Brasileiro: R$1.149,67 bilhões. Fonte: Cepea-USP. 2014.
• PIB Agronegócio Mineiro: R$150,61 bilhões. Fonte: Cepea-USP. 2014.
• Participação do PIB do Agronegócio Mineiro no Agronegócio Nacional:
◦ Ano 2001: 9,5% e Ano 2014: 13,1%. Fonte: Cepea-USP.
• Distribuição por segmento do Agronegócio Mineiro:
◦ Insumos 6,0%;
◦ Agroindústria 25,4%;
◦ Distribuição 30,9% e
◦ Agropecuária 37,7%.
◦ Fonte: Cepea-USP. 2012.')
INSERT INTO Item VALUES ('133', '2', 'Componente Social', '• População mundial – 7.095,2 milhões de habitantes. Fonte: IBGE. 2012.
• População brasileira – 196,9 milhões de habitantes. Fonte: IBGE. 2012.
• Ranking populacional:
◦ 1º China - 1.343,2 milhões – 19,1%;
◦ 2º India - 1.205,1 milhões – 17,2%;
◦ 3º Estados Unidos - 313,8 milhões – 4,5%;
◦ 4º Indonésia - 248,6 milhões – 3,5% e
◦ 5º Brasil - 196,9 milhões – 2,8%.
◦ Fonte: Cia World Factbook. 2012.
• Gênero população brasileira:
◦ 48,7% homens e 51,3% mulheres. Fonte: IBGE. 2012.
• População rural brasileira – 29,9 milhões de habitantes. Fonte: IBGE. 2012.')
INSERT INTO Item VALUES ('134', '2', 'Componente Político', '• Eleições em Outubro/ 2014:
◦ Presidente e Vice-presidente da República
◦ Governadores e Vice-governadores
◦ Senadores
◦ Deputados Federais e
◦ Deputados Estaduais
• Governo Federal:
◦ Discurso de centro-esquerda e prática de Centro-direita
◦ 8 anos governo PT
◦ Baixo crescimento econômico – previsão de 1,6% para 2014
◦ Política voltada para programas sociais
◦ Tendencia de inflação próxima da meta – 6,5% em 2014
◦ Pleno emprego
• Governo Estadual Centro-direita:
◦ Busca do equilíbrio das contas públicas
◦ 8 anos governo PSDB
◦ Foco do governo: “Choque de Gestão” e “Déficit zero”')
INSERT INTO Item VALUES ('135', '2', 'Componente Legal', '• Cooperativismo - As sociedades cooperativas estão reguladas pela Lei Federal no
5.764/1971 e, em Minas Gerais, pela Lei Estadual n° 15.075/2004.
• Consórcio – Art. 278 e Art. 279 da Lei 6.404/ 1976 (Lei das Sociedades Anônimas).
• Estatuto da Terra – Lei 5.404/ 1964 (fundamentação do CCGC).
• Novo código civil – Lei 10.406/ 2002.')
INSERT INTO Item VALUES ('136', '2', 'Componente Tecnológico', '• O CCGC atua, neste momento, como prestador de serviços e, por isso, a
tecnologia se volta para softwares ERP's para as transações realizadas para as
consorciadas.
• Software de acompanhamento do mercado de capitais.
• Infraestrutura de telefonia móvel e fixa – uso convencional.')
INSERT INTO Item VALUES ('137', '3', 'Componente Cliente', '• Consorciada Cemil – central de cooperativas
• Consorciada Coopa – cooperativa singular
• Consorciada Coopatos – cooperativa singular
• Consorciada Coopervap – cooperativa singular
• Consorciada Comadi – cooperativa singular')
INSERT INTO Item VALUES ('138', '3', 'Componente Concorrência', '• Não existe nenhum empreendimento no estado que possa ser considerado
concorrente.
• Existem Centrais de compras, mas não as consideramos concorrentes.')
INSERT INTO Item VALUES ('139', '3', 'Componente Mão-de-obra', '• Patos de Minas e região:
◦ Mão-de-obra operacional – muita oferta e muita demanda.
◦ Ensino Técnico – baixa oferta e muita procura
◦ Ensino Superior – muita oferta e muita procura')
INSERT INTO Item VALUES ('140', '3', 'Componente Fornecedor', '• Fornecedores CCGC – softwares, hardwares e material de escritório.
• Fornecedores consorciadas CCGC – Laticínios, Lojas Agroveterinárias, Indústrias
Nutrição Animal e Supermercado: fornecedores diversos.')
INSERT INTO Item VALUES ('141', '3', 'Componente Internacional', '• O CCGC não atua ainda com importação e exportação.')
INSERT INTO Item VALUES ('142', '4', 'Aspectos Organizacionais', '• Escritório CCGC – instalações Cemil.
• O Consórcio utiliza a infraestrutura organizacional da Cemil (Informática, Limpeza,
Serviços Gerais, Cozinha, Portaria, Telefonia, Jurídico, Veículo, etc).
• Sistema Totvs Protheus – versão 11.
• Sistema Totvs Fluig – em processo de implantação.')
INSERT INTO Item VALUES ('143', '4', 'Aspectos de Pessoal', '• Diretor Executivo, Controller e Secretária Executiva – contratados no mercado.
• Compradores da Central de compras CCGC – provenientes das consorciadas
Cemil (Francisco), Comadi (Jaime), Coopatos (Wellerson), Coopa (Fábio) e
Coopervap (Eustáquio).')
INSERT INTO Item VALUES ('144', '4', 'Aspectos de Marketing', '• Os instrumentos de Marketing não são usados como ferramenta comercial, apenas
como identidade organizacional: Logomarca CCGC, Logomarca Central de compras, Cores institucionais, Criação de uniformes, Divulgação nos jornais das
consorciadas, Desenvolvimento site do CCGC.')
INSERT INTO Item VALUES ('145', '4', 'Aspectos de Produção', '• Central de compras – fluxo do processo principal envolvendo as etapas de
Solicitação de Compras, Aprovação de compras, Cotação de Preços, Pedido de
Compras, Baixa de Pedido de Compras.')
INSERT INTO Item VALUES ('146', '4', 'Aspectos Financeiros', '• Capital integralizado em 2012 – R$400.000,00
• Cotas – 24% Cemil e demais consorciadas 19%.
• Rateio das despesas do consórcio proporcional ao capital social integralizado.')
INSERT INTO Item VALUES ('147', '59', 'Cenário Otimista', '• Não será projetado o Cenário Otimista nesta primeira versão do Planejamento
Estratégico.')
INSERT INTO Item VALUES ('148', '59', 'Cenário Pessimista', '• Não será projetado o Cenário Pessimista nesta primeira versão do Planejamento
Estratégico.')
INSERT INTO Item VALUES ('149', '59', 'Cenário Provável', '• As estratégias mencionadas a seguir se voltam para o Cenário Provável.')


-- Criando tabela: NotaFundamento
CREATE TABLE `NotaFundamento` (
  `idNotaFundamento` int(11) NOT NULL AUTO_INCREMENT,
  `idFundamento` int(11) NOT NULL,
  `idPDI` int(11) NOT NULL,
  `nota1` float DEFAULT NULL,
  `nota2` float DEFAULT NULL,
  `dataAvaliacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idNotaFundamento`),
  KEY `idPDI` (`idPDI`),
  KEY `NotaFundamento_ibfk_1` (`idFundamento`),
  CONSTRAINT `NotaFundamento_ibfk_1` FOREIGN KEY (`idFundamento`) REFERENCES `Fundamento` (`idFundamento`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `NotaFundamento_ibfk_2` FOREIGN KEY (`idPDI`) REFERENCES `PDI` (`idPDI`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8

-- Salva os dados
INSERT INTO NotaFundamento VALUES ('1', '1', '4', '0', '0', '2015-04-23 03:00:00')
INSERT INTO NotaFundamento VALUES ('2', '2', '4', '0', '0', '2015-04-23 03:00:00')
INSERT INTO NotaFundamento VALUES ('3', '3', '4', '0', '0', '2015-04-23 03:00:00')
INSERT INTO NotaFundamento VALUES ('6', '6', '4', '0', '0', '2015-04-23 03:00:00')


-- Criando tabela: Notificacao
CREATE TABLE `Notificacao` (
  `idNotificacao` int(11) NOT NULL AUTO_INCREMENT,
  `para` int(11) DEFAULT NULL,
  `assunto` varchar(255) DEFAULT NULL,
  `mensagem` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `idAcao` int(11) DEFAULT NULL,
  PRIMARY KEY (`idNotificacao`),
  KEY `para` (`para`,`idAcao`),
  KEY `idAcao` (`idAcao`)
) ENGINE=InnoDB AUTO_INCREMENT=684 DEFAULT CHARSET=utf8

-- Salva os dados
INSERT INTO Notificacao VALUES ('1', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '33')
INSERT INTO Notificacao VALUES ('2', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '41')
INSERT INTO Notificacao VALUES ('3', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '34')
INSERT INTO Notificacao VALUES ('4', '3', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '62')
INSERT INTO Notificacao VALUES ('5', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '62')
INSERT INTO Notificacao VALUES ('6', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '32')
INSERT INTO Notificacao VALUES ('7', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '34')
INSERT INTO Notificacao VALUES ('8', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '35')
INSERT INTO Notificacao VALUES ('9', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '38')
INSERT INTO Notificacao VALUES ('10', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '40')
INSERT INTO Notificacao VALUES ('11', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '45')
INSERT INTO Notificacao VALUES ('12', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '46')
INSERT INTO Notificacao VALUES ('13', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '49')
INSERT INTO Notificacao VALUES ('14', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '50')
INSERT INTO Notificacao VALUES ('15', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '51')
INSERT INTO Notificacao VALUES ('16', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '54')
INSERT INTO Notificacao VALUES ('17', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '55')
INSERT INTO Notificacao VALUES ('18', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '56')
INSERT INTO Notificacao VALUES ('19', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '57')
INSERT INTO Notificacao VALUES ('20', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '59')
INSERT INTO Notificacao VALUES ('21', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '61')
INSERT INTO Notificacao VALUES ('22', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '60')
INSERT INTO Notificacao VALUES ('23', '11', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '18')
INSERT INTO Notificacao VALUES ('24', '13', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '63')
INSERT INTO Notificacao VALUES ('25', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '64')
INSERT INTO Notificacao VALUES ('26', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '65')
INSERT INTO Notificacao VALUES ('27', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '66')
INSERT INTO Notificacao VALUES ('28', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '67')
INSERT INTO Notificacao VALUES ('29', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '68')
INSERT INTO Notificacao VALUES ('30', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '69')
INSERT INTO Notificacao VALUES ('31', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '70')
INSERT INTO Notificacao VALUES ('32', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '71')
INSERT INTO Notificacao VALUES ('33', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '61')
INSERT INTO Notificacao VALUES ('34', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '72')
INSERT INTO Notificacao VALUES ('35', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '73')
INSERT INTO Notificacao VALUES ('36', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '74')
INSERT INTO Notificacao VALUES ('37', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '75')
INSERT INTO Notificacao VALUES ('38', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '76')
INSERT INTO Notificacao VALUES ('39', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '77')
INSERT INTO Notificacao VALUES ('40', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '78')
INSERT INTO Notificacao VALUES ('41', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '79')
INSERT INTO Notificacao VALUES ('42', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '80')
INSERT INTO Notificacao VALUES ('43', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '81')
INSERT INTO Notificacao VALUES ('44', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '82')
INSERT INTO Notificacao VALUES ('45', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '83')
INSERT INTO Notificacao VALUES ('46', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '84')
INSERT INTO Notificacao VALUES ('47', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '85')
INSERT INTO Notificacao VALUES ('48', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '86')
INSERT INTO Notificacao VALUES ('49', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '87')
INSERT INTO Notificacao VALUES ('50', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '87')
INSERT INTO Notificacao VALUES ('51', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '60')
INSERT INTO Notificacao VALUES ('52', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '88')
INSERT INTO Notificacao VALUES ('53', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '89')
INSERT INTO Notificacao VALUES ('54', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '90')
INSERT INTO Notificacao VALUES ('55', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '91')
INSERT INTO Notificacao VALUES ('56', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '92')
INSERT INTO Notificacao VALUES ('57', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '93')
INSERT INTO Notificacao VALUES ('58', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '32')
INSERT INTO Notificacao VALUES ('59', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '32')
INSERT INTO Notificacao VALUES ('60', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '38')
INSERT INTO Notificacao VALUES ('61', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '40')
INSERT INTO Notificacao VALUES ('62', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '94')
INSERT INTO Notificacao VALUES ('63', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '95')
INSERT INTO Notificacao VALUES ('64', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '33')
INSERT INTO Notificacao VALUES ('65', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '38')
INSERT INTO Notificacao VALUES ('66', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '49')
INSERT INTO Notificacao VALUES ('67', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '51')
INSERT INTO Notificacao VALUES ('68', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '94')
INSERT INTO Notificacao VALUES ('69', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '94')
INSERT INTO Notificacao VALUES ('70', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '95')
INSERT INTO Notificacao VALUES ('71', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '96')
INSERT INTO Notificacao VALUES ('72', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '97')
INSERT INTO Notificacao VALUES ('73', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '98')
INSERT INTO Notificacao VALUES ('74', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '99')
INSERT INTO Notificacao VALUES ('75', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '100')
INSERT INTO Notificacao VALUES ('76', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '100')
INSERT INTO Notificacao VALUES ('77', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '100')
INSERT INTO Notificacao VALUES ('78', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '98')
INSERT INTO Notificacao VALUES ('79', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '100')
INSERT INTO Notificacao VALUES ('80', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '101')
INSERT INTO Notificacao VALUES ('81', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '102')
INSERT INTO Notificacao VALUES ('82', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '103')
INSERT INTO Notificacao VALUES ('83', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '104')
INSERT INTO Notificacao VALUES ('84', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '100')
INSERT INTO Notificacao VALUES ('85', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '105')
INSERT INTO Notificacao VALUES ('86', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '106')
INSERT INTO Notificacao VALUES ('87', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '107')
INSERT INTO Notificacao VALUES ('88', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '108')
INSERT INTO Notificacao VALUES ('89', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '109')
INSERT INTO Notificacao VALUES ('90', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '110')
INSERT INTO Notificacao VALUES ('91', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '111')
INSERT INTO Notificacao VALUES ('92', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '112')
INSERT INTO Notificacao VALUES ('93', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '113')
INSERT INTO Notificacao VALUES ('94', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '114')
INSERT INTO Notificacao VALUES ('95', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '115')
INSERT INTO Notificacao VALUES ('96', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '116')
INSERT INTO Notificacao VALUES ('97', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '117')
INSERT INTO Notificacao VALUES ('98', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '41')
INSERT INTO Notificacao VALUES ('99', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '41')
INSERT INTO Notificacao VALUES ('100', '63', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '118')
INSERT INTO Notificacao VALUES ('101', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '41')
INSERT INTO Notificacao VALUES ('102', '63', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '118')
INSERT INTO Notificacao VALUES ('103', '63', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '118')
INSERT INTO Notificacao VALUES ('104', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '119')
INSERT INTO Notificacao VALUES ('105', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '32')
INSERT INTO Notificacao VALUES ('106', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '33')
INSERT INTO Notificacao VALUES ('107', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '49')
INSERT INTO Notificacao VALUES ('108', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '52')
INSERT INTO Notificacao VALUES ('109', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '97')
INSERT INTO Notificacao VALUES ('110', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '120')
INSERT INTO Notificacao VALUES ('111', '16', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '118')
INSERT INTO Notificacao VALUES ('112', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '34')
INSERT INTO Notificacao VALUES ('113', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '35')
INSERT INTO Notificacao VALUES ('114', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '111')
INSERT INTO Notificacao VALUES ('115', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '51')
INSERT INTO Notificacao VALUES ('116', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '121')
INSERT INTO Notificacao VALUES ('117', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '37')
INSERT INTO Notificacao VALUES ('118', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '37')
INSERT INTO Notificacao VALUES ('119', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '38')
INSERT INTO Notificacao VALUES ('120', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '39')
INSERT INTO Notificacao VALUES ('121', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '40')
INSERT INTO Notificacao VALUES ('122', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '41')
INSERT INTO Notificacao VALUES ('123', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '122')
INSERT INTO Notificacao VALUES ('124', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '123')
INSERT INTO Notificacao VALUES ('125', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '124')
INSERT INTO Notificacao VALUES ('126', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '45')
INSERT INTO Notificacao VALUES ('127', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '46')
INSERT INTO Notificacao VALUES ('128', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '47')
INSERT INTO Notificacao VALUES ('129', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '125')
INSERT INTO Notificacao VALUES ('130', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '50')
INSERT INTO Notificacao VALUES ('131', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '53')
INSERT INTO Notificacao VALUES ('132', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '54')
INSERT INTO Notificacao VALUES ('133', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '54')
INSERT INTO Notificacao VALUES ('134', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '55')
INSERT INTO Notificacao VALUES ('135', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '56')
INSERT INTO Notificacao VALUES ('136', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '57')
INSERT INTO Notificacao VALUES ('137', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '54')
INSERT INTO Notificacao VALUES ('138', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '54')
INSERT INTO Notificacao VALUES ('139', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '58')
INSERT INTO Notificacao VALUES ('140', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '58')
INSERT INTO Notificacao VALUES ('141', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '59')
INSERT INTO Notificacao VALUES ('142', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '59')
INSERT INTO Notificacao VALUES ('143', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '60')
INSERT INTO Notificacao VALUES ('144', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '60')
INSERT INTO Notificacao VALUES ('145', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '61')
INSERT INTO Notificacao VALUES ('146', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '94')
INSERT INTO Notificacao VALUES ('147', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '95')
INSERT INTO Notificacao VALUES ('148', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '96')
INSERT INTO Notificacao VALUES ('149', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '98')
INSERT INTO Notificacao VALUES ('150', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '98')
INSERT INTO Notificacao VALUES ('151', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '98')
INSERT INTO Notificacao VALUES ('152', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '99')
INSERT INTO Notificacao VALUES ('153', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '100')
INSERT INTO Notificacao VALUES ('154', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '101')
INSERT INTO Notificacao VALUES ('155', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '102')
INSERT INTO Notificacao VALUES ('156', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '103')
INSERT INTO Notificacao VALUES ('157', '3', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '126')
INSERT INTO Notificacao VALUES ('158', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '105')
INSERT INTO Notificacao VALUES ('159', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '108')
INSERT INTO Notificacao VALUES ('160', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '109')
INSERT INTO Notificacao VALUES ('161', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '110')
INSERT INTO Notificacao VALUES ('162', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '112')
INSERT INTO Notificacao VALUES ('163', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '113')
INSERT INTO Notificacao VALUES ('164', '3', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '127')
INSERT INTO Notificacao VALUES ('165', '3', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '128')
INSERT INTO Notificacao VALUES ('166', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '128')
INSERT INTO Notificacao VALUES ('167', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '115')
INSERT INTO Notificacao VALUES ('168', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '116')
INSERT INTO Notificacao VALUES ('169', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '117')
INSERT INTO Notificacao VALUES ('170', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '40')
INSERT INTO Notificacao VALUES ('171', '11', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '85')
INSERT INTO Notificacao VALUES ('172', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '129')
INSERT INTO Notificacao VALUES ('173', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '130')
INSERT INTO Notificacao VALUES ('174', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '131')
INSERT INTO Notificacao VALUES ('175', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '132')
INSERT INTO Notificacao VALUES ('176', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '133')
INSERT INTO Notificacao VALUES ('177', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '134')
INSERT INTO Notificacao VALUES ('178', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '135')
INSERT INTO Notificacao VALUES ('179', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '135')
INSERT INTO Notificacao VALUES ('180', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '136')
INSERT INTO Notificacao VALUES ('181', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '137')
INSERT INTO Notificacao VALUES ('182', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '138')
INSERT INTO Notificacao VALUES ('183', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '139')
INSERT INTO Notificacao VALUES ('184', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '140')
INSERT INTO Notificacao VALUES ('185', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '141')
INSERT INTO Notificacao VALUES ('186', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '142')
INSERT INTO Notificacao VALUES ('187', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '143')
INSERT INTO Notificacao VALUES ('188', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '144')
INSERT INTO Notificacao VALUES ('189', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '145')
INSERT INTO Notificacao VALUES ('190', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '146')
INSERT INTO Notificacao VALUES ('191', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '147')
INSERT INTO Notificacao VALUES ('192', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '148')
INSERT INTO Notificacao VALUES ('193', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '149')
INSERT INTO Notificacao VALUES ('194', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '149')
INSERT INTO Notificacao VALUES ('195', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '150')
INSERT INTO Notificacao VALUES ('196', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '151')
INSERT INTO Notificacao VALUES ('197', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '152')
INSERT INTO Notificacao VALUES ('198', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '153')
INSERT INTO Notificacao VALUES ('199', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '154')
INSERT INTO Notificacao VALUES ('200', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '155')
INSERT INTO Notificacao VALUES ('201', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '156')
INSERT INTO Notificacao VALUES ('202', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '157')
INSERT INTO Notificacao VALUES ('203', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '158')
INSERT INTO Notificacao VALUES ('204', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '159')
INSERT INTO Notificacao VALUES ('205', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '160')
INSERT INTO Notificacao VALUES ('206', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '161')
INSERT INTO Notificacao VALUES ('207', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '162')
INSERT INTO Notificacao VALUES ('208', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '163')
INSERT INTO Notificacao VALUES ('209', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '164')
INSERT INTO Notificacao VALUES ('210', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '129')
INSERT INTO Notificacao VALUES ('211', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '130')
INSERT INTO Notificacao VALUES ('212', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '165')
INSERT INTO Notificacao VALUES ('213', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '130')
INSERT INTO Notificacao VALUES ('214', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '129')
INSERT INTO Notificacao VALUES ('215', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '130')
INSERT INTO Notificacao VALUES ('216', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '166')
INSERT INTO Notificacao VALUES ('217', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '131')
INSERT INTO Notificacao VALUES ('218', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '132')
INSERT INTO Notificacao VALUES ('219', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '167')
INSERT INTO Notificacao VALUES ('220', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '133')
INSERT INTO Notificacao VALUES ('221', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '134')
INSERT INTO Notificacao VALUES ('222', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '168')
INSERT INTO Notificacao VALUES ('223', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '135')
INSERT INTO Notificacao VALUES ('224', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '136')
INSERT INTO Notificacao VALUES ('225', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '169')
INSERT INTO Notificacao VALUES ('226', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '170')
INSERT INTO Notificacao VALUES ('227', '71', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.', '1', '171')
INSERT INTO Notificacao VALUES ('228', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '172')
INSERT INTO Notificacao VALUES ('229', '11', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '172')
INSERT INTO Notificacao VALUES ('230', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '173')
INSERT INTO Notificacao VALUES ('231', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '174')
INSERT INTO Notificacao VALUES ('232', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '175')
INSERT INTO Notificacao VALUES ('233', '11', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '175')
INSERT INTO Notificacao VALUES ('234', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '176')
INSERT INTO Notificacao VALUES ('235', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '177')
INSERT INTO Notificacao VALUES ('236', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '178')
INSERT INTO Notificacao VALUES ('237', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '179')
INSERT INTO Notificacao VALUES ('238', '11', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '65')
INSERT INTO Notificacao VALUES ('239', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '180')
INSERT INTO Notificacao VALUES ('240', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '181')
INSERT INTO Notificacao VALUES ('241', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '182')
INSERT INTO Notificacao VALUES ('242', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '183')
INSERT INTO Notificacao VALUES ('243', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '184')
INSERT INTO Notificacao VALUES ('244', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '185')
INSERT INTO Notificacao VALUES ('245', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '186')
INSERT INTO Notificacao VALUES ('246', '11', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '66')
INSERT INTO Notificacao VALUES ('247', '11', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '66')
INSERT INTO Notificacao VALUES ('248', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '187')
INSERT INTO Notificacao VALUES ('249', '11', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '172')
INSERT INTO Notificacao VALUES ('250', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '188')
INSERT INTO Notificacao VALUES ('251', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '189')
INSERT INTO Notificacao VALUES ('252', '11', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '189')
INSERT INTO Notificacao VALUES ('253', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '190')
INSERT INTO Notificacao VALUES ('254', '11', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '68')
INSERT INTO Notificacao VALUES ('255', '11', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '64')
INSERT INTO Notificacao VALUES ('256', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '191')
INSERT INTO Notificacao VALUES ('257', '11', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '191')
INSERT INTO Notificacao VALUES ('258', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '192')
INSERT INTO Notificacao VALUES ('259', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '193')
INSERT INTO Notificacao VALUES ('260', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '37')
INSERT INTO Notificacao VALUES ('261', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '37')
INSERT INTO Notificacao VALUES ('262', '11', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '67')
INSERT INTO Notificacao VALUES ('263', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '194')
INSERT INTO Notificacao VALUES ('264', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '195')
INSERT INTO Notificacao VALUES ('265', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '196')
INSERT INTO Notificacao VALUES ('266', '11', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '194')
INSERT INTO Notificacao VALUES ('267', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '197')
INSERT INTO Notificacao VALUES ('268', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '198')
INSERT INTO Notificacao VALUES ('269', '11', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '17')
INSERT INTO Notificacao VALUES ('270', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '199')
INSERT INTO Notificacao VALUES ('271', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '200')
INSERT INTO Notificacao VALUES ('272', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '201')
INSERT INTO Notificacao VALUES ('273', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '202')
INSERT INTO Notificacao VALUES ('274', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '203')
INSERT INTO Notificacao VALUES ('275', '11', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '189')
INSERT INTO Notificacao VALUES ('276', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '204')
INSERT INTO Notificacao VALUES ('277', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '205')
INSERT INTO Notificacao VALUES ('278', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '206')
INSERT INTO Notificacao VALUES ('279', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '207')
INSERT INTO Notificacao VALUES ('280', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '208')
INSERT INTO Notificacao VALUES ('281', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '209')
INSERT INTO Notificacao VALUES ('282', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '210')
INSERT INTO Notificacao VALUES ('283', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '211')
INSERT INTO Notificacao VALUES ('284', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '212')
INSERT INTO Notificacao VALUES ('285', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '213')
INSERT INTO Notificacao VALUES ('286', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '214')
INSERT INTO Notificacao VALUES ('287', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '215')
INSERT INTO Notificacao VALUES ('288', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '216')
INSERT INTO Notificacao VALUES ('289', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '217')
INSERT INTO Notificacao VALUES ('290', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '218')
INSERT INTO Notificacao VALUES ('291', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '219')
INSERT INTO Notificacao VALUES ('292', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '220')
INSERT INTO Notificacao VALUES ('293', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '221')
INSERT INTO Notificacao VALUES ('294', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '222')
INSERT INTO Notificacao VALUES ('295', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '223')
INSERT INTO Notificacao VALUES ('296', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '224')
INSERT INTO Notificacao VALUES ('297', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '225')
INSERT INTO Notificacao VALUES ('298', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '226')
INSERT INTO Notificacao VALUES ('299', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '227')
INSERT INTO Notificacao VALUES ('300', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '228')
INSERT INTO Notificacao VALUES ('301', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '229')
INSERT INTO Notificacao VALUES ('302', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '230')
INSERT INTO Notificacao VALUES ('303', '11', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '70')
INSERT INTO Notificacao VALUES ('304', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '231')
INSERT INTO Notificacao VALUES ('305', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '232')
INSERT INTO Notificacao VALUES ('306', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '233')
INSERT INTO Notificacao VALUES ('307', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '234')
INSERT INTO Notificacao VALUES ('308', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '235')
INSERT INTO Notificacao VALUES ('309', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '236')
INSERT INTO Notificacao VALUES ('310', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '237')
INSERT INTO Notificacao VALUES ('311', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '238')
INSERT INTO Notificacao VALUES ('312', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '239')
INSERT INTO Notificacao VALUES ('313', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '240')
INSERT INTO Notificacao VALUES ('314', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '241')
INSERT INTO Notificacao VALUES ('315', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '242')
INSERT INTO Notificacao VALUES ('316', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '243')
INSERT INTO Notificacao VALUES ('317', '11', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '69')
INSERT INTO Notificacao VALUES ('318', '11', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '69')
INSERT INTO Notificacao VALUES ('319', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '244')
INSERT INTO Notificacao VALUES ('320', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '245')
INSERT INTO Notificacao VALUES ('321', '20', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '246')
INSERT INTO Notificacao VALUES ('322', '20', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '247')
INSERT INTO Notificacao VALUES ('323', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '248')
INSERT INTO Notificacao VALUES ('324', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '249')
INSERT INTO Notificacao VALUES ('325', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '250')
INSERT INTO Notificacao VALUES ('326', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '251')
INSERT INTO Notificacao VALUES ('327', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '252')
INSERT INTO Notificacao VALUES ('328', '20', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '189')
INSERT INTO Notificacao VALUES ('329', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '253')
INSERT INTO Notificacao VALUES ('330', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '254')
INSERT INTO Notificacao VALUES ('331', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '255')
INSERT INTO Notificacao VALUES ('332', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '256')
INSERT INTO Notificacao VALUES ('333', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '257')
INSERT INTO Notificacao VALUES ('334', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '258')
INSERT INTO Notificacao VALUES ('335', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '259')
INSERT INTO Notificacao VALUES ('336', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '260')
INSERT INTO Notificacao VALUES ('337', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '261')
INSERT INTO Notificacao VALUES ('338', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '262')
INSERT INTO Notificacao VALUES ('339', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '263')
INSERT INTO Notificacao VALUES ('340', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '264')
INSERT INTO Notificacao VALUES ('341', '11', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '71')
INSERT INTO Notificacao VALUES ('342', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '265')
INSERT INTO Notificacao VALUES ('343', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '266')
INSERT INTO Notificacao VALUES ('344', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '267')
INSERT INTO Notificacao VALUES ('345', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '268')
INSERT INTO Notificacao VALUES ('346', '3', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '268')
INSERT INTO Notificacao VALUES ('347', '29', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '221')
INSERT INTO Notificacao VALUES ('348', '3', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '269')
INSERT INTO Notificacao VALUES ('349', '3', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '270')
INSERT INTO Notificacao VALUES ('350', '29', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '222')
INSERT INTO Notificacao VALUES ('351', '2', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '52')
INSERT INTO Notificacao VALUES ('352', '20', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '271')
INSERT INTO Notificacao VALUES ('353', '13', 'Nova Ação Atualizada', 'Ação atualizada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '172')
INSERT INTO Notificacao VALUES ('354', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '272')
INSERT INTO Notificacao VALUES ('355', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '273')
INSERT INTO Notificacao VALUES ('356', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '274')
INSERT INTO Notificacao VALUES ('357', '20', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '275')
INSERT INTO Notificacao VALUES ('358', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '276')
INSERT INTO Notificacao VALUES ('359', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '276')
INSERT INTO Notificacao VALUES ('360', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '277')
INSERT INTO Notificacao VALUES ('361', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '278')
INSERT INTO Notificacao VALUES ('362', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '279')
INSERT INTO Notificacao VALUES ('363', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '280')
INSERT INTO Notificacao VALUES ('364', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '281')
INSERT INTO Notificacao VALUES ('365', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '282')
INSERT INTO Notificacao VALUES ('366', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '283')
INSERT INTO Notificacao VALUES ('367', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '284')
INSERT INTO Notificacao VALUES ('368', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '285')
INSERT INTO Notificacao VALUES ('369', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '286')
INSERT INTO Notificacao VALUES ('370', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '286')
INSERT INTO Notificacao VALUES ('371', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '285')
INSERT INTO Notificacao VALUES ('372', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '287')
INSERT INTO Notificacao VALUES ('373', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '288')
INSERT INTO Notificacao VALUES ('374', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '289')
INSERT INTO Notificacao VALUES ('375', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '290')
INSERT INTO Notificacao VALUES ('376', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '291')
INSERT INTO Notificacao VALUES ('377', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '292')
INSERT INTO Notificacao VALUES ('378', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '293')
INSERT INTO Notificacao VALUES ('379', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '294')
INSERT INTO Notificacao VALUES ('380', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '295')
INSERT INTO Notificacao VALUES ('381', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '296')
INSERT INTO Notificacao VALUES ('382', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '297')
INSERT INTO Notificacao VALUES ('383', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '289')
INSERT INTO Notificacao VALUES ('384', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '289')
INSERT INTO Notificacao VALUES ('385', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '298')
INSERT INTO Notificacao VALUES ('386', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '299')
INSERT INTO Notificacao VALUES ('387', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '300')
INSERT INTO Notificacao VALUES ('388', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '301')
INSERT INTO Notificacao VALUES ('389', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '301')
INSERT INTO Notificacao VALUES ('390', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '301')
INSERT INTO Notificacao VALUES ('391', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '302')
INSERT INTO Notificacao VALUES ('392', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '303')
INSERT INTO Notificacao VALUES ('393', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '304')
INSERT INTO Notificacao VALUES ('394', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '305')
INSERT INTO Notificacao VALUES ('395', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '306')
INSERT INTO Notificacao VALUES ('396', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '307')
INSERT INTO Notificacao VALUES ('397', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '298')
INSERT INTO Notificacao VALUES ('398', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '299')
INSERT INTO Notificacao VALUES ('399', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '300')
INSERT INTO Notificacao VALUES ('400', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '301')
INSERT INTO Notificacao VALUES ('401', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '308')
INSERT INTO Notificacao VALUES ('402', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '309')
INSERT INTO Notificacao VALUES ('403', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '310')
INSERT INTO Notificacao VALUES ('404', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '311')
INSERT INTO Notificacao VALUES ('405', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '312')
INSERT INTO Notificacao VALUES ('406', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '313')
INSERT INTO Notificacao VALUES ('407', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '314')
INSERT INTO Notificacao VALUES ('408', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '315')
INSERT INTO Notificacao VALUES ('409', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '316')
INSERT INTO Notificacao VALUES ('410', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '317')
INSERT INTO Notificacao VALUES ('411', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '318')
INSERT INTO Notificacao VALUES ('412', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '319')
INSERT INTO Notificacao VALUES ('413', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '320')
INSERT INTO Notificacao VALUES ('414', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '321')
INSERT INTO Notificacao VALUES ('415', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '322')
INSERT INTO Notificacao VALUES ('416', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '323')
INSERT INTO Notificacao VALUES ('417', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '324')
INSERT INTO Notificacao VALUES ('418', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '325')
INSERT INTO Notificacao VALUES ('419', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '326')
INSERT INTO Notificacao VALUES ('420', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '327')
INSERT INTO Notificacao VALUES ('421', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '328')
INSERT INTO Notificacao VALUES ('422', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '329')
INSERT INTO Notificacao VALUES ('423', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '330')
INSERT INTO Notificacao VALUES ('424', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '331')
INSERT INTO Notificacao VALUES ('425', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '289')
INSERT INTO Notificacao VALUES ('426', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '332')
INSERT INTO Notificacao VALUES ('427', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '333')
INSERT INTO Notificacao VALUES ('428', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '334')
INSERT INTO Notificacao VALUES ('429', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '335')
INSERT INTO Notificacao VALUES ('430', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '336')
INSERT INTO Notificacao VALUES ('431', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '280')
INSERT INTO Notificacao VALUES ('432', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '281')
INSERT INTO Notificacao VALUES ('433', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '282')
INSERT INTO Notificacao VALUES ('434', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '283')
INSERT INTO Notificacao VALUES ('435', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '337')
INSERT INTO Notificacao VALUES ('436', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '338')
INSERT INTO Notificacao VALUES ('437', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '339')
INSERT INTO Notificacao VALUES ('438', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '340')
INSERT INTO Notificacao VALUES ('439', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '341')
INSERT INTO Notificacao VALUES ('440', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '342')
INSERT INTO Notificacao VALUES ('441', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '343')
INSERT INTO Notificacao VALUES ('442', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '344')
INSERT INTO Notificacao VALUES ('443', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '345')
INSERT INTO Notificacao VALUES ('444', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '346')
INSERT INTO Notificacao VALUES ('445', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '347')
INSERT INTO Notificacao VALUES ('446', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '348')
INSERT INTO Notificacao VALUES ('447', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '349')
INSERT INTO Notificacao VALUES ('448', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '350')
INSERT INTO Notificacao VALUES ('449', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '351')
INSERT INTO Notificacao VALUES ('450', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '352')
INSERT INTO Notificacao VALUES ('451', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '353')
INSERT INTO Notificacao VALUES ('452', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '354')
INSERT INTO Notificacao VALUES ('453', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '355')
INSERT INTO Notificacao VALUES ('454', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '356')
INSERT INTO Notificacao VALUES ('455', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '357')
INSERT INTO Notificacao VALUES ('456', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '358')
INSERT INTO Notificacao VALUES ('457', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '359')
INSERT INTO Notificacao VALUES ('458', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '360')
INSERT INTO Notificacao VALUES ('459', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '361')
INSERT INTO Notificacao VALUES ('460', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '362')
INSERT INTO Notificacao VALUES ('461', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '363')
INSERT INTO Notificacao VALUES ('462', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '364')
INSERT INTO Notificacao VALUES ('463', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '365')
INSERT INTO Notificacao VALUES ('464', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '366')
INSERT INTO Notificacao VALUES ('465', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '367')
INSERT INTO Notificacao VALUES ('466', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '368')
INSERT INTO Notificacao VALUES ('467', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '369')
INSERT INTO Notificacao VALUES ('468', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '370')
INSERT INTO Notificacao VALUES ('469', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '371')
INSERT INTO Notificacao VALUES ('470', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '372')
INSERT INTO Notificacao VALUES ('471', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '373')
INSERT INTO Notificacao VALUES ('472', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '374')
INSERT INTO Notificacao VALUES ('473', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '375')
INSERT INTO Notificacao VALUES ('474', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '376')
INSERT INTO Notificacao VALUES ('475', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '377')
INSERT INTO Notificacao VALUES ('476', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '230')
INSERT INTO Notificacao VALUES ('477', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '70')
INSERT INTO Notificacao VALUES ('478', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '229')
INSERT INTO Notificacao VALUES ('479', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '230')
INSERT INTO Notificacao VALUES ('480', '20', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '378')
INSERT INTO Notificacao VALUES ('481', '20', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 20
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '378')
INSERT INTO Notificacao VALUES ('482', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '191')
INSERT INTO Notificacao VALUES ('483', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '192')
INSERT INTO Notificacao VALUES ('484', '30', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '379')
INSERT INTO Notificacao VALUES ('485', '30', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 30
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '379')
INSERT INTO Notificacao VALUES ('486', '3', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '380')
INSERT INTO Notificacao VALUES ('487', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '381')
INSERT INTO Notificacao VALUES ('488', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '382')
INSERT INTO Notificacao VALUES ('489', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '383')
INSERT INTO Notificacao VALUES ('490', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '384')
INSERT INTO Notificacao VALUES ('491', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '385')
INSERT INTO Notificacao VALUES ('492', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '386')
INSERT INTO Notificacao VALUES ('493', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '387')
INSERT INTO Notificacao VALUES ('494', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '388')
INSERT INTO Notificacao VALUES ('495', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '389')
INSERT INTO Notificacao VALUES ('496', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '390')
INSERT INTO Notificacao VALUES ('497', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '391')
INSERT INTO Notificacao VALUES ('498', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '392')
INSERT INTO Notificacao VALUES ('499', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '393')
INSERT INTO Notificacao VALUES ('500', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '394')
INSERT INTO Notificacao VALUES ('501', '16', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '395')
INSERT INTO Notificacao VALUES ('502', '20', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 20
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '378')
INSERT INTO Notificacao VALUES ('503', '13', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 13
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '172')
INSERT INTO Notificacao VALUES ('504', '29', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 29
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '222')
INSERT INTO Notificacao VALUES ('505', '2', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 2
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '88')
INSERT INTO Notificacao VALUES ('506', '2', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 2
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '92')
INSERT INTO Notificacao VALUES ('507', '3', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '396')
INSERT INTO Notificacao VALUES ('508', '3', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '397')
INSERT INTO Notificacao VALUES ('509', '2', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 2
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '93')
INSERT INTO Notificacao VALUES ('510', '3', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '398')
INSERT INTO Notificacao VALUES ('511', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '399')
INSERT INTO Notificacao VALUES ('512', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '400')
INSERT INTO Notificacao VALUES ('513', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '401')
INSERT INTO Notificacao VALUES ('514', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '402')
INSERT INTO Notificacao VALUES ('515', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '69')
INSERT INTO Notificacao VALUES ('516', '33', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '403')
INSERT INTO Notificacao VALUES ('517', '33', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 33
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '403')
INSERT INTO Notificacao VALUES ('518', '33', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 33
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '403')
INSERT INTO Notificacao VALUES ('519', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '399')
INSERT INTO Notificacao VALUES ('520', '29', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 29
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '221')
INSERT INTO Notificacao VALUES ('521', '29', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 29
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '222')
INSERT INTO Notificacao VALUES ('522', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '223')
INSERT INTO Notificacao VALUES ('523', '12', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '404')
INSERT INTO Notificacao VALUES ('524', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '236')
INSERT INTO Notificacao VALUES ('525', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '239')
INSERT INTO Notificacao VALUES ('526', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '239')
INSERT INTO Notificacao VALUES ('527', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '241')
INSERT INTO Notificacao VALUES ('528', '31', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '405')
INSERT INTO Notificacao VALUES ('529', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '177')
INSERT INTO Notificacao VALUES ('530', '67', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '406')
INSERT INTO Notificacao VALUES ('531', '67', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '407')
INSERT INTO Notificacao VALUES ('532', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '173')
INSERT INTO Notificacao VALUES ('533', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '74')
INSERT INTO Notificacao VALUES ('534', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '74')
INSERT INTO Notificacao VALUES ('535', '31', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 31
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '405')
INSERT INTO Notificacao VALUES ('536', '22', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '408')
INSERT INTO Notificacao VALUES ('537', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '74')
INSERT INTO Notificacao VALUES ('538', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '74')
INSERT INTO Notificacao VALUES ('539', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '74')
INSERT INTO Notificacao VALUES ('540', '22', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 22
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '408')
INSERT INTO Notificacao VALUES ('541', '67', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 67
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '406')
INSERT INTO Notificacao VALUES ('542', '33', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 33
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '403')
INSERT INTO Notificacao VALUES ('543', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '205')
INSERT INTO Notificacao VALUES ('544', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '206')
INSERT INTO Notificacao VALUES ('545', '28', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '409')
INSERT INTO Notificacao VALUES ('546', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '208')
INSERT INTO Notificacao VALUES ('547', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '210')
INSERT INTO Notificacao VALUES ('548', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '206')
INSERT INTO Notificacao VALUES ('549', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '209')
INSERT INTO Notificacao VALUES ('550', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '212')
INSERT INTO Notificacao VALUES ('551', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '212')
INSERT INTO Notificacao VALUES ('552', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '214')
INSERT INTO Notificacao VALUES ('553', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '215')
INSERT INTO Notificacao VALUES ('554', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '216')
INSERT INTO Notificacao VALUES ('555', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '217')
INSERT INTO Notificacao VALUES ('556', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '218')
INSERT INTO Notificacao VALUES ('557', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '258')
INSERT INTO Notificacao VALUES ('558', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '257')
INSERT INTO Notificacao VALUES ('559', '57', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '410')
INSERT INTO Notificacao VALUES ('560', '57', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '411')
INSERT INTO Notificacao VALUES ('561', '57', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '412')
INSERT INTO Notificacao VALUES ('562', '57', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '413')
INSERT INTO Notificacao VALUES ('563', '57', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '414')
INSERT INTO Notificacao VALUES ('564', '2', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 2
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '34')
INSERT INTO Notificacao VALUES ('565', '2', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 2
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '33')
INSERT INTO Notificacao VALUES ('566', '2', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 2
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '51')
INSERT INTO Notificacao VALUES ('567', '57', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '415')
INSERT INTO Notificacao VALUES ('568', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '364')
INSERT INTO Notificacao VALUES ('569', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '381')
INSERT INTO Notificacao VALUES ('570', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '382')
INSERT INTO Notificacao VALUES ('571', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '383')
INSERT INTO Notificacao VALUES ('572', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '364')
INSERT INTO Notificacao VALUES ('573', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '365')
INSERT INTO Notificacao VALUES ('574', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '366')
INSERT INTO Notificacao VALUES ('575', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '367')
INSERT INTO Notificacao VALUES ('576', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '368')
INSERT INTO Notificacao VALUES ('577', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '369')
INSERT INTO Notificacao VALUES ('578', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '370')
INSERT INTO Notificacao VALUES ('579', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '371')
INSERT INTO Notificacao VALUES ('580', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '372')
INSERT INTO Notificacao VALUES ('581', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '370')
INSERT INTO Notificacao VALUES ('582', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '373')
INSERT INTO Notificacao VALUES ('583', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '374')
INSERT INTO Notificacao VALUES ('584', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '368')
INSERT INTO Notificacao VALUES ('585', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '377')
INSERT INTO Notificacao VALUES ('586', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '174')
INSERT INTO Notificacao VALUES ('587', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '175')
INSERT INTO Notificacao VALUES ('588', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '176')
INSERT INTO Notificacao VALUES ('589', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '177')
INSERT INTO Notificacao VALUES ('590', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '179')
INSERT INTO Notificacao VALUES ('591', '67', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 67
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '407')
INSERT INTO Notificacao VALUES ('592', '66', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '416')
INSERT INTO Notificacao VALUES ('593', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '196')
INSERT INTO Notificacao VALUES ('594', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '400')
INSERT INTO Notificacao VALUES ('595', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '400')
INSERT INTO Notificacao VALUES ('596', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '196')
INSERT INTO Notificacao VALUES ('597', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '204')
INSERT INTO Notificacao VALUES ('598', '28', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '417')
INSERT INTO Notificacao VALUES ('599', '66', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '418')
INSERT INTO Notificacao VALUES ('600', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '192')
INSERT INTO Notificacao VALUES ('601', '66', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 66
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '418')
INSERT INTO Notificacao VALUES ('602', '28', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '419')
INSERT INTO Notificacao VALUES ('603', '28', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '420')
INSERT INTO Notificacao VALUES ('604', '28', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '421')
INSERT INTO Notificacao VALUES ('605', '28', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '422')
INSERT INTO Notificacao VALUES ('606', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '68')
INSERT INTO Notificacao VALUES ('607', '50', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '423')
INSERT INTO Notificacao VALUES ('608', '13', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '424')
INSERT INTO Notificacao VALUES ('609', '12', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '425')
INSERT INTO Notificacao VALUES ('610', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '309')
INSERT INTO Notificacao VALUES ('611', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '310')
INSERT INTO Notificacao VALUES ('612', '75', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '426')
INSERT INTO Notificacao VALUES ('613', '75', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '427')
INSERT INTO Notificacao VALUES ('614', '75', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '428')
INSERT INTO Notificacao VALUES ('615', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '384')
INSERT INTO Notificacao VALUES ('616', '2', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '429')
INSERT INTO Notificacao VALUES ('617', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '225')
INSERT INTO Notificacao VALUES ('618', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '226')
INSERT INTO Notificacao VALUES ('619', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '228')
INSERT INTO Notificacao VALUES ('620', '29', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '430')
INSERT INTO Notificacao VALUES ('621', '29', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 29
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '430')
INSERT INTO Notificacao VALUES ('622', '73', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '431')
INSERT INTO Notificacao VALUES ('623', '73', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '432')
INSERT INTO Notificacao VALUES ('624', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '367')
INSERT INTO Notificacao VALUES ('625', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '366')
INSERT INTO Notificacao VALUES ('626', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '369')
INSERT INTO Notificacao VALUES ('627', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '370')
INSERT INTO Notificacao VALUES ('628', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '372')
INSERT INTO Notificacao VALUES ('629', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '372')
INSERT INTO Notificacao VALUES ('630', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '373')
INSERT INTO Notificacao VALUES ('631', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '377')
INSERT INTO Notificacao VALUES ('632', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '369')
INSERT INTO Notificacao VALUES ('633', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '385')
INSERT INTO Notificacao VALUES ('634', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '386')
INSERT INTO Notificacao VALUES ('635', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '387')
INSERT INTO Notificacao VALUES ('636', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '388')
INSERT INTO Notificacao VALUES ('637', '28', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '433')
INSERT INTO Notificacao VALUES ('638', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '204')
INSERT INTO Notificacao VALUES ('639', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '219')
INSERT INTO Notificacao VALUES ('640', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '220')
INSERT INTO Notificacao VALUES ('641', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '118')
INSERT INTO Notificacao VALUES ('642', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '434')
INSERT INTO Notificacao VALUES ('643', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '434')
INSERT INTO Notificacao VALUES ('644', '11', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '435')
INSERT INTO Notificacao VALUES ('645', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '435')
INSERT INTO Notificacao VALUES ('646', '29', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 29
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '222')
INSERT INTO Notificacao VALUES ('647', '29', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '436')
INSERT INTO Notificacao VALUES ('648', '2', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 2
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '38')
INSERT INTO Notificacao VALUES ('649', '29', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '437')
INSERT INTO Notificacao VALUES ('650', '29', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 29
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '437')
INSERT INTO Notificacao VALUES ('651', '67', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '438')
INSERT INTO Notificacao VALUES ('652', '67', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '439')
INSERT INTO Notificacao VALUES ('653', '67', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '440')
INSERT INTO Notificacao VALUES ('654', '44', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '441')
INSERT INTO Notificacao VALUES ('655', '44', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 44
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '441')
INSERT INTO Notificacao VALUES ('656', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '399')
INSERT INTO Notificacao VALUES ('657', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '236')
INSERT INTO Notificacao VALUES ('658', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '236')
INSERT INTO Notificacao VALUES ('659', '32', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '442')
INSERT INTO Notificacao VALUES ('660', '32', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '443')
INSERT INTO Notificacao VALUES ('661', '32', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '444')
INSERT INTO Notificacao VALUES ('662', '32', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 32
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '444')
INSERT INTO Notificacao VALUES ('663', '32', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 32
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '444')
INSERT INTO Notificacao VALUES ('664', '32', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 32
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '444')
INSERT INTO Notificacao VALUES ('665', '32', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 32
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '444')
INSERT INTO Notificacao VALUES ('666', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '360')
INSERT INTO Notificacao VALUES ('667', '22', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '445')
INSERT INTO Notificacao VALUES ('668', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '64')
INSERT INTO Notificacao VALUES ('669', '22', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '446')
INSERT INTO Notificacao VALUES ('670', '22', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 22
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '445')
INSERT INTO Notificacao VALUES ('671', '22', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 22
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '445')
INSERT INTO Notificacao VALUES ('672', '22', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 22
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '445')
INSERT INTO Notificacao VALUES ('673', '66', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '447')
INSERT INTO Notificacao VALUES ('674', '66', 'Nova Ação Cadastrada', 'Ação cadastrada no sistema no seu plano de ação esperando sua aprovação
Favor verificar no site.
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '448')
INSERT INTO Notificacao VALUES ('675', '66', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 66
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '448')
INSERT INTO Notificacao VALUES ('676', '66', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 66
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '448')
INSERT INTO Notificacao VALUES ('677', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '434')
INSERT INTO Notificacao VALUES ('678', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '435')
INSERT INTO Notificacao VALUES ('679', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '182')
INSERT INTO Notificacao VALUES ('680', '11', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 11
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '191')
INSERT INTO Notificacao VALUES ('681', '30', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 30
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '379')
INSERT INTO Notificacao VALUES ('682', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '329')
INSERT INTO Notificacao VALUES ('683', '16', 'Nova Ação Atualizada', '
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        
Ação de : 16
                        
Favor verificar no site.
                        
 http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao', '1', '329')


-- Criando tabela: PDI
CREATE TABLE `PDI` (
  `idPDI` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) NOT NULL,
  `objetivoMeta` text,
  PRIMARY KEY (`idPDI`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `PDI_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `Usuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8

-- Salva os dados
INSERT INTO PDI VALUES ('1', '3', '1. Atender as expectativas dos conselheiros do CCGC;
2. Dar solidez para o projeto CCGC;
3. Implantar estratégia de crescimento do Consórcio;
4. Implantar os instrumentos de gestão do CCGC: Planejamento Estratégicio, Plano de Ação, ID e PDI ')
INSERT INTO PDI VALUES ('2', '9', '')
INSERT INTO PDI VALUES ('3', '2', '')
INSERT INTO PDI VALUES ('4', '11', '')
INSERT INTO PDI VALUES ('5', '6', '')
INSERT INTO PDI VALUES ('6', '57', '')
INSERT INTO PDI VALUES ('7', '79', '')
INSERT INTO PDI VALUES ('8', '16', '')
INSERT INTO PDI VALUES ('9', '44', '')
INSERT INTO PDI VALUES ('10', '22', '')
INSERT INTO PDI VALUES ('11', '28', '')
INSERT INTO PDI VALUES ('12', '43', '')
INSERT INTO PDI VALUES ('13', '63', '')
INSERT INTO PDI VALUES ('14', '74', '')
INSERT INTO PDI VALUES ('15', '47', '')
INSERT INTO PDI VALUES ('16', '76', '')
INSERT INTO PDI VALUES ('17', '29', '')
INSERT INTO PDI VALUES ('18', '32', '')


-- Criando tabela: PlanejamentoEstrategico
CREATE TABLE `PlanejamentoEstrategico` (
  `idPlan` int(11) NOT NULL AUTO_INCREMENT,
  `idEmpresa` int(11) NOT NULL,
  `consideracoesIniciais` text NOT NULL,
  `consideracoesFinais` text NOT NULL,
  PRIMARY KEY (`idPlan`),
  KEY `idEmpresa` (`idEmpresa`),
  CONSTRAINT `PlanejamentoEstrategico_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `Empresa` (`idEmpresa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8

-- Salva os dados
INSERT INTO PlanejamentoEstrategico VALUES ('1', '2', 'Este instrumento de gestão envolve empreendimentos do CCGC – Consórcio Cooperativo Grupo Cemil e abrangerá os próximos cinco anos. A avaliação do Planejamento Estratégico acontecerá em dois momentos: 1º) avaliação semestral (junho e dezembro) – analisar, inserir e readequar ações operacionais (Plano de Ação) e 2º) avaliação anual (dezembro) – além da avaliação semestral, nesta oportunidade serão propostas adequações às estratégias existentes ou sugeridas outras estratégias que serão executadas nos próximos anos. O ciclo semestral de avaliação do Planejamento Estratégico se torna mais apropriado à atual realidade do consórcio, pois além do empreendimento ser recente, o ambiente de negócio que o CCGC está inserido é caracterizado por constantes mudanças. Assim, ciclos curtos de avaliação se tornam preventivos para cenários imprevisíveis e dinâmicos. As avaliações serão realizadas pela Diretoria Executiva do CCGC e compartilhadas com os membros do Conselho de Administração.', 'Esta versão do Planejamento Estratégico do CCGC é a primeira de várias que virão. Trata-se de um esboço que ainda demandará contribuições de vários profissionais, desde Presidentes, Diretores e Gestores de áreas operacionais das consorciadas. A expectativa que a presente ferramenta tenha evolução à medida que os ciclos de reflexão e avaliação sejam concluídos. Espera-se que a linha traçada seja um fio condutor para direcionar esforços coletivos das consorciadas que compoem este empreendimento. Evidentemente novas oportunidades surgirão e perceberemos que muitas estratégias poderiam ser contempladas neste instrumento. Registra-se também a necessidade de procedermos com a cautela devida para não frustrarmos com iniciativas que porventura não se
concretizarem. Praticar o raciocinio estratégico nos dá condição de antecipar situações e fatos e garantir a liderança de vários processos gerenciais do grupo.')
INSERT INTO PlanejamentoEstrategico VALUES ('2', '3', 'Este instrumento de gestão envolve o empreendimento Siderúrgica Terra Ltda e abrangerá os próximos dois anos, com possibilidade de contar com investimentos de médio e longo prazo. A avaliação do Planejamento Estratégico acontecerá em dois momentos: 1º) avaliação semestral (junho e dezembro) – visa analisar, inserir e readequar ações operacionais (Plano de Ação) e 2º) avaliação anual (dezembro) – além da avaliação semestral, nesta oportunidade serão propostas adequações às estratégias existentes ou sugeridas outras estratégias que serão executadas nos próximos anos. O ciclo semestral de avaliação do Planejamento Estratégico se torna mais apropriado à atual realidade da empresa, pois além do empreendimento ser recente, o ambiente de negócio atual é caracterizado por constantes mudanças e incertezas. Assim, ciclos curtos de avaliação se tornam preventivos para cenários imprevisíveis e dinâmicos. As avaliações serão realizadas pela Diretoria da Siderúrgica Terra e contará com a participação de gestores técnicos de áreas estratégicas da empresa e/ou outros profissionais de empresas vinculadas ao grupo empresarial MM. Caso seja necessário contar-se-á com a presença de especialistas do setor.', 'Esta versão do Planejamento Estratégico da Siderúrgica Terra Ltda é a segunda versão de várias que virão. Trata-se de um esboço que ainda demandará contribuições de vários profissionais, desde Acionistas, Diretores e Gestores de áreas operacionais da empresa. A expectativa que a presente ferramenta tenha evolução à medida que os ciclos de reflexão e avaliação sejam realizados. Espera-se que a linha traçada seja um fio condutor para direcionar esforços coletivos dos diferentes agentes organizacionais. A dinâmica do ambiente externo, aliada à evolução e amadurecimento da gestão nos conduzirão à novas estratégias e, assim, o ciclo se tornará virtuoso, principalmente no que se refere a interação entre os diferentes níveis hierárquicos. Praticar o raciocínio estratégico nos dá condição de antecipar situações e fatos e garantir a liderança de vários processos gerenciais do grupo.')
INSERT INTO PlanejamentoEstrategico VALUES ('3', '4', 'Este instrumento de gestão envolve o empreendimento Siderúrgica Siderpam Ltda e abrangerá os próximos dois anos, com possibilidade de contar com investimentos de médio e longo prazo. A avaliação do Planejamento Estratégico acontecerá em dois momentos: 1º) avaliação semestral (junho e dezembro) – visa analisar, inserir e readequar ações operacionais (Plano de Ação) e 2º) avaliação anual (dezembro) – além da avaliação semestral, nesta oportunidade serão propostas adequações às estratégias existentes ou sugeridas outras estratégias que serão executadas nos próximos anos. O ciclo semestral de avaliação do Planejamento Estratégico se torna mais
apropriado à atual realidade da empresa, pois além do empreendimento ser recente, o ambiente de negócio atual é caracterizado por constantes mudanças e incertezas. Assim, ciclos curtos de avaliação se tornam preventivos para cenários imprevisíveis e dinâmicos. As avaliações serão realizadas pela Diretoria da Siderúrgica Siderpam e contará com a participação de gestores técnicos de áreas estratégicas da empresa e/ou outros profissionais de empresas vinculadas ao grupo empresarial MM. Caso seja necessário contar-se-á com a presença de  especialistas do setor.', 'Esta versão do Planejamento Estratégico da Siderpam é a primeira versão de várias
que virão. ')
INSERT INTO PlanejamentoEstrategico VALUES ('4', '5', 'Planejamento Estratégico é uma ferramenta gerencial utilizada pelas empresas como mecanismo de adequação ao ambiente onde se encontra de forma a otimizar seus resultados (Oliveira, 1998). Peter e Certo (2005) corrobora com esta definição ao afirmarem que a Administração Estratégica é um processo contínuo, dinâmico e integrado entre empresa e seu ambiente. Assim, tais pressupostos convergem para a afirmação de Lorange e Vancíl (1976) quando afirmam que não existe um sistema universal de planejamento, porque as empresas diferem em tamanho, diversidade de operações, organização, filosofia e estilo gerencial. Desta forma, não se pretende esgotar as possibilidades deste tema e nem apresentar uma “receita” para a formulação e implantação do Planejamento Estratégico. O intuito é instigar a reflexão sobre o assunto e sugerir uma metodologia que, certamente, estará presente total ou parcialmente na maioria dos instrumentos elaborados pelas empresas brasileiras.', 'Planejamento Estratégico é uma ferramenta gerencial utilizada pelas empresas como mecanismo de adequação ao ambiente onde se encontra de forma a otimizar seus resultados (Oliveira, 1998). Peter e Certo (2005) corrobora com esta definição ao afirmarem que a Administração Estratégica é um processo contínuo, dinâmico e integrado entre empresa e seu ambiente. Assim, tais pressupostos convergem para a afirmação de Lorange e Vancíl (1976) quando afirmam que não existe um sistema universal de planejamento, porque as empresas diferem em tamanho, diversidade de operações, organização, filosofia e estilo gerencial. Desta forma, não se pretende esgotar as possibilidades deste tema e nem apresentar uma “receita” para a formulação e implantação do Planejamento Estratégico. O intuito é instigar a reflexão sobre o assunto e sugerir uma metodologia que, certamente, estará presente total ou parcialmente na maioria dos instrumentos elaborados pelas empresas brasileiras.')
INSERT INTO PlanejamentoEstrategico VALUES ('5', '6', '', '')


-- Criando tabela: PlanoAcao
CREATE TABLE `PlanoAcao` (
  `idPlanoAcao` int(11) NOT NULL AUTO_INCREMENT,
  `idDep` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `periodo` varchar(100) NOT NULL,
  `observacao` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `ultimaAlteracao` datetime DEFAULT NULL,
  PRIMARY KEY (`idPlanoAcao`),
  KEY `idDep` (`idDep`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `planoacao_ibfk_1` FOREIGN KEY (`idDep`) REFERENCES `Departamento` (`idDep`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `planoacao_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `Usuario` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8

-- Salva os dados
INSERT INTO PlanoAcao VALUES ('13', '32', '33', '2015 - 1', '', '1', '2015-05-01 00:00:00')
INSERT INTO PlanoAcao VALUES ('14', '30', '31', '2015 - 1', '', '1', '2015-04-20 00:00:00')
INSERT INTO PlanoAcao VALUES ('15', '21', '22', '2015 - 1', '', '1', '2015-05-25 00:00:00')
INSERT INTO PlanoAcao VALUES ('16', '18', '19', '2015 - 1', '', '1', '2015-03-21 00:00:00')
INSERT INTO PlanoAcao VALUES ('17', '22', '66', '2015 - 1', '', '1', '2015-05-25 00:00:00')
INSERT INTO PlanoAcao VALUES ('18', '35', '36', '2015 - 1', '', '1', '2015-04-06 00:00:00')
INSERT INTO PlanoAcao VALUES ('19', '34', '35', '2015 - 1', '', '1', '2015-04-06 00:00:00')
INSERT INTO PlanoAcao VALUES ('20', '33', '34', '2015 - 1', '', '1', '2015-04-06 00:00:00')
INSERT INTO PlanoAcao VALUES ('21', '31', '32', '2015 - 1', '', '1', '2015-05-25 00:00:00')
INSERT INTO PlanoAcao VALUES ('23', '29', '30', '2015 - 1', '', '1', '2015-04-14 00:00:00')
INSERT INTO PlanoAcao VALUES ('24', '28', '29', '2015 - 1', '', '1', '2015-05-21 00:00:00')
INSERT INTO PlanoAcao VALUES ('25', '27', '28', '2015 - 1', '', '1', '2015-05-21 00:00:00')
INSERT INTO PlanoAcao VALUES ('26', '26', '27', '2015 - 1', '', '1', '2015-04-05 00:00:00')
INSERT INTO PlanoAcao VALUES ('27', '20', '67', '2015 - 1', '', '1', '2015-05-21 00:00:00')
INSERT INTO PlanoAcao VALUES ('28', '24', '25', '2015 - 1', '', '1', '2015-04-04 00:00:00')
INSERT INTO PlanoAcao VALUES ('29', '23', '24', '2015 - 1', '', '1', '2015-04-09 00:00:00')
INSERT INTO PlanoAcao VALUES ('30', '25', '26', '2015 - 1', '', '1', '2015-04-04 00:00:00')
INSERT INTO PlanoAcao VALUES ('32', '13', '13', '2015 - 1', '', '1', '2015-03-21 00:00:00')
INSERT INTO PlanoAcao VALUES ('33', '14', '14', '2015 - 1', '', '1', '2015-03-21 00:00:00')
INSERT INTO PlanoAcao VALUES ('34', '12', '12', '2015 - 1', '', '1', '2015-04-20 00:00:00')
INSERT INTO PlanoAcao VALUES ('36', '64', '70', '2015 - 1', '', '1', '2015-03-21 00:00:00')
INSERT INTO PlanoAcao VALUES ('54', '69', '71', '2015 - 1', '', '1', '2015-04-01 00:00:00')
INSERT INTO PlanoAcao VALUES ('55', '69', '72', '2015 - 1', '', '1', '2015-03-19 17:06:47')
INSERT INTO PlanoAcao VALUES ('56', '70', '72', '2015 - 1', '', '1', '2015-03-19 17:17:14')
INSERT INTO PlanoAcao VALUES ('61', '3', '2', '2015 - 1', '', '1', '2015-05-30 22:08:03')
INSERT INTO PlanoAcao VALUES ('65', '66', '64', '2015 - 1', '', '1', '2015-03-21 05:56:43')
INSERT INTO PlanoAcao VALUES ('66', '4', '37', '2015 - 1', '', '1', '2015-04-17 00:00:00')
INSERT INTO PlanoAcao VALUES ('67', '5', '9', '2015 - 1', '', '1', '2015-04-07 00:00:00')
INSERT INTO PlanoAcao VALUES ('68', '9', '7', '2015 - 1', '', '1', '2015-03-27 00:00:00')
INSERT INTO PlanoAcao VALUES ('69', '6', '6', '2015 - 1', '', '1', '2015-03-21 07:03:36')
INSERT INTO PlanoAcao VALUES ('70', '63', '8', '2015 - 1', '', '1', '2015-04-17 00:00:00')
INSERT INTO PlanoAcao VALUES ('72', '36', '63', '2015 - 1', '', '1', '2015-03-24 00:00:00')
INSERT INTO PlanoAcao VALUES ('73', '37', '40', '2015 - 1', '', '1', '2015-03-25 14:01:03')
INSERT INTO PlanoAcao VALUES ('74', '38', '41', '2015 - 1', '', '1', '2015-03-25 14:01:22')
INSERT INTO PlanoAcao VALUES ('75', '50', '69', '2015 - 1', '', '1', '2015-04-09 00:00:00')
INSERT INTO PlanoAcao VALUES ('76', '51', '52', '2015 - 1', '', '1', '2015-04-09 00:00:00')
INSERT INTO PlanoAcao VALUES ('79', '19', '20', '2015 - 1', '', '1', '2015-04-14 00:00:00')
INSERT INTO PlanoAcao VALUES ('80', '53', '56', '2015 - 1', '', '1', '2015-04-09 00:00:00')
INSERT INTO PlanoAcao VALUES ('81', '54', '50', '2015 - 1', '', '1', '2015-04-29 00:00:00')
INSERT INTO PlanoAcao VALUES ('82', '57', '54', '2015 - 1', '', '1', '2015-04-09 00:00:00')
INSERT INTO PlanoAcao VALUES ('84', '49', '47', '2015 - 1', '', '1', '2015-04-11 00:00:00')
INSERT INTO PlanoAcao VALUES ('85', '48', '60', '2015 - 1', '', '1', '2015-04-11 00:00:00')
INSERT INTO PlanoAcao VALUES ('86', '47', '51', '2015 - 1', '', '1', '2015-04-11 00:00:00')
INSERT INTO PlanoAcao VALUES ('87', '39', '53', '2015 - 1', '', '1', '2015-04-11 00:00:00')
INSERT INTO PlanoAcao VALUES ('88', '40', '42', '2015 - 1', '', '1', '2015-04-12 00:00:00')
INSERT INTO PlanoAcao VALUES ('89', '41', '43', '2015 - 1', '', '1', '2015-04-12 00:00:00')
INSERT INTO PlanoAcao VALUES ('91', '42', '44', '2015 - 1', '', '1', '2015-05-22 00:00:00')
INSERT INTO PlanoAcao VALUES ('92', '43', '45', '2015 - 1', '', '1', '2015-04-12 00:00:00')
INSERT INTO PlanoAcao VALUES ('93', '46', '49', '2015 - 1', '', '1', '2015-04-11 00:00:00')
INSERT INTO PlanoAcao VALUES ('94', '52', '68', '2015 - 1', '', '1', '2015-04-11 00:00:00')
INSERT INTO PlanoAcao VALUES ('95', '58', '58', '2015 - 1', '', '1', '2015-04-11 00:00:00')
INSERT INTO PlanoAcao VALUES ('96', '59', '59', '2015 - 1', '', '1', '2015-04-11 00:00:00')
INSERT INTO PlanoAcao VALUES ('97', '45', '46', '2015 - 1', '', '1', '2015-04-11 00:00:00')
INSERT INTO PlanoAcao VALUES ('98', '56', '57', '2015 - 1', '', '1', '2015-04-26 00:00:00')
INSERT INTO PlanoAcao VALUES ('99', '55', '73', '2015 - 1', '', '1', '2015-05-12 00:00:00')
INSERT INTO PlanoAcao VALUES ('100', '60', '74', '2015 - 1', '', '1', '2015-04-14 00:00:00')
INSERT INTO PlanoAcao VALUES ('101', '44', '75', '2015 - 1', '', '1', '2015-05-06 00:00:00')


-- Criando tabela: Subtopico
CREATE TABLE `Subtopico` (
  `idSubtopico` int(11) NOT NULL AUTO_INCREMENT,
  `idTopico` int(11) NOT NULL,
  `nomeSubtopico` text NOT NULL,
  `nivel` int(11) NOT NULL,
  PRIMARY KEY (`idSubtopico`),
  KEY `idTopico` (`idTopico`),
  CONSTRAINT `Subtopico_ibfk_1` FOREIGN KEY (`idTopico`) REFERENCES `Topico` (`idTopico`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8

-- Salva os dados
INSERT INTO Subtopico VALUES ('2', '3', 'Ambiente Geral', '0')
INSERT INTO Subtopico VALUES ('3', '3', 'Ambiente Operacional', '0')
INSERT INTO Subtopico VALUES ('4', '3', 'Ambiente Interno', '0')
INSERT INTO Subtopico VALUES ('7', '4', 'Missão', '0')
INSERT INTO Subtopico VALUES ('8', '4', 'Visão', '0')
INSERT INTO Subtopico VALUES ('9', '4', 'Valores', '0')
INSERT INTO Subtopico VALUES ('10', '4', 'Objetivos', '0')
INSERT INTO Subtopico VALUES ('11', '5', 'Análise dos Fatores Externos', '0')
INSERT INTO Subtopico VALUES ('12', '5', 'Análise dos Fatores Internos', '0')
INSERT INTO Subtopico VALUES ('13', '5', 'Análise Estrutural de Forças Competitivas', '0')
INSERT INTO Subtopico VALUES ('14', '5', 'Formulação de Estratégias de Redução de Custos/ Despesas', '6')
INSERT INTO Subtopico VALUES ('15', '5', 'Formulação de Estratégias Macro - Grande Abrangência', '4')
INSERT INTO Subtopico VALUES ('16', '5', 'Formulação de Estratégias Alternativas - Estratégias Genéricas', '5')
INSERT INTO Subtopico VALUES ('17', '6', 'Ambiente Geral', '0')
INSERT INTO Subtopico VALUES ('18', '6', 'Ambiente Operacional', '0')
INSERT INTO Subtopico VALUES ('19', '6', 'Ambiente Interno', '0')
INSERT INTO Subtopico VALUES ('20', '6', 'Previsão Ambiental', '0')
INSERT INTO Subtopico VALUES ('21', '7', 'Missão', '0')
INSERT INTO Subtopico VALUES ('22', '7', 'Visão', '0')
INSERT INTO Subtopico VALUES ('23', '7', 'Valores', '0')
INSERT INTO Subtopico VALUES ('24', '7', 'Objetivos', '0')
INSERT INTO Subtopico VALUES ('25', '8', 'Análise dos Fatores Externos', '0')
INSERT INTO Subtopico VALUES ('26', '8', 'Análise dos Fatores Internos', '0')
INSERT INTO Subtopico VALUES ('27', '8', 'Análise Estrutural de Forças Competitivas', '0')
INSERT INTO Subtopico VALUES ('28', '8', 'Formulação de Estratégias de Redução de ', '0')
INSERT INTO Subtopico VALUES ('29', '8', 'Formulação de Estratégias Macro - grande a', '0')
INSERT INTO Subtopico VALUES ('30', '8', 'Formulação de Estratégias Alternativas - e', '0')
INSERT INTO Subtopico VALUES ('31', '9', 'Ambiente Geral', '0')
INSERT INTO Subtopico VALUES ('32', '9', 'Ambiente Operacional', '0')
INSERT INTO Subtopico VALUES ('33', '9', 'Ambiente Interno', '0')
INSERT INTO Subtopico VALUES ('34', '9', 'Previsão Ambiental', '0')
INSERT INTO Subtopico VALUES ('35', '10', 'Missão', '0')
INSERT INTO Subtopico VALUES ('36', '10', 'Visão', '0')
INSERT INTO Subtopico VALUES ('37', '10', 'Valores', '0')
INSERT INTO Subtopico VALUES ('38', '10', 'Objetivos', '0')
INSERT INTO Subtopico VALUES ('39', '11', 'Análise dos Fatores Externos', '0')
INSERT INTO Subtopico VALUES ('40', '11', 'Análise dos Fatores Internos', '0')
INSERT INTO Subtopico VALUES ('41', '11', 'Análise Estrutural de Forças Competitivas', '0')
INSERT INTO Subtopico VALUES ('42', '11', 'Formulação de Estratégias de Redução de ', '0')
INSERT INTO Subtopico VALUES ('43', '11', 'Formulação de Estratégias Macro - grande a', '0')
INSERT INTO Subtopico VALUES ('44', '11', 'Formulação de Estratégias Alternativas - e', '0')
INSERT INTO Subtopico VALUES ('45', '12', 'Ambiente Geral', '1')
INSERT INTO Subtopico VALUES ('46', '12', 'Ambiente Operacional', '2')
INSERT INTO Subtopico VALUES ('47', '12', 'Ambiente Interno', '3')
INSERT INTO Subtopico VALUES ('48', '12', 'Previsão Ambiental', '4')
INSERT INTO Subtopico VALUES ('49', '13', 'Missão', '1')
INSERT INTO Subtopico VALUES ('50', '13', 'Visão', '2')
INSERT INTO Subtopico VALUES ('51', '13', 'Valores', '3')
INSERT INTO Subtopico VALUES ('52', '13', 'Objetivos/ Metas', '4')
INSERT INTO Subtopico VALUES ('53', '14', 'Análise dos Fatores Externos', '1')
INSERT INTO Subtopico VALUES ('54', '14', 'Análise dos Fatores Internos', '2')
INSERT INTO Subtopico VALUES ('55', '14', 'Análise Estrutural de Forças Competitivas', '3')
INSERT INTO Subtopico VALUES ('56', '14', 'Formulação de Estratégia de Redução de Despesas', '6')
INSERT INTO Subtopico VALUES ('57', '14', 'Formulação de Estratégia Macro', '4')
INSERT INTO Subtopico VALUES ('58', '14', 'Formulação de Estratégia Alternativa', '5')
INSERT INTO Subtopico VALUES ('59', '3', 'Previsão Ambiental', '1')


-- Criando tabela: Topico
CREATE TABLE `Topico` (
  `idTopico` int(11) NOT NULL AUTO_INCREMENT,
  `idPlan` int(11) NOT NULL,
  `nivel` int(11) NOT NULL DEFAULT '0',
  `nome` text NOT NULL,
  PRIMARY KEY (`idTopico`),
  KEY `idPlan` (`idPlan`),
  CONSTRAINT `Topico_ibfk_1` FOREIGN KEY (`idPlan`) REFERENCES `PlanejamentoEstrategico` (`idPlan`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8

-- Salva os dados
INSERT INTO Topico VALUES ('3', '1', '0', 'Etapa I - Análise do Ambiente')
INSERT INTO Topico VALUES ('4', '1', '0', 'Etapa II - Estabelecimento da Diretriz Organizacional')
INSERT INTO Topico VALUES ('5', '1', '0', 'Etapa III - Formulação da Estratégia')
INSERT INTO Topico VALUES ('6', '2', '0', 'Etapa I - Análise do Ambiente')
INSERT INTO Topico VALUES ('7', '2', '0', 'Etapa II - Diretriz Organizacional')
INSERT INTO Topico VALUES ('8', '2', '0', 'Etapa III - Formulação da Estratégia')
INSERT INTO Topico VALUES ('9', '3', '0', 'Etapa I - Análise do Ambiente')
INSERT INTO Topico VALUES ('10', '3', '0', 'Etapa II - Diretriz Organizacional')
INSERT INTO Topico VALUES ('11', '3', '0', 'Etapa III - Formulação da Estratégia')
INSERT INTO Topico VALUES ('12', '4', '1', 'Etapa I - Análise do Ambiente')
INSERT INTO Topico VALUES ('13', '4', '2', 'Etapa II - Estabelecimento da Diretriz Organizacional')
INSERT INTO Topico VALUES ('14', '4', '3', 'Etapa III - Formulação da Estratégia')


-- Criando tabela: Usuario
CREATE TABLE `Usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `idCargo` int(10) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `senha` text NOT NULL,
  `imagem` varchar(32) NOT NULL DEFAULT 'PADRAO',
  PRIMARY KEY (`idUsuario`),
  KEY `idCargo` (`idCargo`),
  CONSTRAINT `Usuario_ibfk_1` FOREIGN KEY (`idCargo`) REFERENCES `Cargo` (`idCargo`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8

-- Salva os dados
INSERT INTO Usuario VALUES ('1', '1', 'Nidelson Teixeira Falcão', 'nidelson.falcao@falcaogestaoestrategica.com', '1', '68e561eaa10e077685c642ca2093084d62e8d22e', '9adf8a020d56e1400248ce68a243486e')
INSERT INTO Usuario VALUES ('2', '2', 'Nidelson Teixeira Falcão', 'nidelson.ccgc@falcaogestaoestrategica.com', '1', '68e561eaa10e077685c642ca2093084d62e8d22e', '69a52c47b821ed46c56f064941c9d6dd')
INSERT INTO Usuario VALUES ('3', '3', 'Nidelson Teixeira Falcão', 'nidelson.falcao@ccgc.com.br', '1', '68e561eaa10e077685c642ca2093084d62e8d22e', 'a855ffa496788ccdf6fec8095c487625')
INSERT INTO Usuario VALUES ('6', '8', 'Fabio J Goncalves', 'fabio.junior@ccgc.com.br', '1', 'e0d864632e9f9161de18512e4642022a2cd9e5a4', 'e456887ea233f7fb96cca54b56924abe')
INSERT INTO Usuario VALUES ('7', '7', 'Jaime Magela de Faria', 'jaime.magela@ccgc.com.br', '1', '7ccda77c735ed507226ba57d72a90ebd0d08d72a', '4044522243b9aab7e190bc3a5d2ee8fa')
INSERT INTO Usuario VALUES ('8', '9', 'Jose Eustáquio Soares de Amorim', 'eustaquio.amorim@ccgc.com.br', '1', '5d711d75f87fdbb27cf7c19507d60f0def7065a8', '8ac75dcb472e2a106ee636505ede6a81')
INSERT INTO Usuario VALUES ('9', '5', 'Wellerson J Borges', 'wellerson.borges@ccgc.com.br', '1', '45c9eadceff750c459174391087ff34fee21348f', 'PADRAO')
INSERT INTO Usuario VALUES ('10', '10', 'Guilherme Rodrigues', 'guilherme.rodrigues@ccgc.com.br', '1', '0fece84f4e944ede78c9824d7c9d7d9d58285007', 'PADRAO')
INSERT INTO Usuario VALUES ('11', '11', 'Nidelson Teixeira Falcão', 'nidelson.terra@falcaogestaoestrategica.com', '1', '68e561eaa10e077685c642ca2093084d62e8d22e', 'eaea05c4831af1718995520f9b2c2d79')
INSERT INTO Usuario VALUES ('12', '12', 'Alesson Rodrigues', 'alesson@fergubras.com.br', '1', '7682ccc35216f2e301e78215a9023bf804351d5f', '26eb2309b4554166c0e0199fe163fffb')
INSERT INTO Usuario VALUES ('13', '14', 'Alessandra Aparecida Rodrigues', 'alessandra.a.ro@hotmail.com', '1', '75b298a477a72f770adf10f64676986a04bfcd91', 'PADRAO')
INSERT INTO Usuario VALUES ('14', '13', 'Henrique ', 'henrique@fergubras.com.br', '1', 'cce56a0b96bf158c9029852b5cf95e61467d0acb', 'PADRAO')
INSERT INTO Usuario VALUES ('16', '15', 'Nidelson Teixeira Falcão', 'nidelson.siderpam@falcaogestaoestrategica.com', '1', '68e561eaa10e077685c642ca2093084d62e8d22e', '2d746e23d4f5781729be835438f39e0d')
INSERT INTO Usuario VALUES ('17', '16', 'Nidelson Teixeira Falcão', 'nidelson.cemil@falcaogestaoestrategica.com', '1', '68e561eaa10e077685c642ca2093084d62e8d22e', 'b33517bfa5c1f32ddd8a50b4236f7888')
INSERT INTO Usuario VALUES ('19', '18', 'Cinthia Franco de Paula', 'financeiro@siderterra.com.br', '1', '53eccc6db944264c01b03d970a9a376adf74fbaf', 'PADRAO')
INSERT INTO Usuario VALUES ('20', '19', 'Patrícia França', 'expedicao@siderterra.com.br', '1', '6897f2bbb8b368c2e36ec5b6b288492fcfe513bf', '5d98d24334e4ef3c856b405ee4981624')
INSERT INTO Usuario VALUES ('22', '21', 'Josiane Ferreira Barbosa', 'contabilidade@siderterra.com.br', '1', '4d3785304f97444f720d41698fc8fbe651d1733b', 'PADRAO')
INSERT INTO Usuario VALUES ('24', '23', 'Márcia Helena Pereira', 'descargacarvao@siderterra.com.br', '1', '9993cf0f043266b78b0e5cbf4affa66df149d3d5', 'PADRAO')
INSERT INTO Usuario VALUES ('25', '24', 'Gabriel Eduardo Gott Vasconcelos', 'engenhariael@fergubras.com.br', '1', '9e046e2fd7190bb2571d984945c0f5bfcdf36d60', 'PADRAO')
INSERT INTO Usuario VALUES ('26', '25', 'Evaldo Silva Leão', 'laboratorio@siderterra.com.br', '1', '562f3bdb21b27fe39fecb35c7af4eb061cd5285a', 'PADRAO')
INSERT INTO Usuario VALUES ('27', '26', 'Alicério Francisco Silva', 'logistica@siderterra.com.br', '1', 'e57482d1d43fc186a730a106538e6fe368633e7f', 'PADRAO')
INSERT INTO Usuario VALUES ('28', '27', 'Cláudio Oliveira Horta', 'engenharia@siderterra.com.br', '1', '888c6cfe6b63dd999e97a215467bc1e66171e759', 'ec2f96fd0b14e128f80856d5d3081615')
INSERT INTO Usuario VALUES ('29', '28', 'Matheus Padilha dos Santos', 'meioambiente@siderterra.com.br', '1', '53b1c455c4136ef3a369ad924d209db570280a6c', '1596a5b02907597fece611cacbf8ec88')
INSERT INTO Usuario VALUES ('30', '29', 'Múrcio Diniz Freitas', 'pagamentocarvao@siderterra.com.br', '1', 'f9e7ebe85fba1df26b17d5f56febc37f2d37c195', '255dda125530179ca840e477ba520f30')
INSERT INTO Usuario VALUES ('31', '30', 'José Armando Rocha Maciel', 'producao@siderterra.com.br', '1', '5491c11f9ee6ff22b260040f4f1b1a3442d127c4', '9cd767d96afab2fc08617ace20961d54')
INSERT INTO Usuario VALUES ('32', '31', 'Gisele Marcia Duarte de Souza', 'dp@siderterra.com.br', '1', '48df3bce52aca17ed459c30af606548a6723a8ed', 'PADRAO')
INSERT INTO Usuario VALUES ('33', '32', 'José Maria Carmo', 'jm_carmo@yahoo.com.br', '1', '9dbd4f1ccd695417f9bc6ac1e60551063614953c', '6d689a373ee35d8cca7683e5497bcfba')
INSERT INTO Usuario VALUES ('34', '33', 'Mateus Michelini de Oliveira Andrade', 'suprimentos@siderterra.com.br', '1', '7d1aa27db8109c039acfe5de586560bc98224112', 'a10f718d21e66a41d10d776c443cf60c')
INSERT INTO Usuario VALUES ('35', '34', 'Paulo Henrique', 'informatica@fergubras.com.br', '1', '3352537346b8952df5cd1af145e0bc194c654b68', 'PADRAO')
INSERT INTO Usuario VALUES ('36', '35', 'Sebastiao Flavio da silva ', 'transportes@siderterra.com.br', '1', '314999dc1cf9345b96530f7064b04e4914dbba1a', 'PADRAO')
INSERT INTO Usuario VALUES ('37', '4', 'Márcia Aparecida Alves Rodrigues', 'marcia.rodrigues@ccgc.com.br', '1', '123213a2eefc439360ee742c1313c35bd79d4ce6', 'PADRAO')
INSERT INTO Usuario VALUES ('38', '36', 'Ana Maria Lopes Estevão da Costa', 'ana.maria@ccgc.com.br', '1', '398897010f9fdf4e00db368ec482f761885af1ed', 'abe990fe2bdcc07e614186c1e2bcf4d0')
INSERT INTO Usuario VALUES ('40', '38', 'Henrique', 'henrique@siderpam.com.br', '1', 'fcc591a22af8d4611add4eaa601fad3fccdef049', 'PADRAO')
INSERT INTO Usuario VALUES ('41', '39', 'Alessandra Aparecida Rodrigues', 'alessandra@siderpam.com.br', '1', '75b298a477a72f770adf10f64676986a04bfcd91', 'PADRAO')
INSERT INTO Usuario VALUES ('42', '41', 'Cássia', 'compras@siderpam.com.br', '1', 'cfce8e5f73bdb97cf47a6f71b1da6423bea1b1e7', 'PADRAO')
INSERT INTO Usuario VALUES ('43', '42', 'Edivan Martins Carvalho', 'contabilidade@siderpam.com.br', '1', 'a91a916b13c1bb05d584c900c93920401ec6c629', 'PADRAO')
INSERT INTO Usuario VALUES ('44', '43', 'Rodolfo de Matos', 'sesmet@siderpam.com.br', '1', '774a59a93659cea4a6b165c2fd37c9a5d60912d1', 'PADRAO')
INSERT INTO Usuario VALUES ('45', '44', 'Marcelo de Souza Ramos', 'laboratorioquimico@siderpam.com.br', '1', 'f3b98ee0cdcd634da393489c5269e75af26f8ffd', 'PADRAO')
INSERT INTO Usuario VALUES ('46', '46', 'Denis Leandro dos S. Araújo', 'eletrica@siderpam.com.br', '1', 'c491589d4b21143f31b072ec7d031052c6834642', 'PADRAO')
INSERT INTO Usuario VALUES ('47', '50', 'André Oliveira Rocha', 'meioambiente@siderpam.com.br', '1', '39bd95ecb1419b9f497b5a64f2926102625bd8c1', 'PADRAO')
INSERT INTO Usuario VALUES ('49', '47', 'Carlos', 'balanca@siderpam.com.br', '1', 'ff0edd646698f65fa2c8680d00391e368b6d4315', 'PADRAO')
INSERT INTO Usuario VALUES ('50', '55', 'Geordani Dornas', 'carvao@siderpam.com.br', '1', '66ec4a538885e0376c1ac6bd530bd388dd3f737f', 'PADRAO')
INSERT INTO Usuario VALUES ('51', '48', 'Mauro', 'comercial@siderpam.com.br', '1', 'c7ed5a1e14457d28afc945c6411fc8d3d2af76c3', 'PADRAO')
INSERT INTO Usuario VALUES ('52', '52', 'Alice Cristina Pereira', 'juridico@fergubras.com.br', '1', 'f0bd251b08338c230d420f33106faf13a12cace5', 'PADRAO')
INSERT INTO Usuario VALUES ('53', '40', 'Joliver Pereira de Paula', 'carvaovg@fergubras.com.br', '1', '976c67488d9e6c9da5f0016d1df0ad92b3348555', 'PADRAO')
INSERT INTO Usuario VALUES ('54', '58', 'Júlio César Barbosa de Almeida', 'rh@siderpam.com.br', '1', '7c42b3de420789dcb91f151d5785e0192fefb0af', 'PADRAO')
INSERT INTO Usuario VALUES ('55', '62', 'Kleide Naves Ladeira', 'knaves@siderpam.com.br', '1', '3b739ca4fd899efb23eabdf64e6433ec91af8a27', 'PADRAO')
INSERT INTO Usuario VALUES ('56', '54', 'Edson de Souza', 'manutencaomec@siderpam.com.br', '1', 'cfce8e5f73bdb97cf47a6f71b1da6423bea1b1e7', 'PADRAO')
INSERT INTO Usuario VALUES ('57', '57', 'Plínio Maia de Araújo', 'producao2@siderpam.com.br', '1', '7c42b3de420789dcb91f151d5785e0192fefb0af', 'a19497434199d7be12a2e70b7d3535bf')
INSERT INTO Usuario VALUES ('58', '59', 'Carlos Eduardo Pereira de Souza', 'termeletrica@siderpam.com.br', '1', 'ae72513611ce2b42c7f15b46397ed8e23ee50055', 'PADRAO')
INSERT INTO Usuario VALUES ('59', '71', 'Yolando', 'transportes@siderpam.com.br', '1', 'cfce8e5f73bdb97cf47a6f71b1da6423bea1b1e7', 'PADRAO')
INSERT INTO Usuario VALUES ('60', '49', 'Marcos Antônio de Souza', 'financeiro@siderpam.com.br', '1', '8e415a00f05fc043520e4918fa2a62dbb5f5a6b2', 'PADRAO')
INSERT INTO Usuario VALUES ('61', '63', 'Adélio Pires Correa', 'producao@siderpam.com.br', '1', 'd396b61e30b144466fb5ae0042a19017074fb960', 'PADRAO')
INSERT INTO Usuario VALUES ('63', '37', 'Alesson Rodrigues', 'alesson@siderpam.com.br', '1', '7682ccc35216f2e301e78215a9023bf804351d5f', '18a1a252ee209e8d8511862e8074778e')
INSERT INTO Usuario VALUES ('64', '65', 'InfoAlto', 'InfoAlto@infoalto.com', '1', 'f3276c09160dba8e235da6d3340f0bf967403b58', '')
INSERT INTO Usuario VALUES ('65', '66', 'Teste', 'teste@teste.com', '1', '601f1889667efaebb33b8c12572835da3f027f78', 'PADRAO')
INSERT INTO Usuario VALUES ('66', '22', 'Angela Maria Teixeira', 'fiscal@siderterra.com.br', '1', 'f56d6351aa71cff0debea014d13525e42036187a', 'PADRAO')
INSERT INTO Usuario VALUES ('67', '20', 'David Renato Pontello', 'beneficiamento@siderterra.com.br', '1', '5ddf27cd6a805ef947ff10d3df42785778ddbaec', 'PADRAO')
INSERT INTO Usuario VALUES ('68', '53', 'Plínio Maia de Araújo', 'manpatrimonial@siderpam.com.br', '1', '7c42b3de420789dcb91f151d5785e0192fefb0af', 'PADRAO')
INSERT INTO Usuario VALUES ('69', '51', 'Paulo Henrique do Espirito Santo', 'ti@siderpam.com.br', '1', '5686c8b529703286c16ecbf482638d57cc6deedc', 'PADRAO')
INSERT INTO Usuario VALUES ('70', '64', 'Alice', 'juridico@siderterra.com.br', '1', 'f0bd251b08338c230d420f33106faf13a12cace5', 'PADRAO')
INSERT INTO Usuario VALUES ('71', '69', 'Osmar', 'osmar.braga@cemil.com.br', '1', '85a10c5235d4e1957b77f5c18a8b5c98b969f891', 'PADRAO')
INSERT INTO Usuario VALUES ('72', '70', 'Thiago', 'thiago.magalhaes@cemil.com.br', '1', '9fb42daeb2bacd1776795b66b4010d5555a02584', 'PADRAO')
INSERT INTO Usuario VALUES ('73', '56', 'Carlos Aparecido', 'portaria@siderpam.com.br', '1', '1a9f1a64d6dcc7a28324f605f3bf8c4de2ee5611', 'PADRAO')
INSERT INTO Usuario VALUES ('74', '61', 'Antônio Carlos', 'beneficiamento@siderpam.com.br', '1', '95599232d9bef14a1f13eefdb5bdfe864ad45b94', 'PADRAO')
INSERT INTO Usuario VALUES ('75', '45', 'Júlio Carvalho', 'descargacarvao@siderpam.com.br', '1', '166b60dbdd0a1c9bf60e0dd6b8f2f995a7209e1b', 'PADRAO')
INSERT INTO Usuario VALUES ('76', '72', 'Ricardo César Machado Braga', 'diretoria.vicepresidencia@coopatos.com.br', '1', '12406635297e41571c8af3fec899f1b39d5b0977', 'PADRAO')
INSERT INTO Usuario VALUES ('77', '73', 'Robson', 'compracarvao@siderterra.com.br', '1', '7fdbb654b0e494dd8c53e1e15bf58439f8dfb594', 'PADRAO')
INSERT INTO Usuario VALUES ('79', '17', 'Wagner Vaz de Mello', 'wagnermello@siderterra.com.br', '1', '6dcb443dd4834bcd6dbc8aa869a3219d91b4a2c1', 'PADRAO')
INSERT INTO Usuario VALUES ('80', '74', 'Nidelson Teixeira Falcão', 'nidelson.carbofer@falcaogestaoestrategica.com', '1', '68e561eaa10e077685c642ca2093084d62e8d22e', '')
INSERT INTO Usuario VALUES ('81', '75', 'Anderson Mateus Rodrigues', 'andersonmaro@yahoo.com.br', '1', '9a4c69c98ab3893a631ae1856ed2c871f9462194', 'PADRAO')


