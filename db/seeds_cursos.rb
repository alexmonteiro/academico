# Alimenta tabela de Cursos
=begin
-- Select de Instituicoes
select ('
curso = Course.new(
         {:code => \''||codigo||'\', 
          :name => \''||curso.nome||'\', 
          :nickname => \''||nome_reduzido||'\',  
          :goal => \''||finalidade||'\', 
          :mintime => \''||tempo_minimo||'\',   
          :maxtime => \''||tempo_maximo||'\',         
          :started_at => \''||coalesce(curso.data_inicio, '01/01/1900')||'\',  
          :ended_at => \''||coalesce(curso.data_fim, '01/01/2050')||'\',  
          :dept_id => '||unidade_organizacional_id||'
         })
curso.id = '||curso.id||'
curso.save!         
       ') as comando
from curso, elemento_organizacional 
where curso.unidade_organizacional_id = elemento_organizacional.id order by 1;

-- Comando reduzido
select ('curso = Course.new({:code => \''||codigo||'\', :name => \''||curso.nome||'\', :nickname => \''||nome_reduzido||'\',  :goal => \''||finalidade||'\', :mintime => \''||tempo_minimo||'\', :maxtime => \''||tempo_maximo||'\', :started_at => \''||coalesce(curso.data_inicio, '01/01/1900')||'\', :ended_at => \''||coalesce(curso.data_fim, '01/01/2050')||'\', :dept_id => '||unidade_organizacional_id||' })
curso.id = '||curso.id||'
curso.save! ') as comando from curso, elemento_organizacional  where curso.unidade_organizacional_id = elemento_organizacional.id order by 1;

=end
Course.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('courses_id_seq', 1, false);")

curso = Course.new({:code => '001', :name => 'CST em Agroecologia', :nickname => 'Agroecologia',  :goal => 'Formar Tecnólogos em Agroecologia', :mintime => '1700', :maxtime => '2600', :started_at => '2010-03-01', :ended_at => '2050-01-01', :dept_id => 19 })
curso.id = 2
curso.save! 
curso = Course.new({:code => '002', :name => 'Agente ambiental', :nickname => 'Agente ambiental',  :goal => 'Capacitar profissionais para atuar com a educação ambiental em unidades de conservação e/ou preservação ambiental - escolas, ONG\'s, e demais órgãos.', :mintime => '3', :maxtime => '3', :started_at => '2010-05-31', :ended_at => '2010-09-10', :dept_id => 10 })
curso.id = 4
curso.save! 
curso = Course.new({:code => '003', :name => 'Vendas e Pós-Venda', :nickname => 'Vendas e Pós-Venda',  :goal => 'Formar Profissionais para o Mundo do Trabalho', :mintime => '120', :maxtime => '160', :started_at => '2010-03-15', :ended_at => '2010-06-16', :dept_id => 13 })
curso.id = 3
curso.save! 
curso = Course.new({:code => '004', :name => 'Segunda Licenciatura de Dança', :nickname => '2º Lidança',  :goal => '', :mintime => '74', :maxtime => '80', :started_at => '2012-04-09', :ended_at => '2050-01-01', :dept_id => 13 })
curso.id = 131
curso.save! 
curso = Course.new({:code => '005', :name => 'Licenciatura em Dança', :nickname => 'Dança',  :goal => 'Formação de Professores em Dança', :mintime => '8', :maxtime => '12', :started_at => '2010-08-09', :ended_at => '2050-01-01', :dept_id => 13 })
curso.id = 8
curso.save! 
curso = Course.new({:code => '006', :name => 'Operador Básico de Microcomputador: Digitação, Linux e Broffice', :nickname => 'Op. de Micro',  :goal => 'Capacitar Pessoas para operar microcomputadores', :mintime => '106', :maxtime => '106', :started_at => '2010-05-24', :ended_at => '2010-07-08', :dept_id => 11 })
curso.id = 6
curso.save! 
curso = Course.new({:code => '007', :name => 'Técnico em Logística', :nickname => 'Logística',  :goal => 'Oferecer condições para que o estudante desenvolva as competências gerais requeridas pela área de Logística', :mintime => '3', :maxtime => '5', :started_at => '2010-08-02', :ended_at => '2050-01-01', :dept_id => 12 })
curso.id = 16
curso.save! 
curso = Course.new({:code => '008', :name => 'Técnico em Eventos - modalidade concomitante', :nickname => 'Técnico em Eventos',  :goal => 'Formar técnicos em eventos', :mintime => '2', :maxtime => '3', :started_at => '2009-08-12', :ended_at => '2009-09-15', :dept_id => 13 })
curso.id = 17
curso.save! 
curso = Course.new({:code => '009', :name => 'Agente Administrativo em Logística', :nickname => 'Aprendizagem',  :goal => 'Oferecer condições para que o estudante desenvolva as competências gerais requeridas pela área de Logística', :mintime => '3', :maxtime => '3', :started_at => '2010-09-01', :ended_at => '2050-01-01', :dept_id => 12 })
curso.id = 18
curso.save! 
curso = Course.new({:code => '010', :name => 'FIC Inglês', :nickname => 'FIC Inglês',  :goal => 'Formação básica em língua inglesa', :mintime => '60', :maxtime => '60', :started_at => '2010-09-01', :ended_at => '2050-01-01', :dept_id => 12 })
curso.id = 19
curso.save! 
curso = Course.new({:code => '011', :name => 'FIC Espanhol', :nickname => 'FIC Espanhol',  :goal => 'Formação básica na língua espanhola', :mintime => '60', :maxtime => '60', :started_at => '2010-09-01', :ended_at => '2050-01-01', :dept_id => 12 })
curso.id = 20
curso.save! 
curso = Course.new({:code => '012', :name => 'Técnico em Comércio', :nickname => 'Técnico em Comércio',  :goal => 'Formar profissionais da área de comércio', :mintime => '18', :maxtime => '48', :started_at => '2010-08-02', :ended_at => '2050-01-01', :dept_id => 11 })
curso.id = 21
curso.save! 
curso = Course.new({:code => '013', :name => 'TÉCNICO EM RECICLAGEM', :nickname => 'TEC. RECICLAGEM',  :goal => 'são suprir a carência de mão-de-obra especializada nas diversas áreas do conhecimento, promover a educação profissional de qualidade nos diversos níveis e proporcionar o desenvolvimento regional.', :mintime => '4', :maxtime => '8', :started_at => '2010-08-02', :ended_at => '2012-07-06', :dept_id => 10 })
curso.id = 25
curso.save! 
curso = Course.new({:code => '014', :name => 'Projeto, Montagem e Manutenção de Móveis', :nickname => 'Projeto, Montagem e Manutenção de Móveis',  :goal => 'Qualificar profissionais na área de móveis.', :mintime => '3', :maxtime => '3', :started_at => '2010-09-13', :ended_at => '2010-12-17', :dept_id => 10 })
curso.id = 26
curso.save! 
curso = Course.new({:code => '015', :name => 'Auxiliar de Mecânica a Diesel', :nickname => 'FIC de Mecânica a Diesel',  :goal => 'Capacitar profissionais na área de Mecânica.', :mintime => '3', :maxtime => '3', :started_at => '2010-09-13', :ended_at => '2010-12-17', :dept_id => 10 })
curso.id = 27
curso.save! 
curso = Course.new({:code => '016', :name => 'Curso de Formação Docente PROEJA FIC', :nickname => 'PROEJA FIC',  :goal => 'Capacitar os docentes  dos centros de medidas socioeducativas para ministrarem o Curso FIC em Operador de Microcomputador na Educação de Jovens e Adultos - 2º Segmento do Ensino Fundamental.', :mintime => '1', :maxtime => '1', :started_at => '2010-07-27', :ended_at => '2050-01-01', :dept_id => 13 })
curso.id = 30
curso.save! 
curso = Course.new({:code => '017', :name => 'Agente Ambiental', :nickname => 'Fic_Agente Ambiental',  :goal => 'Capacitar profissinais para atuar na área ambiental.', :mintime => '3', :maxtime => '3', :started_at => '2010-09-13', :ended_at => '2010-12-17', :dept_id => 10 })
curso.id = 31
curso.save! 
curso = Course.new({:code => '018', :name => 'Língua Espanhola Nível Básico', :nickname => 'Língua Espanhola Nível Básico',  :goal => 'Capacitar profissionais para atuar com estrangeiros em língua espanhola', :mintime => '3', :maxtime => '3', :started_at => '2010-09-13', :ended_at => '2010-12-17', :dept_id => 10 })
curso.id = 32
curso.save! 
curso = Course.new({:code => '019', :name => 'Almoxarife e Apontador', :nickname => 'FIC_Almoxarife e Apontador',  :goal => 'Capacitar profissionais para atuarem na área de almoxarife e apontador.', :mintime => '3', :maxtime => '3', :started_at => '2010-09-13', :ended_at => '2010-12-17', :dept_id => 10 })
curso.id = 33
curso.save! 
curso = Course.new({:code => '020', :name => 'Operador Básico de Computador', :nickname => 'FIC_Operador Básico de Computador',  :goal => 'Capacitar para utilização do computador.', :mintime => '3', :maxtime => '3', :started_at => '2010-09-13', :ended_at => '2010-12-17', :dept_id => 10 })
curso.id = 34
curso.save! 
curso = Course.new({:code => '021', :name => 'Contabilidade Básica', :nickname => 'CB',  :goal => 'Apresentar aos profissionais e interessados das mais diversas áreas, bem como ao público em geral, as bases conceituais da Contabilidade.', :mintime => '1', :maxtime => '1', :started_at => '2010-10-13', :ended_at => '2050-01-01', :dept_id => 13 })
curso.id = 35
curso.save! 
curso = Course.new({:code => '022', :name => 'Contabilidade básica', :nickname => 'CB',  :goal => 'Apresentar aos profissionais e interessados das mais diversas áreas, bem como ao público em geral, as bases conceituais da Contabilidade.', :mintime => '1', :maxtime => '1', :started_at => '2010-10-14', :ended_at => '2050-01-01', :dept_id => 13 })
curso.id = 36
curso.save! 
curso = Course.new({:code => '023', :name => 'Introdução ao Gerenciamento Ambiental', :nickname => 'Gerenciamento Ambiental',  :goal => 'Despertar no grupo a importância do conceito de desenvolvimento sustentável como um campo do conhecimento transdisciplinar e global.', :mintime => '1', :maxtime => '1', :started_at => '2010-10-13', :ended_at => '2010-12-08', :dept_id => 13 })
curso.id = 38
curso.save! 
curso = Course.new({:code => '024', :name => 'Atendimento e Vendas', :nickname => 'Atendimento e vendas',  :goal => 'Atualizar', :mintime => '3', :maxtime => '3', :started_at => '2010-11-01', :ended_at => '2011-02-01', :dept_id => 12 })
curso.id = 39
curso.save! 
curso = Course.new({:code => '025', :name => 'Atendente de Farmácias e Drogarias', :nickname => 'Atendente de Farmácias e Drogarias',  :goal => 'Atualizar', :mintime => '3', :maxtime => '3', :started_at => '2010-11-01', :ended_at => '2011-02-01', :dept_id => 12 })
curso.id = 40
curso.save! 
curso = Course.new({:code => '026', :name => 'Cerimonial e Protocolo', :nickname => 'CP',  :goal => 'Capacitar o aluno para o conhecimento das competências necessárias à prática do Cerimonial e Protocolo de Eventos. Esse profissional poderá auxiliar na realização dos diversos tipos de eventos. ', :mintime => '1', :maxtime => '1', :started_at => '2010-10-07', :ended_at => '2010-12-15', :dept_id => 13 })
curso.id = 42
curso.save! 
curso = Course.new({:code => '027', :name => 'Enem - Teste Leoncio', :nickname => 'Enem - Leoncio',  :goal => 'Teste', :mintime => '1', :maxtime => '2', :started_at => '2011-01-10', :ended_at => '2050-01-01', :dept_id => 13 })
curso.id = 45
curso.save! 
curso = Course.new({:code => '028', :name => 'Agronegócio', :nickname => 'AGN1A',  :goal => 'Atualizar', :mintime => '3', :maxtime => '5', :started_at => '2011-02-07', :ended_at => '2050-01-01', :dept_id => 12 })
curso.id = 46
curso.save! 
curso = Course.new({:code => '029', :name => 'Cooperativismo', :nickname => 'CPR1A',  :goal => 'Atualizar', :mintime => '3', :maxtime => '5', :started_at => '2011-02-07', :ended_at => '2050-01-01', :dept_id => 12 })
curso.id = 47
curso.save! 
curso = Course.new({:code => '030', :name => 'Técnico em Informática - modalidade subsequente', :nickname => 'Tec_ Inf',  :goal => 'formar profissionais empreendedores, promovendo a construção de competências que contemplem habilidades, conhecimentos e comportamentos que atendam às demandas do setor produtivo.', :mintime => '18', :maxtime => '18', :started_at => '2011-02-07', :ended_at => '2050-01-01', :dept_id => 13 })
curso.id = 49
curso.save! 
curso = Course.new({:code => '031', :name => 'Técnico em Serviços Públicos - Modalidade Subsequente', :nickname => 'TecServPub',  :goal => 'Preparar profissionais para atuar na área pública das esferas Federal, Distrital, Estadual ou municipal executando operações decorrentes de programas e projetos de políticas públicas.', :mintime => '18', :maxtime => '18', :started_at => '2011-02-07', :ended_at => '2050-01-01', :dept_id => 13 })
curso.id = 50
curso.save! 
curso = Course.new({:code => '032', :name => 'Técnico em  Eventos - modalidade subsequente', :nickname => 'TécSubEv',  :goal => 'Formar egressos críticos com habilidades e competências para aturaem no mercado de eventos.', :mintime => '18', :maxtime => '18', :started_at => '2011-02-07', :ended_at => '2050-01-01', :dept_id => 13 })
curso.id = 51
curso.save! 
curso = Course.new({:code => '033', :name => 'Reforma Ortográfica', :nickname => 'Refort',  :goal => ' Levar a conhecimento o texto da nova Reforma Ortográfica sob uma perspectiva teórico-prática, conforme o Acordo promulgado pelo Decreto n. 6.583, de 29 de setembro de 2008, enfatizando as mudanças ', :mintime => '8', :maxtime => '8', :started_at => '2011-03-14', :ended_at => '2011-03-21', :dept_id => 10 })
curso.id = 52
curso.save! 
curso = Course.new({:code => '034', :name => 'Técnico em Reciclagem II', :nickname => 'Téc. Reciclagem II',  :goal => 'são suprir a carência de mão-de-obra especializada nas diversas áreas do conhecimento, promover a educação profissional de qualidade nos diversos níveis e proporcionar o desenvolvimento regional.', :mintime => '4', :maxtime => '8', :started_at => '2011-02-14', :ended_at => '2050-01-01', :dept_id => 10 })
curso.id = 53
curso.save! 
curso = Course.new({:code => '035', :name => 'Curso Médio Integrado em Agropecuária', :nickname => 'técnico Integrado em Agropecuária',  :goal => 'Promover a integração entre a escola e o mundo do trabalho, capacitando os jovens com conhecimentos e habilidades para o exercício de atividades produtivas, formando profissionais, cidadãos técnicos', :mintime => '3', :maxtime => '20', :started_at => '2008-02-01', :ended_at => '2050-01-01', :dept_id => 20 })
curso.id = 56
curso.save! 
curso = Course.new({:code => '036', :name => 'Técnico em Móveis', :nickname => 'Téc. em Móveis',  :goal => 'Oferecer condições para que o estudante desenvolva as competências\r
profissionais gerais requeridas pela área de Móveis, de modo a facilitar e ampliar suas possibilidades de atuação.', :mintime => '4', :maxtime => '8', :started_at => '2011-03-16', :ended_at => '2050-01-01', :dept_id => 10 })
curso.id = 58
curso.save! 
curso = Course.new({:code => '037', :name => 'Aprendiz de Mecânica de Manutenção', :nickname => 'Aprendiz Mec_FIC',  :goal => 'Formar aprendizes de mecânica de manutenção e preprarar para o curso técnico de Eletromecânica.', :mintime => '216', :maxtime => '216', :started_at => '2011-09-05', :ended_at => '2011-12-20', :dept_id => 11 })
curso.id = 59
curso.save! 
curso = Course.new({:code => '038', :name => 'Recepção hoteleira', :nickname => 'RH',  :goal => 'Capacitar o aluno para o conhecimento das competências necessárias à supervisão e recepção hoteleira. Esse profissional poderá auxiliar no recebimento de hóspedes, organograma e funções da portaria,', :mintime => '90', :maxtime => '90', :started_at => '2011-04-25', :ended_at => '2011-07-07', :dept_id => 13 })
curso.id = 63
curso.save! 
curso = Course.new({:code => '039', :name => 'Lingua Espanhola_Nivel Básico_Módulo II', :nickname => 'Espanhol_Básico II',  :goal => 'Capacitar profissionais para atuar com estrangeiros em língua espanhola.', :mintime => '1', :maxtime => '1', :started_at => '2011-02-14', :ended_at => '2050-01-01', :dept_id => 10 })
curso.id = 61
curso.save! 
curso = Course.new({:code => '040', :name => 'Língua Inglesa', :nickname => 'Inglês',  :goal => 'Comunicar-se em nível elementar através da leitura , escrita, compreensão auditiva e produção oral', :mintime => '6', :maxtime => '6', :started_at => '2011-04-04', :ended_at => '2011-06-27', :dept_id => 10 })
curso.id = 62
curso.save! 
curso = Course.new({:code => '041', :name => 'Técnico em Controle Ambiental', :nickname => 'Téc. em Controle Ambiental',  :goal => 'Suprir as novas exigências ambientais que têm sido postas e impulsionado os avanços recentes nos estudos, nas pesquisas e no desenvolvimento de tecnologias ambientais sustentáveis.', :mintime => '3', :maxtime => '6', :started_at => '2011-08-03', :ended_at => '2050-01-01', :dept_id => 10 })
curso.id = 65
curso.save! 
curso = Course.new({:code => '042', :name => 'Espanhol para a Copa', :nickname => 'ESPCOPA',  :goal => 'Qualificar profissionais trabalhadores da comunidade para atuar no atendimento direto ao público nos setores alimentícios, comerciais, hoteleiros e turísitcos.', :mintime => '3', :maxtime => '3', :started_at => '2011-08-02', :ended_at => '2050-01-01', :dept_id => 12 })
curso.id = 67
curso.save! 
curso = Course.new({:code => '043', :name => 'teste', :nickname => 'teste',  :goal => 'teste', :mintime => '1', :maxtime => '3', :started_at => '2011-01-01', :ended_at => '2050-01-01', :dept_id => 12 })
curso.id = 68
curso.save! 
curso = Course.new({:code => '044', :name => 'FIC Padeiro e Confeiteiro', :nickname => 'FIC Padeiro e Confeiteiro',  :goal => 'Capacitar pessoas em panificação.', :mintime => '1', :maxtime => '1', :started_at => '2011-09-26', :ended_at => '2011-12-23', :dept_id => 29 })
curso.id = 69
curso.save! 
curso = Course.new({:code => '045', :name => ' CRF - Padeiro Turma B', :nickname => ' CRF - Padeiro Turma B',  :goal => 'Capacitar mão de obra qualificada na área de panificação.', :mintime => '1', :maxtime => '1', :started_at => '2011-09-26', :ended_at => '2050-01-01', :dept_id => 29 })
curso.id = 70
curso.save! 
curso = Course.new({:code => '046', :name => 'Auxiliar Administrativo', :nickname => 'Aux Adm',  :goal => 'O curso tem por objetivo capacitar pessoas para atuar como auxiliar administrativo em organizações, apresentando um conjunto de conhecimentos necessários para a execução das atividades.', :mintime => '90', :maxtime => '90', :started_at => '2011-10-10', :ended_at => '2011-12-16', :dept_id => 32 })
curso.id = 95
curso.save! 
curso = Course.new({:code => '047', :name => 'FIC Infomática', :nickname => 'FIC Informática',  :goal => 'Capacitar mão de obra qualificada em tecnológia da informação', :mintime => '1', :maxtime => '2', :started_at => '2011-09-26', :ended_at => '2050-01-01', :dept_id => 29 })
curso.id = 72
curso.save! 
curso = Course.new({:code => '048', :name => ' CRF - Atendimento ao Cliente', :nickname => ' CRF - Atendimento ao Cliente',  :goal => 'Capacitação de mão de obra em atendimento ao cliente.', :mintime => '1', :maxtime => '2', :started_at => '2011-09-26', :ended_at => '2050-01-01', :dept_id => 29 })
curso.id = 75
curso.save! 
curso = Course.new({:code => '049', :name => 'Francês para Copa', :nickname => 'FRANCESCOPA',  :goal => 'Qualificar profissionais trabalhadores  para recepicionar cliente estrangeiro em situação comerciais e hoteleiros.', :mintime => '3', :maxtime => '3', :started_at => '2011-08-02', :ended_at => '2050-01-01', :dept_id => 12 })
curso.id = 77
curso.save! 
curso = Course.new({:code => '050', :name => 'Atendimento ao Cliente', :nickname => 'Atendimento ao Cliente',  :goal => 'Contribuir para a compreensão dos aspectos necessários para a qualificação profissional na área de gestão do relacionamento com o cliente. ', :mintime => '1', :maxtime => '2', :started_at => '2011-08-15', :ended_at => '2050-01-01', :dept_id => 10 })
curso.id = 79
curso.save! 
curso = Course.new({:code => '051', :name => 'Desenhista Cadista', :nickname => 'CAD',  :goal => 'Execução de desenho técnico', :mintime => '1', :maxtime => '1', :started_at => '2011-08-03', :ended_at => '2050-01-01', :dept_id => 10 })
curso.id = 80
curso.save! 
curso = Course.new({:code => '052', :name => 'Inglês para Copa', :nickname => 'INGLESCOPA',  :goal => 'Qualificar profissionais da comunidade  para atuar no atendimento direto ao público nos setores alimentícios, comerciais, e turísticos.', :mintime => '3', :maxtime => '3', :started_at => '2011-08-02', :ended_at => '2050-01-01', :dept_id => 12 })
curso.id = 81
curso.save! 
curso = Course.new({:code => '053', :name => 'FIC Italiano', :nickname => 'Italiano',  :goal => 'Formação básica na língua italiana.', :mintime => '60', :maxtime => '60', :started_at => '2012-01-16', :ended_at => '2050-01-01', :dept_id => 11 })
curso.id = 90
curso.save! 
curso = Course.new({:code => '054', :name => 'Técnico em Eletromecânica', :nickname => 'Eletromecânica',  :goal => 'Tem por objetivo formar profissionais capazes de atuar, sob a supervisão\r de engenheiros, no projeto e execução de instalações elétricas e mecânicas de\r equipamentos industriais.', :mintime => '1', :maxtime => '1', :started_at => '2011-08-15', :ended_at => '2011-12-20', :dept_id => 11 })
curso.id = 83
curso.save! 
curso = Course.new({:code => '055', :name => 'Formação Básica de Tradutores/interpretes de Língua Brasileira de Sinais ', :nickname => 'LIBRAS - ',  :goal => 'Estimular o processo de ensino – aprendizagem dos ouvintes para auxiliá-los a adquirir uma formação mais inclusiva.', :mintime => '3', :maxtime => '3', :started_at => '2011-10-24', :ended_at => '2012-06-20', :dept_id => 11 })
curso.id = 93
curso.save! 
curso = Course.new({:code => '056', :name => 'FIC - OPERADOR DE MICROCOMPUTADOR', :nickname => 'CBRA FIC OP MICRO',  :goal => 'Cumprir as atividades previstas no projeto de extensão Inclusão Digital para trabalhadores de Brasília.', :mintime => '1', :maxtime => '1', :started_at => '2011-08-11', :ended_at => '2011-12-15', :dept_id => 13 })
curso.id = 86
curso.save! 
curso = Course.new({:code => '057', :name => 'GESTÃO DE TESOURARIA', :nickname => 'TAG. CENTRO - GESTAO TESOURARIA',  :goal => 'PREPARAR PROFISSIONAIS QUE JÁ ATUAM OU PRETENDEM ATUAR NO PLANEJAMENTO, ORGANIZAÇÃO, DIREÇÃO E CONTROLE DOS SERVIÇOS DE TESOURARIA, BEM COMO CONTROLES DE FLUXO DE CAIXA..', :mintime => '100', :maxtime => '100', :started_at => '2011-09-12', :ended_at => '2050-01-01', :dept_id => 11 })
curso.id = 87
curso.save! 
curso = Course.new({:code => '058', :name => 'Gestão Comercial', :nickname => 'TAG. CENTRO - GESTAO COMERCIAL',  :goal => 'Preparar profissionais que já atuam ou pretendem atuar no comércio ou no setor de serviços, para que possam desenvolver e aplicar com eficácia as técnicas utilizadas na gestão comercial..', :mintime => '100', :maxtime => '100', :started_at => '2011-09-12', :ended_at => '2050-01-01', :dept_id => 11 })
curso.id = 88
curso.save! 
curso = Course.new({:code => '059', :name => 'Inglês - Taguatinga', :nickname => 'Inglês - Taguatinga',  :goal => 'Comunicar-se em nível elementar através da leitura , escrita, compreensão auditiva e produção oral.', :mintime => '50', :maxtime => '50', :started_at => '2010-08-10', :ended_at => '2050-01-01', :dept_id => 11 })
curso.id = 89
curso.save! 
curso = Course.new({:code => '060', :name => 'Técnico em Transações Imobiliárias - CRF', :nickname => 'Téc. em Transações Imobiliárias - CRF',  :goal => 'Oferecer conhecimento prático e teórico nas atividades de Transações Imobiliárias, para viabilizar condições para que o estudante desenvolva as competências e habilidades profissionais.', :mintime => '320', :maxtime => '320', :started_at => '2012-02-13', :ended_at => '2013-07-31', :dept_id => 29 })
curso.id = 94
curso.save! 
curso = Course.new({:code => '061', :name => 'Secretariado Escolar', :nickname => 'Sec Esc',  :goal => 'O curso tem por objetivo, desenvolver os fundamentos técnicos e científicos da qualificação profissional, para que atue nas secretarias de instituições educacionais públicas ou privadas.', :mintime => '90', :maxtime => '90', :started_at => '2011-10-10', :ended_at => '2011-12-16', :dept_id => 32 })
curso.id = 96
curso.save! 
curso = Course.new({:code => '062', :name => 'Espanhol Básico', :nickname => 'Esp',  :goal => 'Desenvolver a capacidade de comunicação na língua estrangeira em seu nível incipiente, possibilitando uma compreensão geral do funcionamento da língua e a comunicação em seu sentido mais imediato.', :mintime => '90', :maxtime => '90', :started_at => '2011-10-10', :ended_at => '2011-12-16', :dept_id => 32 })
curso.id = 97
curso.save! 
curso = Course.new({:code => '063', :name => 'Inglês Básico', :nickname => 'ING',  :goal => 'Desenvolver a capacidade de comunicação na língua estrangeira em seu nível incipiente, possibilitando uma compreensão geral do funcionamento da língua e a comunicação em seu sentido mais imediato.', :mintime => '90', :maxtime => '90', :started_at => '2011-10-10', :ended_at => '2011-12-16', :dept_id => 32 })
curso.id = 98
curso.save! 
curso = Course.new({:code => '064', :name => 'CURSO PREPARATÓRIO PARA CERTIFICAÇÃO', :nickname => 'HCDA',  :goal => 'Preparar profissionais na área de Informática com ênfase em Redes de Computadores para o mercado de trabalho.', :mintime => '1', :maxtime => '1', :started_at => '2011-10-22', :ended_at => '2012-06-30', :dept_id => 11 })
curso.id = 99
curso.save! 
curso = Course.new({:code => '065', :name => 'FIC Empreendedorismo e Gestão em A&B', :nickname => 'FIC A&B',  :goal => '', :mintime => '1', :maxtime => '1', :started_at => '2012-03-26', :ended_at => '2012-07-31', :dept_id => 29 })
curso.id = 127
curso.save! 
curso = Course.new({:code => '066', :name => 'Mod. I - sem I - Técnico em Cozinha', :nickname => 'Mod. I -sem I- Tec. em Cozinha',  :goal => 'Oferecer conhecimento prático e teórico nas atividades de cozinha, especialmente comercial, e viabilizando condições para que o estudante desenvolva as competências e habilidades profissionais.', :mintime => '320', :maxtime => '320', :started_at => '2012-02-13', :ended_at => '2050-01-01', :dept_id => 29 })
curso.id = 102
curso.save! 
curso = Course.new({:code => '067', :name => 'Línux Básico Para Deficientes Visuais', :nickname => 'Linux Básico Def Visu',  :goal => 'Estimular o processo de ensino – aprendizagem dos deficientes visuais de um software, ferramenta livre acessível e compatível com todas as arquiteturas de computadores disponíveis no mercado, amplia', :mintime => '40', :maxtime => '40', :started_at => '2012-01-09', :ended_at => '2012-01-31', :dept_id => 32 })
curso.id = 103
curso.save! 
curso = Course.new({:code => '068', :name => 'Técnico Subsequente em Secretariado', :nickname => 'TEC SUB SEC',  :goal => 'Formar Profissionais para atuarem na área de secretariado', :mintime => '3', :maxtime => '4', :started_at => '2012-02-06', :ended_at => '2050-01-01', :dept_id => 32 })
curso.id = 104
curso.save! 
curso = Course.new({:code => '069', :name => 'FIC Garçom Básico', :nickname => 'FIC Garçom Básico',  :goal => 'Capacitar profissionais da área de hospitalidade e lazer para atendimento em bares e restaurantes como garçom.', :mintime => '6', :maxtime => '6', :started_at => '2012-03-26', :ended_at => '2050-01-01', :dept_id => 29 })
curso.id = 105
curso.save! 
curso = Course.new({:code => '070', :name => 'Técnico Subsequente em Secretaria Escolar', :nickname => 'CSSB TS SEC ESC',  :goal => 'Formar profissionais para atuaram como secretários nas instituições de ensino públicas ou privadas.', :mintime => '4', :maxtime => '6', :started_at => '2012-02-06', :ended_at => '2050-01-01', :dept_id => 32 })
curso.id = 106
curso.save! 
curso = Course.new({:code => '071', :name => 'FIC Inglês Básico', :nickname => 'CSSB FIC ING BAS',  :goal => 'Desenvolver a capacidade  dos estudantes de ler e interpretar textos de vários gêneros em língua inglesa por meio de estratégias de leitura e pelo conhecimento das estruturas linguísticas da língua ', :mintime => '1', :maxtime => '1', :started_at => '2012-02-06', :ended_at => '2050-01-01', :dept_id => 32 })
curso.id = 107
curso.save! 
curso = Course.new({:code => '072', :name => 'FIC Espanhol Básico', :nickname => 'CSSB FIC ESP BAS',  :goal => 'Desenvolver a capacidade dos estudantes de ler e falar na língua espanhola por meio de estratégias de ensino e aprendizagem e pelo conhecimento das estruturas linguísticas da língua em questão. ', :mintime => '1', :maxtime => '1', :started_at => '2012-02-06', :ended_at => '2050-01-01', :dept_id => 32 })
curso.id = 108
curso.save! 
curso = Course.new({:code => '073', :name => 'FIC Auxiliar de Secretariado', :nickname => 'CSSB FIC AUX SEC',  :goal => 'Capacitar Profissionais para atuarem na área de Secretariado como Auxiliares.', :mintime => '1', :maxtime => '1', :started_at => '2012-02-06', :ended_at => '2050-01-01', :dept_id => 32 })
curso.id = 109
curso.save! 
curso = Course.new({:code => '074', :name => 'FIC Auxiliar de Secretaria Escolar', :nickname => 'CSSB FIC AUX SEC ESC',  :goal => 'Capacitar profissionais para atuarem como auxiliares nas secretarias das escolas públicas ou privadas.', :mintime => '1', :maxtime => '1', :started_at => '2012-02-06', :ended_at => '2050-01-01', :dept_id => 32 })
curso.id = 110
curso.save! 
curso = Course.new({:code => '075', :name => 'FIC Vendas', :nickname => 'CSSB FIC VEND',  :goal => 'Preparar profissionais para o emprego de vendedor, demonstrador e representante comercial, proporcionando aos setores que se utilizam desse profissional a possibilidade de compor uma equipe com melh', :mintime => '1', :maxtime => '1', :started_at => '2012-02-06', :ended_at => '2050-01-01', :dept_id => 32 })
curso.id = 111
curso.save! 
curso = Course.new({:code => '076', :name => 'FIC Auxiliar Administrativo', :nickname => 'CSSB FIC AUX ADM',  :goal => 'O curso tem por objetivo capacitar pessoas para atuar como auxiliar administrativo em organizações, apresentando um conjunto de conhecimentos necessários para a execução das atividades.', :mintime => '1', :maxtime => '1', :started_at => '2012-02-06', :ended_at => '2050-01-01', :dept_id => 32 })
curso.id = 112
curso.save! 
curso = Course.new({:code => '077', :name => 'FIC Padeiro e Confeiteiro - CRF', :nickname => 'FIC P&C 1/2012',  :goal => 'Tornar o cidadão apto a elaborar e servir produtos de panificação e confeitaria, considerando os aspectos higiênico-sanitários, a responsabilidade profissional, socioeconômica e ambiental.', :mintime => '6', :maxtime => '6', :started_at => '2012-03-26', :ended_at => '2012-08-30', :dept_id => 29 })
curso.id = 113
curso.save! 
curso = Course.new({:code => '078', :name => 'FIC Português Instrumental', :nickname => 'Português Instrumental',  :goal => 'Formação básica.', :mintime => '60', :maxtime => '60', :started_at => '2012-01-16', :ended_at => '2050-01-01', :dept_id => 13 })
curso.id = 114
curso.save! 
curso = Course.new({:code => '079', :name => 'FIC Espanhol para iniciantes', :nickname => 'Espanhol',  :goal => '', :mintime => '60', :maxtime => '60', :started_at => '2012-01-17', :ended_at => '2012-01-17', :dept_id => 13 })
curso.id = 115
curso.save! 
curso = Course.new({:code => '080', :name => 'FIC Italiano - para iniciantes', :nickname => 'Italiano',  :goal => '', :mintime => '60', :maxtime => '60', :started_at => '2012-01-16', :ended_at => '2050-01-01', :dept_id => 13 })
curso.id = 116
curso.save! 
curso = Course.new({:code => '081', :name => 'FIC Francês para iniciantes - Turma A', :nickname => 'Francês Turma A',  :goal => '', :mintime => '60', :maxtime => '60', :started_at => '2012-01-16', :ended_at => '2050-01-01', :dept_id => 13 })
curso.id = 117
curso.save! 
curso = Course.new({:code => '082', :name => 'FIC Francês para iniciantes - Turma B', :nickname => 'Francês Turma B',  :goal => '', :mintime => '60', :maxtime => '60', :started_at => '2012-01-17', :ended_at => '2050-01-01', :dept_id => 13 })
curso.id = 118
curso.save! 
curso = Course.new({:code => '083', :name => 'Técnico em Comércio', :nickname => 'Técnico em Comércio',  :goal => 'Formar profissionais da área de comércio', :mintime => '18', :maxtime => '48', :started_at => '2011-08-04', :ended_at => '2050-01-01', :dept_id => 37 })
curso.id = 119
curso.save! 
curso = Course.new({:code => '084', :name => 'CRF - Inglês noturno 2', :nickname => 'Ing Not. 2',  :goal => '', :mintime => '3', :maxtime => '3', :started_at => '2012-03-26', :ended_at => '2050-01-01', :dept_id => 29 })
curso.id = 120
curso.save! 
curso = Course.new({:code => '085', :name => 'Pós-Graduação em Gestão Pública', :nickname => 'Pós-Graduação em Gestão Pública',  :goal => '', :mintime => '420', :maxtime => '420', :started_at => '2012-02-29', :ended_at => '2050-01-01', :dept_id => 37 })
curso.id = 121
curso.save! 
curso = Course.new({:code => '086', :name => 'Inglês - Tag. Centro', :nickname => 'Inglês - Tag. Centro',  :goal => '', :mintime => '50', :maxtime => '50', :started_at => '2010-08-10', :ended_at => '2050-01-01', :dept_id => 37 })
curso.id = 122
curso.save! 
curso = Course.new({:code => '087', :name => 'FIC Espanhol para Copa', :nickname => 'FIC ESPANHOL COPA',  :goal => 'Alterar', :mintime => '100', :maxtime => '110', :started_at => '2012-03-26', :ended_at => '2012-12-12', :dept_id => 13 })
curso.id = 123
curso.save! 
curso = Course.new({:code => '088', :name => 'Teste Técnico subsequente', :nickname => 'Teste Técnico subsequente',  :goal => 'Teste Técnico subsequente', :mintime => '3', :maxtime => '5', :started_at => '2012-01-01', :ended_at => '2013-07-01', :dept_id => 13 })
curso.id = 124
curso.save! 
curso = Course.new({:code => '089', :name => 'FIC Francês para a Copa', :nickname => 'FIC Francês Copa',  :goal => '', :mintime => '100', :maxtime => '100', :started_at => '2012-03-26', :ended_at => '2012-07-31', :dept_id => 13 })
curso.id = 125
curso.save! 
curso = Course.new({:code => '090', :name => 'FIC Recepção Hoteleira', :nickname => 'FIC RECEP.HOTELEIRA',  :goal => '', :mintime => '220', :maxtime => '220', :started_at => '2012-03-26', :ended_at => '2050-01-01', :dept_id => 13 })
curso.id = 126
curso.save! 
curso = Course.new({:code => '091', :name => 'Técnico em Transações Imobiliárias', :nickname => 'TTI',  :goal => 'O curso Técnico em Transações Imobiliárias tem como objetivo principal capacitar os profissionais que já estão no mercado e os que nele pretendem se inserir, oferecendo prática aliana à teoria.', :mintime => '1', :maxtime => '3', :started_at => '2012-02-13', :ended_at => '2013-07-31', :dept_id => 29 })
curso.id = 128
curso.save! 
curso = Course.new({:code => '092', :name => 'Técnico em Cozinha', :nickname => 'TCZ',  :goal => 'O curso Técnico em Cozinha, como apresentado nessa proposta, tem como objetivo principal, capacitar os profissionais que já estão no mercado e os que nele pretendem se inserir.', :mintime => '1', :maxtime => '3', :started_at => '2012-07-30', :ended_at => '2013-12-20', :dept_id => 29 })
curso.id = 129
curso.save! 
curso = Course.new({:code => '093', :name => 'Atendimento ao Cliente - Setor Automotivo', :nickname => 'Atendimento ao Cliente - Setor Automotivo',  :goal => 'Contribuir para a compreensão dos aspectos necessários para a qualificação profissional relacionada a atendimento às necessidades dos clientes do setor automotivo.', :mintime => '120', :maxtime => '180', :started_at => '2012-03-20', :ended_at => '2012-07-27', :dept_id => 34 })
curso.id = 130
curso.save! 
curso = Course.new({:code => '094', :name => 'Técnico em Manutenção e Suporte em Informática.', :nickname => 'Técnico em Manutenção e Suporte em Informática.',  :goal => 'Formar profissionais de manutenção e suporte em informática', :mintime => '18', :maxtime => '48', :started_at => '2011-08-09', :ended_at => '2050-01-01', :dept_id => 11 })
curso.id = 14
curso.save! 
curso = Course.new({:code => '095', :name => 'Marcenaria Básica', :nickname => 'Marcenaria Básica',  :goal => 'Planeja a fabricação de móveis, pequenos objetos e seus componentes, bem como atua e interpreta\r
o processo de montagem e manutenção de mobiliário.\r
', :mintime => '1', :maxtime => '2', :started_at => '2011-08-15', :ended_at => '2050-01-01', :dept_id => 10 })
curso.id = 76
curso.save! 
curso = Course.new({:code => '096', :name => 'Técnico em Edificações', :nickname => 'Edificações',  :goal => 'O Técnico em Edificações, no exercício pleno de suas atribuições, deverá ser um indivíduo responsável, criativo, crítico, diligente, prudente, pontual, consciente da ética, com espírito de liderança', :mintime => '4', :maxtime => '8', :started_at => '2011-02-14', :ended_at => '2050-01-01', :dept_id => 10 })
curso.id = 57
curso.save! 
curso = Course.new({:code => '097', :name => 'Auxiliar administrativo', :nickname => 'AuxAdm',  :goal => 'capacitar pessoas para atuar como auxiliar administrativo em organizações, apresentando um conjunto de conhecimentos necessários para a execução das atividades e procedimentos administrativos.', :mintime => '90', :maxtime => '90', :started_at => '2011-04-25', :ended_at => '2011-07-07', :dept_id => 13 })
curso.id = 64
curso.save! 
curso = Course.new({:code => '098', :name => 'Técnico em Vestuário', :nickname => 'Vestuário',  :goal => 'Formar profissionais empreendedores, capazes de desenvolver atividades ou funções típicas da área, segundo os padrões de qualidade e produtividade requeridos pela natureza do trabalho do técnico.', :mintime => '4', :maxtime => '6', :started_at => '2011-08-15', :ended_at => '2011-12-20', :dept_id => 11 })
curso.id = 66
curso.save! 
curso = Course.new({:code => '099', :name => 'FIC Espanhol', :nickname => 'FIC Espanhol',  :goal => 'Capacitação em espanhol', :mintime => '4', :maxtime => '6', :started_at => '2011-09-26', :ended_at => '2050-01-01', :dept_id => 29 })
curso.id = 73
curso.save! 
curso = Course.new({:code => '100', :name => 'FIC Inglês', :nickname => 'FIC Inglês',  :goal => 'Capacitação em Inglês', :mintime => '4', :maxtime => '6', :started_at => '2011-09-26', :ended_at => '2011-12-23', :dept_id => 29 })
curso.id = 74
curso.save! 
curso = Course.new({:code => '101', :name => 'FIC Espanhol para Iniciantes', :nickname => 'FIC Espanhol',  :goal => '', :mintime => '30', :maxtime => '30', :started_at => '2011-11-08', :ended_at => '2050-01-01', :dept_id => 13 })
curso.id = 132
curso.save! 
curso = Course.new({:code => '102', :name => 'Alimentação Escolar', :nickname => 'Alimentação',  :goal => '', :mintime => '600', :maxtime => '600', :started_at => '2012-02-11', :ended_at => '2050-01-01', :dept_id => 13 })
curso.id = 134
curso.save! 
curso = Course.new({:code => '103', :name => 'Tecnólogo em Gestão Pública', :nickname => 'Tec.Gestão Pública',  :goal => '', :mintime => '150', :maxtime => '200', :started_at => '2012-07-01', :ended_at => '2050-01-01', :dept_id => 13 })
curso.id = 135
curso.save! 
curso = Course.new({:code => '104', :name => 'teste4', :nickname => 'teste4',  :goal => '', :mintime => '3', :maxtime => '3', :started_at => '2012-01-01', :ended_at => '2050-01-01', :dept_id => 12 })
curso.id = 136
curso.save! 
curso = Course.new({:code => '105', :name => 'Técnico em Gestão Escolar', :nickname => 'Gestão Escolar',  :goal => '', :mintime => '100', :maxtime => '100', :started_at => '2012-02-11', :ended_at => '2050-01-01', :dept_id => 13 })
curso.id = 137
curso.save! 
curso = Course.new({:code => '106', :name => 'Técnico em Infra-Estrutura Escolar', :nickname => 'Infra-Estrutura',  :goal => '', :mintime => '600', :maxtime => '600', :started_at => '2012-06-11', :ended_at => '2050-01-01', :dept_id => 13 })
curso.id = 138
curso.save!

#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('courses_id_seq', (select max(id) from courses), true);")