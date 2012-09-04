=begin
select :=>\ =>\''||||'\', :=>\''||||'\', :=>\''||||'\',   :dept=>Dept.find_by_name(\''||elemento_organizacional.nome||'\') },'  
from elemento_curricular, curso, elemento_organizacional
where elemento_curricular.curso_id = curso.id
and elemento_curricular.elemento_organizacional_id = elemento_organizacional.id 
order by 1;

-- comando shell
psql -U postgres -h localhost -d dbsiga-edu -c "" > disciplinas.txt

select ('
discipline = Discipline.new(
         {:name => \''||elemento_curricular.nome||'\', 
         :code => \''||elemento_curricular.codigo||'\', 
         :description => \''||elemento_curricular.descricao||'\',
         :goals => \''||objetivos||'\', 
         :workload => \''||carga_horaria||'\',   
         :credits => '||coalesce(credito,0)||',    
         :discipline_type_id => DisciplineType.find_by_description(\''||tipo_elemento_curricular||'\').id,   
         :course_id => '||curso_id||'
         })
discipline.id = '||elemento_curricular.id||'
discipline.save!         
       ') as comando
from elemento_curricular, curso, elemento_organizacional
where elemento_curricular.curso_id = curso.id
and elemento_curricular.elemento_organizacional_id = elemento_organizacional.id 
order by elemento_curricular.id;

--comando reduzido

select ('discipline = Discipline.new({:name => \''||elemento_curricular.nome||'\', :code => \''||elemento_curricular.codigo||'\', :description => \''||elemento_curricular.descricao||'\', :goals => \''||objetivos||'\', :workload => \''||carga_horaria||'\', :credits => '||coalesce(credito,0)||', :discipline_type_id => DisciplineType.find_by_description(\''||tipo_elemento_curricular||'\').id, :course_id => '||curso_id||', :dept_id => '||elemento_curricular.elemento_organizacional_id||'})
discipline.id = '||elemento_curricular.id||'
discipline.save!') as comando
from elemento_curricular, curso, elemento_organizacional
where elemento_curricular.curso_id = curso.id
and elemento_curricular.elemento_organizacional_id = elemento_organizacional.id 
order by elemento_curricular.id;


psql -U postgres -h localhost -d dbsiga-edu -c "select ('
discipline = Discipline.new(
         {:name => \''||elemento_curricular.nome||'\', 
         :code => \''||elemento_curricular.codigo||'\', 
         :description => \''||elemento_curricular.descricao||'\',
         :goals => \''||objetivos||'\', 
         :workload => \''||carga_horaria||'\',   
         :credits => '||coalesce(credito,0)||',    
         :discipline_type_id => DisciplineType.find_by_description(\''||tipo_elemento_curricular||'\').id,   
         :course_id => '||curso_id||'
         })
discipline.id = '||elemento_curricular.id||'
discipline.save!         
       ') as comando
from elemento_curricular, curso, elemento_organizacional
where elemento_curricular.curso_id = curso.id
and elemento_curricular.elemento_organizacional_id = elemento_organizacional.id 
order by elemento_curricular.id;" > seed_disciplinas


=end

Discipline.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('disciplines_id_seq', 1, false);")


discipline = Discipline.new(
         {:name => 'Biologia', 
         :code => 'BIO-01', 
         :description => 'Descrição Biologia',
         :goals => 'Objetivos Biologia', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 2
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Agente ambiental', 
         :code => 'AG01', 
         :description => 'Formar pessoas que viabilizem o cumprimento da legislação e a promoção da educação sanitária.',
         :goals => 'Capacitar profissionais para atuar com a educação ambiental em unidades de conservação e/ou preservação ambiental - escolas, ONG\'s, e demais órgãos - por meio de ações que viabilizem o cumprimento da legislação e a promoção da educação sanitária.', 
         :workload => '210',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Elemento Curricular'),   
         :course_id => 4,
         :dept_id => 10
         })
discipline.id = 3
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Vivência em Agropecuária em Bases Ecológicas', 
         :code => 'AGROE0100', 
         :description => 'Vivência em Agropecuária em Bases Ecológicas',
         :goals => 'Vivência em Agropecuária em Bases Ecológicas', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Elemento Curricular'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 5
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Agroecologia I', 
         :code => 'AGROE0101', 
         :description => 'Agroecologia I',
         :goals => 'Agroecologia I', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Elemento Curricular'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 6
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Cálculo Diferencial e Integral', 
         :code => 'AGROE0102', 
         :description => 'Cálculo Diferencial e Integral',
         :goals => 'Cálculo Diferencial e Integral', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Elemento Curricular'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 7
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Leitura e Produção de Textos', 
         :code => 'AGROE0103', 
         :description => 'Leitura e Produção de Textos',
         :goals => 'Leitura e Produção de Textos', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Elemento Curricular'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 8
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Química Aplicada à Agroecologia', 
         :code => 'AGROE0104', 
         :description => 'Química Aplicada à Agroecologia',
         :goals => 'Química Aplicada à Agroecologia', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Elemento Curricular'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 9
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Citologia e Microbiologia', 
         :code => 'AGROE0105', 
         :description => 'Citologia e Microbiologia',
         :goals => 'Citologia e Microbiologia', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Elemento Curricular'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 10
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Sociologia Rural', 
         :code => 'AGROE0106', 
         :description => 'Sociologia Rural',
         :goals => 'Sociologia Rural', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Elemento Curricular'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 11
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ciência do Solo I', 
         :code => 'AGROE0107', 
         :description => 'Ciência do Solo I',
         :goals => 'Ciência do Solo I', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Elemento Curricular'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 12
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Básica', 
         :code => 'INF', 
         :description => 'Preparar o aluno para utilizar as ferramentas computacionais',
         :goals => 'Formar o aluno para operar comupatores', 
         :workload => '14',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 4,
         :dept_id => 10
         })
discipline.id = 13
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética, direitos e deveres do trabalhador', 
         :code => 'EDT', 
         :description => 'pegar com o professor',
         :goals => 'pegar com o professor', 
         :workload => '10',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 4,
         :dept_id => 10
         })
discipline.id = 14
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fundamentos da Administração', 
         :code => 'FADM', 
         :description => 'Conhecimento básicos da administração das empresas e da gestão de pessoas.',
         :goals => 'Possibilitar ao aluno  conhecer os fundamentos da adm  para o desenvolvimento das competências e habilidades para o exercício da profissão.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Elemento Curricular'),   
         :course_id => 3,
         :dept_id => 13
         })
discipline.id = 15
discipline.save!         
       

discipline = Discipline.new(
         {:name => '.A arte de Vender', 
         :code => 'ARTVE', 
         :description => 'Possibilitar ao aluno o conhecimento dos saberes necessários para a prática de venda. ',
         :goals => 'Compreender os conceitos  e  atividade de vendas numa perspectiva sistêmica, visando superar obstáculos.', 
         :workload => '25',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Elemento Curricular'),   
         :course_id => 3,
         :dept_id => 13
         })
discipline.id = 16
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Técnicas de Vendas', 
         :code => 'TECVE', 
         :description => 'Conhecimento das diversas técnicas de vendas e sua importância para o negócio.',
         :goals => 'Desenvolver as habilidades necessárias para a função de vendedor.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Elemento Curricular'),   
         :course_id => 3,
         :dept_id => 13
         })
discipline.id = 17
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'O processo de Vendas', 
         :code => 'PROVE', 
         :description => 'Conhecimento de todo processo de vendas.',
         :goals => 'Possibilitar ao aluno o conhecimento dos conceitos e estrutura de vendas e pós-vendas, assim como, todo processo.', 
         :workload => '25',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Elemento Curricular'),   
         :course_id => 3,
         :dept_id => 13
         })
discipline.id = 18
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Noções de Informática', 
         :code => 'INFO', 
         :description => 'Conhecer a arquitetura básica de um computador e o pacote MSW Office 2007.',
         :goals => 'Possibilitar ao aluno o conhecimento de noções básicas de informática para melhorar seu desempenho como profissional de vendas.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Elemento Curricular'),   
         :course_id => 3,
         :dept_id => 13
         })
discipline.id = 19
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Redação e Comunicação', 
         :code => 'REDACO', 
         :description => 'Identificar as normas de redação comercial, reconhecendo a importância da  língua portuguesa.',
         :goals => 'Possibilitar ao alunos o conhecimento das normas de redação comercial, desenvolvendo as habilidades necessárias para um bom desempenho profissional.', 
         :workload => '30',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Elemento Curricular'),   
         :course_id => 3,
         :dept_id => 13
         })
discipline.id = 20
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Introdução ao Linux', 
         :code => 'IL', 
         :description => 'Introdução ao Linux',
         :goals => 'Capacitar os estudantes nas competências básicas de tecnologia de informação\r
\r
', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Elemento Curricular'),   
         :course_id => 6,
         :dept_id => 11
         })
discipline.id = 22
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'BrOffice.org', 
         :code => 'BROO', 
         :description => 'BrOffice.org',
         :goals => 'Conhecer o editor de textos BrOffice.org - Writer\r
e seus recursos de formatação, inserção de gráficos,\r
produção de malas diretas e textos sofisticados', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Elemento Curricular'),   
         :course_id => 6,
         :dept_id => 11
         })
discipline.id = 23
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Digitação', 
         :code => 'D', 
         :description => 'Digitação',
         :goals => 'Digitar com uma postura adequada, com agilidade\r
no processo da digitação do teclado alfanumérico\r
para atingir a média de digitação de 140 toques\r
por minuto.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Elemento Curricular'),   
         :course_id => 6,
         :dept_id => 11
         })
discipline.id = 24
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Disciplina Venda e Oós Venda', 
         :code => '123456', 
         :description => 'aaaa',
         :goals => 'asasas', 
         :workload => '160',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 3,
         :dept_id => 13
         })
discipline.id = 28
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'INFORMÁTICA BÁSICA', 
         :code => 'IB', 
         :description => 'Capacitar profissionais para atuar com a educação ambiental ',
         :goals => 'EM CONSTRUÇÃO', 
         :workload => '14',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 4,
         :dept_id => 10
         })
discipline.id = 29
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética, direitos e deveres do trabalhador', 
         :code => 'ET', 
         :description => 'Capacitar profissionais para atuar com a educação ambiental em unidades de conservação',
         :goals => 'EM CONSTRUÇÃO', 
         :workload => '10',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 4,
         :dept_id => 10
         })
discipline.id = 30
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Meio Ambiente e Sustentabilidade', 
         :code => 'MAS', 
         :description => 'Capacitar profissionais para atuar com a educação ambiental em unidades de conservação ',
         :goals => 'EM CONSTRUÇÃO', 
         :workload => '24',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 4,
         :dept_id => 10
         })
discipline.id = 31
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Legislação Ambiental', 
         :code => 'LA', 
         :description => 'EM CONSTRUÇÃO',
         :goals => 'EM CONSTRUÇÃO', 
         :workload => '30',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 4,
         :dept_id => 10
         })
discipline.id = 32
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Controle da poluição', 
         :code => 'CP', 
         :description => 'EM CONSTRUÇAO',
         :goals => 'EM CONSTRUÇAO', 
         :workload => '26',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 4,
         :dept_id => 10
         })
discipline.id = 33
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fundamentos da Dança', 
         :code => '8100101', 
         :description => 'Fundamentos Teóricos e Práticos da Dança.',
         :goals => '•    Compreender e diferenciar os conhecimentos científico, artístico e o senso comum;\r
•       Ter noções introdutórias da teoria da dança;\r
•       Reconhecer as qualidades do movimento que compõem a dança, segundo autores renomados da área;\r
•       Perceber a importância da arte e da expressão artística.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 35
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Práticas Corporais I', 
         :code => '8100102', 
         :description => 'Fundamentos da movimentação com base nas ações corporais básicas.',
         :goals => '•    Entender o corpo como meio de expressão artística;\r
•       Desenvolver consciência corporal e movimento consciente;', 
         :workload => '100',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 36
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Leitura e Produção de Texto I', 
         :code => '8100103', 
         :description => 'Domínio da Leitura e Produção de Textos.',
         :goals => 'Estabelecer uma totalidade de conhecimento textual do acadêmico visando a formação do profissional na área; Compreender a linguagem como instrumento indispensável tanto na aquisição de conhecimento em qualquer área do saber, para a participação nas mais diversas situações sociais de interlocução;', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 37
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fundamentos da Música I', 
         :code => '8100104', 
         :description => 'Elementos da teoria e percepção musical.',
         :goals => 'Estabelecer conceitos sobre Música e refletir a respeito de sua natureza epistemológica. Ser capaz de apreciar a Música Erudita, principalmente no que diz respeito a gêneros ligados ao universo da Dança. Compreender os fundamentos e os elementos básicos que compõem a Teoria da Música.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 38
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Anatomia Humana', 
         :code => '8100105', 
         :description => 'Estudo da Anatomia Humana para o movimento.\r
',
         :goals => '- Estudar, identificar e localizar as estruturas morfológicas fundamentais do corpo humano;\r
- Compreender os conceitos básicos da Anatomia Humana e relacioná-los com a sua prática profissional;\r
- Compreender o processo de formação do movimento humano;', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 39
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fundamentos da Educação', 
         :code => '8100106', 
         :description => 'Fundamentos da Educação com base no seu desenvolvimento histórico.',
         :goals => 'Completar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 40
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Práticas Integradoras I', 
         :code => '8100107', 
         :description => 'Completar',
         :goals => 'Completar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 41
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Física Aplicada à Agroecologia', 
         :code => 'AGROE0202', 
         :description => 'Física Aplicada à Agroecologia',
         :goals => 'Física Aplicada à Agroecologia', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 45
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Anatomia e Fisiologia Animal', 
         :code => 'AGROE0203', 
         :description => 'Anatomia e Fisiologia Animal',
         :goals => 'Anatomia e Fisiologia Animal', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 46
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Vivência em Agropecuária de Base Ecológica', 
         :code => 'AGROE 0400', 
         :description => 'Vivência em Agropecuária de Base Ecológica',
         :goals => 'Vivência em Agropecuária de Base Ecológica', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 47
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Educação Ambiental', 
         :code => 'AGROE0204', 
         :description => 'Educação Ambiental',
         :goals => 'Educação Ambiental', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 48
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ecossistemas Brasileiros e Bioma Cerrado', 
         :code => 'AGROE0205', 
         :description => 'Ecossistemas Brasileiros e Bioma Cerrado',
         :goals => 'Ecossistemas Brasileiros e Bioma Cerrado', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 49
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Vivência em Agropecuária em Bases Ecológicas', 
         :code => 'AGROE 0300', 
         :description => 'Vivência em Agropecuária em Bases Ecológicas',
         :goals => 'Vivência em Agropecuária em Bases Ecológicas', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 50
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Empreendedorismo e economia solidária', 
         :code => 'AGROE0507', 
         :description => 'Empreendedorismo e economia solidária',
         :goals => 'Empreendedorismo e economia solidária', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 51
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Bem-Estar Animal', 
         :code => 'AGROE0206', 
         :description => 'Bem-Estar Animal',
         :goals => 'Bem-Estar Animal', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 52
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Silvicultura ', 
         :code => 'AGROE 0401', 
         :description => 'Silvicultura ',
         :goals => 'Silvicultura ', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 53
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fruticultura e Cafeicultura em bases agroecológicas', 
         :code => 'AGROE 0500', 
         :description => 'Fruticultura e Cafeicultura em bases agroecológicas',
         :goals => 'Fruticultura e Cafeicultura em bases agroecológicas', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 54
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Metodologia Científica', 
         :code => 'AGROE 0301', 
         :description => 'Metodologia Científica',
         :goals => 'Metodologia Científica', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 55
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ciência do Solo II (Microbiologia do Solo)', 
         :code => 'AGROE0207', 
         :description => 'Ciência do Solo II (Microbiologia do Solo)',
         :goals => 'Ciência do Solo II (Microbiologia do Solo)', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 56
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Apicultura, Meliponicultura e Minhocultura em bases agroecológicas', 
         :code => 'AGROE0208', 
         :description => 'Apicultura, Meliponicultura e Minhocultura em bases agroecológicas',
         :goals => 'Apicultura, Meliponicultura e Minhocultura em bases agroecológicas', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 57
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Sanidade animal', 
         :code => 'AGROE 0504', 
         :description => 'Sanidade animal',
         :goals => 'Sanidade animal', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 58
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Cartografia e Topografia', 
         :code => 'AGROE0302', 
         :description => 'Cartografia e Topografia',
         :goals => 'Cartografia e Topografia', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 59
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Olericultura e Plantas Medicinais, Aromáticas e Condimentares em Bases Agroecológicas', 
         :code => 'AGROE 0402', 
         :description => 'Olericultura e Plantas Medicinais, Aromáticas e Condimentares em Bases Agroecológicas',
         :goals => 'Olericultura e Plantas Medicinais, Aromáticas e Condimentares em Bases Agroecológicas', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 60
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Manejo de Culturas Graníferas em Bases Agroecológicas  ', 
         :code => 'AGROE 0501', 
         :description => 'Manejo de Culturas Graníferas em Bases Agroecológicas  ',
         :goals => 'Manejo de Culturas Graníferas em Bases Agroecológicas  ', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 61
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Máquinas e Equipamentos Agrícolas na Agricultura Familiar', 
         :code => 'AGROE 0303', 
         :description => 'Máquinas e Equipamentos Agrícolas na Agricultura Familiar',
         :goals => 'Máquinas e Equipamentos Agrícolas na Agricultura Familiar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 62
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Suinocultura em Bases Agroecológicas', 
         :code => 'AGROE 0403', 
         :description => 'Suinocultura em Bases Agroecológicas',
         :goals => 'Suinocultura em Bases Agroecológicas', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 63
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Genética Aplicada à Agropecuária', 
         :code => 'AGROE 0404', 
         :description => 'Genética Aplicada à Agropecuária',
         :goals => 'Genética Aplicada à Agropecuária', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 64
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ciência do Solo III (Fertilidade do Solo e Nutrição de Plantas)', 
         :code => 'AGROE 0304', 
         :description => 'Ciência do Solo III (Fertilidade do Solo e Nutrição de Plantas)',
         :goals => 'Ciência do Solo III (Fertilidade do Solo e Nutrição de Plantas)', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 65
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ovino e caprinocultura em bases agroecológicas', 
         :code => 'AGROE 0502', 
         :description => 'Ovino e caprinocultura em bases agroecológicas',
         :goals => 'Ovino e caprinocultura em bases agroecológicas', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 66
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Pré-Projeto de Conclusão de Curso', 
         :code => 'AGROE 0508', 
         :description => 'Pré-Projeto de Conclusão de Curso',
         :goals => 'Pré-Projeto de Conclusão de Curso', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 67
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ciênca do Solo IV (Manejo e Conservação do Solo e da Água)', 
         :code => 'AGROE 0305', 
         :description => 'Ciênca do Solo IV (Manejo e Conservação do Solo e da Água)\r
',
         :goals => 'Ciênca do Solo IV (Manejo e Conservação do Solo e da Água)\r
', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 68
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Manejo da Irrigação ', 
         :code => 'AGROE 0405', 
         :description => 'Manejo da Irrigação ',
         :goals => 'Manejo da Irrigação ', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 69
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Bovinocultura em bases agroecológicas', 
         :code => 'AGROE 0503', 
         :description => 'Bovinocultura em bases agroecológicas',
         :goals => 'Bovinocultura em bases agroecológicas', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 70
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fitopatologia e Manejo de Plantas Espontâneas em Bases Agroecológicas', 
         :code => 'AGROE 0306', 
         :description => 'Fitopatologia e Manejo de Plantas Espontâneas em Bases Agroecológicas',
         :goals => 'Fitopatologia e Manejo de Plantas Espontâneas em Bases Agroecológicas', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 71
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Políticas públicas, planejamento e desenvolvimento rural sustentável', 
         :code => 'AGROE 0506', 
         :description => 'Políticas públicas, planejamento e desenvolvimento rural sustentável',
         :goals => 'Políticas públicas, planejamento e desenvolvimento rural sustentável', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 72
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Projetos de Instalações Agropecuárias ', 
         :code => 'AGROE 0406', 
         :description => 'Projetos de Instalações Agropecuárias ',
         :goals => 'Projetos de Instalações Agropecuárias ', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 73
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Nutrição Animal e Forragicultura em Bases Agroecológicas', 
         :code => 'AGROE 0307', 
         :description => 'Nutrição Animal e Forragicultura em Bases Agroecológicas',
         :goals => 'Nutrição Animal e Forragicultura em Bases Agroecológicas', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 74
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Saneamento Ambiental Rural', 
         :code => 'AGROE 0505', 
         :description => 'Saneamento Ambiental Rural',
         :goals => 'Saneamento Ambiental Rural', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 75
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Comunicação e Extensão Rural', 
         :code => 'AGROE 0407', 
         :description => 'Comunicação e Extensão Rural',
         :goals => 'Comunicação e Extensão Rural', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 76
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Avicultura em Bases Agroecológicas', 
         :code => 'AGROE 0308', 
         :description => 'Avicultura em Bases Agroecológicas',
         :goals => 'Avicultura em Bases Agroecológicas', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 77
discipline.save!         
       

discipline = Discipline.new(
         {:name => ' Entomologia agrícola em Bases Agroecológicas', 
         :code => 'AGROE 0309', 
         :description => ' Entomologia agrícola em Bases Agroecológicas',
         :goals => ' Entomologia agrícola em Bases Agroecológicas', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 78
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Agroecologia II', 
         :code => 'AGROE 0600', 
         :description => 'Agroecologia II',
         :goals => 'Agroecologia II', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 79
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Piscicultura', 
         :code => 'AGROE 0601', 
         :description => 'Piscicultura',
         :goals => 'Piscicultura', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 80
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Administração e Economia Rural ', 
         :code => 'AGROE 0602', 
         :description => 'Administração e Economia Rural ',
         :goals => 'Administração e Economia Rural ', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 81
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fontes Alternativas de Energia', 
         :code => 'AGROE 0603', 
         :description => 'Fontes Alternativas de Energia',
         :goals => 'Fontes Alternativas de Energia', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 82
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão Ambiental  ', 
         :code => 'AGROE 0604', 
         :description => 'Gestão Ambiental  ',
         :goals => 'Gestão Ambiental  ', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 83
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Certificação de Sistemas', 
         :code => 'AGROE 0605', 
         :description => 'Certificação de Sistemas',
         :goals => 'Certificação de Sistemas', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 84
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Processamento de Produtos Agropecuários em Bases Agroecológicas', 
         :code => 'AGROE 0606', 
         :description => 'Processamento de Produtos Agropecuários em Bases Agroecológicas',
         :goals => 'Processamento de Produtos Agropecuários em Bases Agroecológicas', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 85
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Saúde Pública', 
         :code => 'AGROE 0607', 
         :description => 'Saúde Pública',
         :goals => 'Saúde Pública', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 86
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Vivência em Agropecuária em Bases Ecológicas', 
         :code => 'AGROE0200', 
         :description => 'Vivência em Agropecuária em Bases Ecológicas',
         :goals => 'Vivência em Agropecuária em Bases Ecológicas', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 2,
         :dept_id => 19
         })
discipline.id = 87
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Introdução a Processamento de Dados', 
         :code => 'IPD', 
         :description => 'IPD',
         :goals => 'IPD', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 88
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Estudo Básico de Sistemas de Software', 
         :code => 'EBSS', 
         :description => 'EBSS',
         :goals => 'EBSS', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 89
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Introdução a Redes de Computadores', 
         :code => 'IRC', 
         :description => 'IRC',
         :goals => 'IRC', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 90
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Introdução a Sistemas Operacionais', 
         :code => 'ISO', 
         :description => 'ISO',
         :goals => 'ISO', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 91
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Eletricidade Aplicada à Informática', 
         :code => 'ELET', 
         :description => 'ELET',
         :goals => 'ELET', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 92
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética Aplicada à Informática', 
         :code => 'ETICA', 
         :description => 'ETICA',
         :goals => 'ETICA', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 93
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Empreendedorismo e Vendas', 
         :code => 'EMPRE', 
         :description => 'EMPRE',
         :goals => 'EMPRE', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 94
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português Instrumental', 
         :code => 'PORT', 
         :description => 'PORT',
         :goals => 'PORT', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 95
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Inglês Instrumental', 
         :code => 'ING', 
         :description => 'Inglês',
         :goals => 'Inglês', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 96
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Administração aplicada à Logística', 
         :code => 'ADMIN1', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 97
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português Instrumental ', 
         :code => 'PORTINS', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 98
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética e Responsabilidade Social', 
         :code => 'ETICARESP', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 99
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Aplicada', 
         :code => 'INFORMAPL', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 100
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática Financeira', 
         :code => 'MATIFIN', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 101
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Sociologia do Trabalho', 
         :code => 'SOCIOL', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 102
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Contabilidade', 
         :code => 'CONTAB', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 103
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fundamentos de Logística', 
         :code => 'FUNDLOG', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 104
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Estatística Aplicada', 
         :code => 'ESTAPL', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 105
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética e Responsabilidade Social', 
         :code => 'ERS', 
         :description => 'Aborda aspectos e conceitos de ética e responsabilidade social, com foco na área de eventos.',
         :goals => 'A componente busca formar o educando de modo que o mesmo possa exercer a profissão de forma ética e com responsabilidade social.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 17,
         :dept_id => 13
         })
discipline.id = 107
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Prática de Eventos', 
         :code => 'PE', 
         :description => 'Disciplina interdisciplinar e prática.',
         :goals => 'Refletir sobre a prãtica de eventos;\r
Planejar e realizar o evento do final do semestre.', 
         :workload => '30',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 17,
         :dept_id => 13
         })
discipline.id = 109
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Aspectos e Dimensões do Turismo de Eventos', 
         :code => 'ADTE', 
         :description => 'Compreender o fenômeno turístico e sua interface com o setor de eventos.',
         :goals => 'Estudar as dimensões e fundamentos do turismo, seus impactos e suas relações com o setor de eventos.', 
         :workload => '30',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 17,
         :dept_id => 13
         })
discipline.id = 110
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Relações Interpessoais', 
         :code => 'RI', 
         :description => 'Desenvolver habilidades de relações interpessoais no ambiente de trabalho.',
         :goals => 'Saber trabalhar em equipe e resolver conflitos interpessoais.', 
         :workload => '30',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 17,
         :dept_id => 13
         })
discipline.id = 111
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português Instrumental', 
         :code => 'PI', 
         :description => 'Conhecer, compreender e operacionalizar as técnicas e processos de uso da linguagem oral e escrita.',
         :goals => 'Reconhecer, aplicar e opercaionalizar as técnicas e os processos de uso da linguagem para a comunicação com com os clientes internos e externos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 17,
         :dept_id => 13
         })
discipline.id = 112
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática básica', 
         :code => 'INFOBÁSICA', 
         :description => 'Operar o computador com a finalidade de auxiliar em eventos.',
         :goals => 'Utilizar as ferramentas para produção de planilhas, documentos e folders de divulgação;Conhecer as ferramentas básicas da informática.', 
         :workload => '30',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 17,
         :dept_id => 13
         })
discipline.id = 113
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Aspectos Culturais em Eventos', 
         :code => 'ACE', 
         :description => 'Compreender a interface entre cultura e eventos. ',
         :goals => 'Detectar os aspectos referentes ao patrimônio e sua atratividade para a realização de eventos.', 
         :workload => '30',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 17,
         :dept_id => 13
         })
discipline.id = 114
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Noções de Eventos', 
         :code => 'NE', 
         :description => 'Dominar as técnicas de planejamento e organização de eventos.',
         :goals => 'Dominar as técnicas de planejamento e organização de eventos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 17,
         :dept_id => 13
         })
discipline.id = 115
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Administração de Empresas de Eventos', 
         :code => 'AEE', 
         :description => 'Mostrar a organização e o controle dos eventos como negócios.',
         :goals => 'Compreender a dinâmica dos eventos como negócios e compreender os procedimentos para abertura e controle das empresas de eventos.', 
         :workload => '30',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 17,
         :dept_id => 13
         })
discipline.id = 116
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Noções de Administração', 
         :code => 'NADMIN', 
         :description => 'a',
         :goals => 'a', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 21,
         :dept_id => 11
         })
discipline.id = 117
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Planejamento Organizacional', 
         :code => 'PLANORG', 
         :description => 'a',
         :goals => 'a', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 21,
         :dept_id => 11
         })
discipline.id = 118
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Empreendedorismo', 
         :code => 'EMPREEND', 
         :description => 'a',
         :goals => 'a', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 21,
         :dept_id => 11
         })
discipline.id = 119
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão de Pessoas', 
         :code => 'GPESSOAS', 
         :description => 'a',
         :goals => 'a', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 21,
         :dept_id => 11
         })
discipline.id = 120
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética e Responsabilidade Social', 
         :code => 'ETICARESPSOCIAL', 
         :description => 'a',
         :goals => 'a', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 21,
         :dept_id => 11
         })
discipline.id = 121
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informatica Aplicada às Atividades Comerciais', 
         :code => 'INFORMATICAAPLICADA', 
         :description => 'a',
         :goals => 'a', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 21,
         :dept_id => 11
         })
discipline.id = 122
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português Instrumental', 
         :code => 'PORTUGUESINSTRUMENT', 
         :description => 'a',
         :goals => 'a', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 21,
         :dept_id => 11
         })
discipline.id = 123
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Legislação Empresarial', 
         :code => 'LEGISLACAO', 
         :description => 'a',
         :goals => 'a', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 21,
         :dept_id => 11
         })
discipline.id = 124
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Básica', 
         :code => 'INFB-I', 
         :description => 'Utilização de computadores e seus periféricos.',
         :goals => 'Utilizar os principais softwares básicos, utilitários e aplicativos.\r
Utilizar editores de textos, planilhas eletrônicas e aplicativos de apresentação.\r
Pesquisar e obter informações na Internet.', 
         :workload => '33',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 125
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português Instrumental', 
         :code => 'POI-I', 
         :description => 'Compreensão e utilização da língua portuguesa.',
         :goals => 'Relacionar as variedades lingüísticas a situações específicas de uso social.\r
Reconhecer os usos da norma padrão da língua portuguesa nas diferentes situações de comunicação.\r
Utilizar estratégias e procedimentos de leitura para a compreensão e interpretação de textos.', 
         :workload => '33',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 126
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Legislação Ambiental', 
         :code => 'LEA-I', 
         :description => 'Identificação das bases políticas, conceituais, filosóficas e ideológicas .',
         :goals => 'Identificar a estrutura da Política Nacional do Meio Ambiente.\r
Identificar os principais fundamentos da Lei de crimes ambientais.', 
         :workload => '33',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 127
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Educação Ambiental', 
         :code => 'EDA-I', 
         :description => 'Identificação das bases políticas, conceituais, filosóficas e ideológicas da educação',
         :goals => 'Promover subsídios metodológicos e teóricos para uma compreensão integrada e ações concretas no campo da Educação Ambiental.\r
', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 128
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Meio Ambiente e Sustentabilidade', 
         :code => 'MAS-I', 
         :description => 'Identificação e apreensão dos fatores ambientais.',
         :goals => 'Descrever os conceitos de meio ambiente e sustentabilidade.', 
         :workload => '33',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 129
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Comunicação e Relacionamento Interpessoal no Trabalho', 
         :code => 'CRI-I', 
         :description => 'Desenvolvimento de atitudes que favoreçam o desempenho e a qualidade das relações no trabalho.',
         :goals => 'Identificar os formadores e influenciadores individuais e coletivos do processo de comunicação.', 
         :workload => '33',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 130
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Programa Interno de Gerenciamento', 
         :code => 'PIG-I', 
         :description => 'Análise e interpretação das peculiaridades do gerenciamento de resíduos sólidos',
         :goals => 'Elaborar plano interno de gerenciamento de resíduos.', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 131
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Higiene e Segurança no Trabalho', 
         :code => 'HST-I', 
         :description => 'Sistematização de hábitos relacionados à saúde humana.',
         :goals => 'Identificar os fundamentos de higiene e segurança do trabalho.', 
         :workload => '33',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 132
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética e Responsabilidade Social', 
         :code => 'ERS-I', 
         :description => 'Desenvolver atitudes que favoreçam o desempenho e da qualidade das relações no trabalho.',
         :goals => 'Identificar e apreender as diferenças que constituem as identidades pessoais.', 
         :workload => '17',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 133
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Organização da Produção', 
         :code => 'ORP-II', 
         :description => 'Interpretação de dados e informações referentes à organização e ao gerenciamento da produção.',
         :goals => 'Apreender as noções básicas de Organização, Sistemas e Métodos.', 
         :workload => '33',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 134
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Administração de Centros de Reciclagem', 
         :code => 'ACR-II', 
         :description => 'Compreensão e desenvolvimento de processos de gerenciamento de centros de reciclagem.',
         :goals => 'Identificar as formas de divisões das empresas através de departamentos ou setores e quais suas respectivas atribuições.', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 135
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Instalações de Centro de Triagem', 
         :code => 'ICT-III', 
         :description => 'Aplicar os conhecimentos em situações cotidianas do mundo produtivo e do trabalho em reciclagem.',
         :goals => 'Verificar a adequação das instalações em relação ás normas de uso do solo.', 
         :workload => '67',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 136
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Desenho', 
         :code => 'DES-III', 
         :description => 'Utilização do desenho como ferramenta facilitadora.',
         :goals => 'Executar representações e planos utilizando-se de métodos de perspectiva simplificada.', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 137
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão de Custos', 
         :code => 'GEC-III', 
         :description => 'Gerenciamento de custos identificando sua relação com a formação de preços.',
         :goals => 'Calcular e estruturar a formação de preços.', 
         :workload => '33',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 138
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Especificação de Equipamentos', 
         :code => 'ESE-III', 
         :description => 'Apropriação de conhecimentos aplicando-os em situações cotidianas do mundo produtivo e do trabalho.',
         :goals => 'Planejar estruturas, maquinários e equipamentos de levantamento e movimentação de materiais.\r
', 
         :workload => '33',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 139
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Manutenção e Operação de Equipamentos', 
         :code => 'MOE-III', 
         :description => ' Fazer a instalação e manutenção de equipamentos de galpões de triagem.',
         :goals => 'Operar e analisar o funcionamento de máquinas operatrizes, voltadas ao processo de reciclagem.', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 140
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Empreendedorismo e captação de recursos', 
         :code => 'ECR-III', 
         :description => 'Compreensão e desenvolvimento de processos de gerenciamento de centros de reciclagem.',
         :goals => 'Identificar e formalizar recursos com o objetivo de detectar as necessidades e desejos dos clientes.', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 141
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Educação e Saúde', 
         :code => 'EDS-III', 
         :description => 'Sistematização de hábitos relacionados à saúde humana.',
         :goals => 'Utilizar estratégias que estimulem a organização social para a resolução de problemas relativos à saúde.', 
         :workload => '17',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 142
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gerenciamento de Resíduos Sólidos', 
         :code => 'GRS-IV', 
         :description => 'Intervir de maneira que resultem no aproveitamento de resíduos sólidos .',
         :goals => 'Aplicar normas relacionadas a resíduos sólidos urbanos.', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 143
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Manejo de Resíduos Recicláveis', 
         :code => 'MRR-IV', 
         :description => 'Intervir  de maneira que resultem no aproveitamento de resíduos sólidos.',
         :goals => 'Executar processos relacionados a resíduos recicláveis domésticos e comerciais.', 
         :workload => '33',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 144
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Manejo de Resíduos Especiais', 
         :code => 'MRE-IV', 
         :description => 'Intervir de maneira  que resultem no aproveitamento de resíduos sólidos e no empreendimento.',
         :goals => 'Apreender os procedimentos relacionados à destinação de resíduos especiais.', 
         :workload => '33',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 145
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Manejo de Resíduos Orgânicos', 
         :code => 'MRO-IV', 
         :description => 'Intervir de maneira  que resultem no aproveitamento de resíduos sólidos e no empreendimento.',
         :goals => 'Identificar os mecanismos físico-químicos e biológicos da degradação dos resíduos orgânicos.', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 146
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Manejo de Resíduos Inertes', 
         :code => 'MRI-IV', 
         :description => 'Intervir de maneira que resultem no aproveitamento de resíduos sólidos e no empreendimento.',
         :goals => 'Classificar os resíduos de construção e demolição (RCD).', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 147
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão Ambiental', 
         :code => 'GEA-IV', 
         :description => 'Identificação e apreensão dos fatores ambientais.',
         :goals => 'Identificar os diferentes impactos ambientais oriundos das atividades antrópicas.', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 148
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Desenvolvimento de Produtos', 
         :code => 'REC-DPRO', 
         :description => 'Criar estratégias que possam convergir para o desenvolvimento de produto sustentável.',
         :goals => 'Reconhecer as influências dos processos econômicos e sociais ocorridos a partir do século XIX na geração de correntes estéticas e consequente criação de produtos.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 149
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática Aplicada', 
         :code => 'MAT_AUM', 
         :description => 'Matemática Aplicada à mecânica',
         :goals => 'Conhecer as operações matemáticas .', 
         :workload => '18',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 27,
         :dept_id => 10
         })
discipline.id = 150
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Metrologia', 
         :code => 'MET_AUM', 
         :description => 'Metrologia aplicada à Mecânica.',
         :goals => 'Conhecer ferramentas de medição.\r
', 
         :workload => '16',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 27,
         :dept_id => 10
         })
discipline.id = 151
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português', 
         :code => 'POR_MOV', 
         :description => 'Português aplicado a Projeto, Montagem e Manutenção de Móveis.',
         :goals => 'Elaborar textos aplicando as normas da língua adequadamente\r
Comunicar-se com clareza e coerência argumentativa', 
         :workload => '12',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 26,
         :dept_id => 10
         })
discipline.id = 152
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Motor de combustão interna', 
         :code => 'MCI_AUM', 
         :description => 'Motor de combustão Interna.',
         :goals => 'Conhecer funcionamento do motor diesel', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 27,
         :dept_id => 10
         })
discipline.id = 153
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Manutenção', 
         :code => 'MAN_AUM', 
         :description => 'Manutenção da mecânica a diesel.',
         :goals => 'Conhecer o sistema de manutenção', 
         :workload => '16',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 27,
         :dept_id => 10
         })
discipline.id = 154
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática Aplicada', 
         :code => 'MAT_MOV', 
         :description => 'Matemática Aplicada a Projeto, Montagem Manutenção de Móveis.',
         :goals => 'Conhecer as operações matemáticas ', 
         :workload => '16',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 26,
         :dept_id => 10
         })
discipline.id = 155
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Sistema de injeção', 
         :code => 'SIJ_AUM', 
         :description => 'Sistemas de Injeção dos motores a diesel.',
         :goals => 'Conhecer o funcionamento sistema de injeção', 
         :workload => '10',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 27,
         :dept_id => 10
         })
discipline.id = 156
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Metrologia', 
         :code => 'MET_MOV', 
         :description => 'Metrologia aplicada a Projeto, Montagem e manutenção de Móveis',
         :goals => 'Conhecer ferramentas de medição', 
         :workload => '16',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 26,
         :dept_id => 10
         })
discipline.id = 157
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Sistema elétrico automotivo', 
         :code => 'SEA_AUM', 
         :description => 'Sistema Eletrico Automotivo na mecânica a diesel.',
         :goals => 'Conhecer o funcionamento básico do circuito elétrico', 
         :workload => '24',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 27,
         :dept_id => 10
         })
discipline.id = 158
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Sistema de transmissão', 
         :code => 'SIT_AUM', 
         :description => 'Sistemas de transmissão na mecânica a diesel.',
         :goals => 'Identificar sistemas de transmissão', 
         :workload => '12',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 27,
         :dept_id => 10
         })
discipline.id = 159
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Madeira e Derivados', 
         :code => 'MAD_MOV', 
         :description => 'Madeira e Derivados aplicada a Projeto, Montagem e Manutenção de Móveis.',
         :goals => 'Compreender as diferenças anatômicas da madeira\r
Conhecer os tipos de painéis de madeira existentes', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 26,
         :dept_id => 10
         })
discipline.id = 160
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Inspeção periódica', 
         :code => 'IPE_AUM', 
         :description => 'Inspeção períodica de mecânica a diesel.',
         :goals => 'Elaborar inspeção diária.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 27,
         :dept_id => 10
         })
discipline.id = 161
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Controle da Qualidade', 
         :code => 'CQ_MOV', 
         :description => 'Controle da Qualidade aplicada a Projeto, Montagem e manutenção de Móveis.',
         :goals => 'Preparar os processos de planejamento da produção aliados à avaliação da qualidade do produto final.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 26,
         :dept_id => 10
         })
discipline.id = 162
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Sistema de freios', 
         :code => 'SIF_AUM', 
         :description => 'Sistemas de freio na mecânica a diesel.',
         :goals => 'Identificar sistemas de freios.', 
         :workload => '12',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 27,
         :dept_id => 10
         })
discipline.id = 163
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ergonomia', 
         :code => 'ERG_MOV', 
         :description => 'Ergonomia aplicada a Projeto, Montagem e manutenção de Móveis.',
         :goals => 'Aplicar os conceitos ergonômicos no desenvolvimento de móveis, pequenos objetos e seus componentes.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 26,
         :dept_id => 10
         })
discipline.id = 164
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Sistema de suspensão', 
         :code => 'SIS_AUM', 
         :description => 'Sistemas de suspensão na mecânica a diesel.',
         :goals => 'Elaborar planilhas de manutenção', 
         :workload => '12',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 27,
         :dept_id => 10
         })
discipline.id = 165
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Formação de Preço', 
         :code => 'FP_MOV', 
         :description => 'Formação de Preço aplicada a Projeto, montagem e Manutenção de Móveis.',
         :goals => 'Identificar os custos existentes na composição dos preços.\r
Estabelecer relação de custos na formação de preços. \r
Compreender o processo de formação de preço. \r
Gerenciar custos.', 
         :workload => '16',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 26,
         :dept_id => 10
         })
discipline.id = 166
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Liderança e Relacionamento Interpessoal ', 
         :code => 'LRI_AUM', 
         :description => 'Liderança e relacionamento interpessoal aplicada a mecânica a diesel.',
         :goals => 'Conhecer os conceitos de relacionamento interpessoal.', 
         :workload => '12',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 27,
         :dept_id => 10
         })
discipline.id = 167
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Higiene e Segurança do Trabalho', 
         :code => 'HST_AUM', 
         :description => 'Higiene e segurança do trabalho aplicado a mecanica a diesel.',
         :goals => 'Praticar as normas de saúde e segurança no trabalho', 
         :workload => '18',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 27,
         :dept_id => 10
         })
discipline.id = 168
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Desenho Técnico e Detalhamento para Produção', 
         :code => 'DT_MOV', 
         :description => 'Desenho Técnico e Detalhamento para Produção Aaplicada a Projeto, Montagem e Manutenção de Móveis.',
         :goals => 'Interpretar ,Manusear,Ler e Criar .', 
         :workload => '36',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 26,
         :dept_id => 10
         })
discipline.id = 169
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Relatórios e Documentação', 
         :code => 'RED_AUM', 
         :description => 'Relatórios e documentação relacionados a mecânica a diesel.',
         :goals => 'Preencher documentos relativos a serviços na área de eletricidade', 
         :workload => '12',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 27,
         :dept_id => 10
         })
discipline.id = 170
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ginástica Laboral', 
         :code => 'GIL_AUM', 
         :description => 'Ginástica Laboral na mecânica a diesel.',
         :goals => 'Praticar ginástica laboral\r
\r
', 
         :workload => '12',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 27,
         :dept_id => 10
         })
discipline.id = 171
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Processo de Fabricação e montagem de móveis', 
         :code => 'PF_MOV', 
         :description => 'Processo de Fabricação e montagem de móveis aplicada a Projeto , Montagem e Manutenção de Móveis.',
         :goals => 'Conhecer os tipos de máquinas para confecção de móveis\r
Planejar o fluxo de operações da produção de móveis e resíduos\r
Executar a montagem de móveis corretamente\r
Praticar as normas de saúde e segurança no trabalho\r
', 
         :workload => '48',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 26,
         :dept_id => 10
         })
discipline.id = 172
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gerenciamento de Resíduos de manutenção', 
         :code => 'GRM_AUM', 
         :description => 'Gerenciamento de resíduos de manutenção aplicados a mecânica a diesel.',
         :goals => 'Praticar ações para conservação dos recursos naturais', 
         :workload => '12',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 27,
         :dept_id => 10
         })
discipline.id = 173
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Manutenção e Reparo de Máquinas e Móveis', 
         :code => 'RP', 
         :description => 'Manutenção e Reparo de Máquinas e Móveis aplicado a Projeto, Montagem e Manutenção de Móveis.',
         :goals => 'Conhecer os tipos de máquinas para confecção de móveis e seus processos de manutenção.', 
         :workload => '48',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 26,
         :dept_id => 10
         })
discipline.id = 174
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética, direitos e deveres do trabalhador', 
         :code => 'EDT_AUM', 
         :description => '\r
\r
\r
Ética, direitos e deveres do trabalhador aplicados a mecânica a diesel.\r
',
         :goals => 'Agir com ética e responsabilidade no trabalho.', 
         :workload => '12',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 27,
         :dept_id => 10
         })
discipline.id = 175
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Básica ', 
         :code => 'INFB_AUM', 
         :description => 'Informática básica aplicada a mecânica a diesel.',
         :goals => 'Realizar as principais tarefas de editores de textos.', 
         :workload => '14',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 27,
         :dept_id => 10
         })
discipline.id = 176
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Currículo e Planejamento', 
         :code => 'CURPLAN', 
         :description => 'Aborda a proposta da integração curricular para o PROEJA FIC  e a interdisciplinaridade. ',
         :goals => 'Analisar e produzir planos de curso integrados na perspectiva do PROEJA FIC - 2º Segmento do Ensino Fundamental.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 30,
         :dept_id => 13
         })
discipline.id = 177
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Planejamento e Competências', 
         :code => 'PLANCOM', 
         :description => 'Trata da elaboração de projetos interdisciplimares e da construção de competências.',
         :goals => 'Elaborar e desenvolver projetos integrados e interdisciplinares.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 30,
         :dept_id => 13
         })
discipline.id = 178
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Autoestima e Aprendizagem Significativa', 
         :code => 'AAS', 
         :description => 'Trata dos aspectos vivenciais do aprendiz e suas relações frente ao desenvolvimento de competencias.',
         :goals => 'Relacionar o desenvolvimento da autoestima e a aprendizagem. ', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 30,
         :dept_id => 13
         })
discipline.id = 179
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português Instrumental', 
         :code => 'POI_AA', 
         :description => 'Português contextualizado ao fic agente ambiental.',
         :goals => 'Elaborar textos aplicando as normas da língua adequadamente.\r
Comunicar-se com clareza e coerência argumentativa.\r
', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 31,
         :dept_id => 10
         })
discipline.id = 180
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Básica', 
         :code => 'INB_AA', 
         :description => 'Informática aplicada aos fic agente ambiental.',
         :goals => 'Realizar as principais tarefas de editores de texto.', 
         :workload => '26',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 31,
         :dept_id => 10
         })
discipline.id = 181
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética, direitos e deveres do trabalhador', 
         :code => 'EDT_AA', 
         :description => 'Ética, direitos e deveres do trabalhador para os agentes ambientais.',
         :goals => 'Agir com ética e responsabilidade no trabalho.', 
         :workload => '12',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 31,
         :dept_id => 10
         })
discipline.id = 182
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Meio Ambiente e Sustentabilidade', 
         :code => 'MAS_AA', 
         :description => 'Meio Ambiente e Sustentabilidade para agentes ambientais.',
         :goals => 'Conhecer os principais recursos naturais e as formas de uso sustentável.\r
Identificar as principais causas da degradação ambiental. ', 
         :workload => '36',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 31,
         :dept_id => 10
         })
discipline.id = 183
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Legislação Ambiental', 
         :code => 'LEA_AA', 
         :description => 'Legislação Ambiental no FIC Agente Ambiental.',
         :goals => 'Reconhecer os principais fundamentos da legislação ambiental brasileira.', 
         :workload => '36',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 31,
         :dept_id => 10
         })
discipline.id = 184
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Controle da Poluição', 
         :code => 'CDP_AA', 
         :description => 'Controle da poluição para fic agente ambiental.',
         :goals => 'Identificar os principais tipos de degradação ambiental.\r
', 
         :workload => '32',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 31,
         :dept_id => 10
         })
discipline.id = 185
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gerenciamento de Resíduos Sólidos', 
         :code => 'GRS_AA', 
         :description => 'Gerenciamento de Resíduos Sólidos para o fic Agente Ambiental.',
         :goals => 'Planejar ações de gerenciamento dos resíduos sólidos.\r
', 
         :workload => '22',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 31,
         :dept_id => 10
         })
discipline.id = 186
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Educação Ambiental', 
         :code => 'EDA_AA', 
         :description => 'Educação Ambiental para o FIC agente ambiental.',
         :goals => 'Elaborar atividades de educação ambiental.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 31,
         :dept_id => 10
         })
discipline.id = 187
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Saúde e Segurança do Trabalhador', 
         :code => 'HST_AA', 
         :description => '\r
Saúde e Segurança no Trabalho aplicado ao fic agente ambiental.',
         :goals => 'Adotar postura  de prevenção e educação na Saúde do Trabalhador em relação às atividades desenvolvidas de forma a preservar a saúde e garantir segurança na prevenção de acidentes.', 
         :workload => '16',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 31,
         :dept_id => 10
         })
discipline.id = 188
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ginástica Laboral', 
         :code => 'GIL_AA', 
         :description => 'Ginástica Laboral para os alunos do fic de Agente Ambiental.',
         :goals => 'Praticar exercícios de alongamento e relaxamento no âmbito do trabalho.\r
Conceituar qualidade de vida e saúde.', 
         :workload => '12',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 31,
         :dept_id => 10
         })
discipline.id = 189
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Língua Espanhola Nível Básico', 
         :code => 'ESPANHOL_NB', 
         :description => 'Apresentar-se, Conhecer os gêneros dos adjetivos,Falar do cotidiano,comunicar-se em restaurantes.',
         :goals => 'descrever e narrar em termos básicos aspectos de seu passado, descrever alguns sentimentos e estados de ânimo, falar de planos, bem como expressar opiniões simples sobre temas variados e de atualidade', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 32,
         :dept_id => 10
         })
discipline.id = 190
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática Aplicada', 
         :code => 'MAT_ALMAP', 
         :description => 'Matemática aplicada ao fic Almoxarife e Apontador.',
         :goals => 'Conhecer as operações matemáticas', 
         :workload => '18',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 33,
         :dept_id => 10
         })
discipline.id = 191
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Aplicada ', 
         :code => 'INF_ALMAP', 
         :description => 'Informática Aplicada ao FIC Almoxarife e Apontador',
         :goals => 'Utilizar ferramentas computacionais aplicadas à atividade de almoxarife', 
         :workload => '34',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 33,
         :dept_id => 10
         })
discipline.id = 192
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Logística ', 
         :code => 'LOG_ALMAP', 
         :description => 'Logística aplicada ao FIC Almoxarife e Apontador',
         :goals => 'Conhecer conceitos e o objetivo da logística no gerenciamento de estoques ', 
         :workload => '18',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 33,
         :dept_id => 10
         })
discipline.id = 193
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gerenciamento de Resíduos de Construção', 
         :code => 'GRC_ALMAP', 
         :description => 'Gerenciamento de Resíduos de Construção para o FIC Almoxarife e Apontador.',
         :goals => 'Praticar ações para conservaçãodos recursos naturais.', 
         :workload => '12',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 33,
         :dept_id => 10
         })
discipline.id = 194
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Planejamento e Organização do Almoxarifado', 
         :code => 'POA_ALMAP', 
         :description => 'Planejamento e Organização do Almoxarifado.',
         :goals => 'Saber planejar e organizar um almoxarifado', 
         :workload => '24',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 33,
         :dept_id => 10
         })
discipline.id = 195
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Apontamento de Materiais e Mão de Obra', 
         :code => 'AMO_ALMAP', 
         :description => 'Apontamento de Materiais e Mão de Obra para o FiC Almoxarife e Apontador.',
         :goals => 'Realizar apontamento de materiais e mão de obra', 
         :workload => '24',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 33,
         :dept_id => 10
         })
discipline.id = 196
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ginástica Laboral', 
         :code => 'GIL_ALMAP', 
         :description => '\r
Ginástica Laboral aplicada ao FIC Almoxarife e Apontador.',
         :goals => 'Praticar ginástica laboral\r
', 
         :workload => '12',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 33,
         :dept_id => 10
         })
discipline.id = 197
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Inventário e Gerenciamento do Amoxarifado', 
         :code => 'IGA_ALMAP', 
         :description => 'Inventário e Gerenciamento do Almoxarife.',
         :goals => 'Saber elaborar um inventário físico;\r
Gerenciar recebimentos, armazenagem e saída de materiais.\r
', 
         :workload => '66',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 33,
         :dept_id => 10
         })
discipline.id = 198
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Praticar as normas de saúde e segurança no trabalho', 
         :code => 'HST_ALMAP', 
         :description => 'Higiene e Segurança no trabalho aplicada ao FIC Almoxarife e Apontador.',
         :goals => 'Praticar as normas de saúde e segurança no trabalho', 
         :workload => '18',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 33,
         :dept_id => 10
         })
discipline.id = 199
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Liderança e Relacionamento Interpessoal', 
         :code => 'LRI_ALMAP', 
         :description => 'Liderança e Relacionamento Interpessoal para o FiC Almoxarife e Apontador.',
         :goals => 'Saber liderar equipes', 
         :workload => '14',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 33,
         :dept_id => 10
         })
discipline.id = 200
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português Instrumental', 
         :code => 'POI_ALMAP', 
         :description => '\r
Português Instrumental para o FIC Almoxarife e Apontador.',
         :goals => 'Elaborar textos aplicando as normas da língua adequadamente.\r
Comunicar-se com clareza e coerência argumentativa.', 
         :workload => '12',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 33,
         :dept_id => 10
         })
discipline.id = 201
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática', 
         :code => 'INF_OBI', 
         :description => 'Capacitar os alunos para utilizarem o computador como ferramento de auxílio.',
         :goals => 'Propiciar conhecimentos e práticas que instrumentalizem os alunos para a utilização dos principais recursos do sistema operacional e dos programas do pacote MS Office, sendo: processador de textos, software de apresentação, planilha eletrônica e atividades rotineiras de internet.', 
         :workload => '70',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 34,
         :dept_id => 10
         })
discipline.id = 202
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Redação Técnica', 
         :code => 'RET_OIB', 
         :description => 'Redação Técnica relacionada a Informática.',
         :goals => '\r
Saber elaborar as normas de redação oficial com suas formatações adequadas, desenvolvendo-as através da utilização de editores de texto.\r
', 
         :workload => '10',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 34,
         :dept_id => 10
         })
discipline.id = 203
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Contabilidade Básica', 
         :code => 'CBAS', 
         :description => 'Noções preliminares. Estática Patrimonial. Escrituração contábil. Variações do PL. Demonstrações.',
         :goals => 'Apresentar as bases conceituais da Contabilidade, seus métodos e técnicas e suas principais demonstrações.', 
         :workload => '25',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 35,
         :dept_id => 13
         })
discipline.id = 204
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Inglês Básico', 
         :code => 'INGGAM', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 19,
         :dept_id => 12
         })
discipline.id = 205
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Espanhol Básico', 
         :code => 'ESPGAMA', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 20,
         :dept_id => 12
         })
discipline.id = 206
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Introdução ao Gerenciamento Ambiental', 
         :code => 'IGA', 
         :description => ' Práticas de sustentabilidade ambiental nos processos inovativos e na mudança técnica.',
         :goals => 'Apresentar, discutir e facilitar o entendimento dos alunos quanto ao gerenciamento ambiental, despertando a importância do conceito de desenvolvimento sustentável.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 38,
         :dept_id => 13
         })
discipline.id = 207
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'O profissional de atendimento', 
         :code => 'PROFATGAM', 
         :description => 'A formação básica para dominar as técnicas e posturas fundamentais para o exercício da sua função',
         :goals => 'Preparar profissionais que já atuam ou pretendem atuar no comércio ou no setor de serviços, para que possam desenvolver e aplicar com eficácia as técnicas utilizadas no atendimento ao cliente.', 
         :workload => '12',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 39,
         :dept_id => 12
         })
discipline.id = 208
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Técnicas Aplicadas nas vendas', 
         :code => 'TECVENDASGAM', 
         :description => 'A formação básica para dominar as técnicas e posturas fundamentais para o exercício da sua função.\r
',
         :goals => 'Desenvolver as técnicas apropriadas no processo de negociação junto ao cliente, compreendendo a importância do feedback na fase do pós-vendas.', 
         :workload => '12',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 39,
         :dept_id => 12
         })
discipline.id = 209
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética e Recursos Humanos', 
         :code => 'ETICAERHGAM', 
         :description => 'Caracterizar e descrever os princípios relativos à Ética e a Moral.',
         :goals => 'Caracterizar e descrever os princípios relativos à Ética e a Moral.\r
Caracterizar e descrever os aspectos principais relativos à Ética Profissional das diversas profissões ligadas ao atendimento e vendas\r
Proporcionar ao discente uma visão de como relacionar-se fora e dentro ambiente de trabalho\r
', 
         :workload => '9',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 39,
         :dept_id => 12
         })
discipline.id = 210
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Legislações nas relações de consumo', 
         :code => 'LEGISLCONSUMOGAM', 
         :description => 'Formação básica sobre responsabilidade civil',
         :goals => 'A presente disciplina visa informar e preparar o aluno em relação aos seus direitos e deveres como futuros profissionais da Publicidade e também enquanto consumidores. Oferecer conhecimentos acerca das normas, instituições de Direito e mecanismos jurídicos de proteção ao consumidor.\r
', 
         :workload => '15',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 39,
         :dept_id => 12
         })
discipline.id = 211
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Técnicas de comunicação', 
         :code => 'COMUNICGAM', 
         :description => 'Imagem e identidade; comunicação humana; linguagens; oratória; organização do pensamento.',
         :goals => '»demonstrar competências comunicativas em ambientes múltiplos\r
» utilizar corretamente as variadas formas de comunicação\r
» revelar conhecimentos práticos', 
         :workload => '6',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 39,
         :dept_id => 12
         })
discipline.id = 212
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Prática de Oratória', 
         :code => 'PO', 
         :description => 'A disciplina ajuda o aluno a perceber suas dificuldades e facilidades em expressar-se em público. ',
         :goals => 'Apresentar técnicas de oratória para que o aluno possa expressar-se em público com mais facilidade e profissionalismo. ', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 42,
         :dept_id => 13
         })
discipline.id = 213
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Relações Interpessoais', 
         :code => 'RELINTER', 
         :description => 'Conhecer diferentes formas de se comunicar e perceber relações interpessoais de equipes de trabalho.',
         :goals => 'Ampliar a competência interpessoal dos participantes, para aprimorar o seu desempenho nas áreas de atuação sob sua responsabilidade e no trabalho de eventos como um todo.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 42,
         :dept_id => 13
         })
discipline.id = 214
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Eventos, Cerimonial, Protocolo e Etiqueta', 
         :code => 'ECPE', 
         :description => 'Componente curricular do Curso FIC Cerimonial e Protocolo',
         :goals => 'Proporcionar ao discente o domínio da legislaçao e das regras de cerimonial, assim como noções de etiqueta e dos conceitos relacionados ao setor de eventos.', 
         :workload => '30',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 42,
         :dept_id => 13
         })
discipline.id = 215
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Eixo1 - Enem', 
         :code => 'EIXO1', 
         :description => 'Teste',
         :goals => 'Teste', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 45,
         :dept_id => 13
         })
discipline.id = 224
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Eixo2 - Enem', 
         :code => 'EIXO2', 
         :description => 'Teste',
         :goals => 'Teste', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 45,
         :dept_id => 13
         })
discipline.id = 225
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Eixo3 - Enem', 
         :code => 'EIXO3', 
         :description => 'Teste',
         :goals => 'Teste', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 45,
         :dept_id => 13
         })
discipline.id = 226
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Eixo1 - Enem', 
         :code => 'EIXO4', 
         :description => 'Teste',
         :goals => 'Teste', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 45,
         :dept_id => 13
         })
discipline.id = 227
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática Básica', 
         :code => 'MATB', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 228
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fundamentos do Mundo do Trabalho', 
         :code => 'FUMT', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 229
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Técnicas de Negociação', 
         :code => 'TNEG', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 230
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Prática de Oratória', 
         :code => 'PDO', 
         :description => 'Expressar-se em público utilizando técnicas de oratória. ',
         :goals => 'Utilizar técnicas de entonação de voz;\r
Apresentar formas diversificadas de apresentação em público;\r
Dominar a atenção da platéia. \r
', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 17,
         :dept_id => 13
         })
discipline.id = 231
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Contabilidade Geral', 
         :code => 'CNTG', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 232
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Legislação Aplicada a Eventos', 
         :code => 'LAE', 
         :description => 'Fornecer subsídios para a compreensão e domínio da legislação de eventos.',
         :goals => 'Compreender a legislação que rege a atividade turística com enfoque no segmento de eventos;\r
Dominar as leis relativas ao mercado de evento;', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 17,
         :dept_id => 13
         })
discipline.id = 233
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Saude e Segurança do Trabalho', 
         :code => 'SSTR', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 234
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Cerimonial e Protocolo', 
         :code => 'CPROT', 
         :description => ' Aplicar as regras de cerimonial, protocolo e etiqueta formal.',
         :goals => 'Realizar o cerimonial de eventos, em consonância com a legislação vigente;\r
Respeitar a ordem de precedência em cerimônias formais;\r
Dispor a bandeira nacional de forma respeitosa e correta;\r
', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 17,
         :dept_id => 13
         })
discipline.id = 235
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Controle de Estoques', 
         :code => 'CTES', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 236
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Operações de Transportes e Distribuição', 
         :code => 'OPTD', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 237
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Armazenagem e Movimentação de Materiais', 
         :code => 'ARMM', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 238
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Língua Estrangeira para Negócios - Inglês', 
         :code => 'LENI', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 239
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Língua Estrangeira para Negócios – Espanhol', 
         :code => 'LENE', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 240
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Estatística Aplicada', 
         :code => 'ESTA', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 241
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Etiqueta e Postura Profissional', 
         :code => 'EPP', 
         :description => 'Aplicar conhecimentos, operacionalizar técnicas e as regras de etiqueta aplicada aos eventos.',
         :goals => 'Desenvolver atividades de comunicação com todos os públicos alvos e serviços de eventos.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 17,
         :dept_id => 13
         })
discipline.id = 242
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática Financeira', 
         :code => 'MATF', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 243
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Introdução ao Agronegócio', 
         :code => 'IAGR', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 46,
         :dept_id => 12
         })
discipline.id = 244
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Administração Rural', 
         :code => 'ADRU', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 46,
         :dept_id => 12
         })
discipline.id = 245
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português', 
         :code => 'PTAG', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 46,
         :dept_id => 12
         })
discipline.id = 246
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ecologia Agrária', 
         :code => 'ECAG', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 46,
         :dept_id => 12
         })
discipline.id = 247
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Básica', 
         :code => 'INFB', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 46,
         :dept_id => 12
         })
discipline.id = 248
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Agricultura Familiar e Desenvolvimento Regional Sustentável', 
         :code => 'AGRF', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 46,
         :dept_id => 12
         })
discipline.id = 249
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão da Qualidade no Agronegócio', 
         :code => 'GEQA', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 46,
         :dept_id => 12
         })
discipline.id = 250
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Saude e Segurança do Trabalho', 
         :code => 'SSTA', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 46,
         :dept_id => 12
         })
discipline.id = 251
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática Básica', 
         :code => 'MATA', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 46,
         :dept_id => 12
         })
discipline.id = 252
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Introdução ao Cooperativismo', 
         :code => 'INCO', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 47,
         :dept_id => 12
         })
discipline.id = 253
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português', 
         :code => 'PTCO', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 47,
         :dept_id => 12
         })
discipline.id = 254
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética e Responsabilidade Social', 
         :code => 'ERSC', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 47,
         :dept_id => 12
         })
discipline.id = 255
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Básica', 
         :code => 'INBC', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 47,
         :dept_id => 12
         })
discipline.id = 256
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Economia Regional', 
         :code => 'ECRE', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 47,
         :dept_id => 12
         })
discipline.id = 257
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português Instrumental ', 
         :code => 'P.O.T', 
         :description => 'COMPONENTE DO MÓDULO DE FORMAÇÃO BÁSICA',
         :goals => 'Interpretar corretamente manuais técnicos de hardware e software.\r
', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 49,
         :dept_id => 13
         })
discipline.id = 258
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Inglês Técnico ', 
         :code => 'I.N.G', 
         :description => 'COMPONENTE DO MÓDULO DE FORMAÇÃO BÁSICA.',
         :goals => 'Compreender mini-textos em inglês, diretamente relacionados à área de informática e TICs. Conhecer terminologia básica em inglês da área de informática.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 49,
         :dept_id => 13
         })
discipline.id = 259
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética Aplicada a Informática ', 
         :code => 'E.A.I ', 
         :description => 'COMPONENTE DO MÓDULO DE FORMAÇÃO BÁSICA.',
         :goals => 'Adotar um comportamento ético e socialmente responsável na gestão comercial e no uso da tecnologia da informação.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 49,
         :dept_id => 13
         })
discipline.id = 260
discipline.save!         
       

discipline = Discipline.new(
         {:name => ' Lógica de Programação', 
         :code => 'L.D.P', 
         :description => 'COMPONENTE DO MÓDULO DE FORMAÇÃO BÁSICA',
         :goals => 'Desenvolver algoritmos.\r
Desenvolver programas utilizando linguagem de programação do mercado.\r
Criar representações conceituais e desenvolver programas (rotinas) capazes de atuar sobre estas representações.', 
         :workload => '100',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 49,
         :dept_id => 13
         })
discipline.id = 261
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Introdução à Computação ', 
         :code => 'I.A.C', 
         :description => 'COMPONENTE DO MÓDULO DE FORMAÇÃO BÁSICA',
         :goals => 'Conhecer o histórico e a evolução da informática;\r
Diferenciar os diversos tipos de componentes computacionais;\r
Entender e lidar com o sistema de numeração existente nos computadores;\r
Reconhecer e saber as funções das portas lógicas.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 49,
         :dept_id => 13
         })
discipline.id = 262
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Introdução às Redes de Computadores ', 
         :code => 'I.R.C', 
         :description => 'COMPONENTE DO MÓDULO DE FORMAÇÃO BÁSICA',
         :goals => ' Entender o funcionamento de redes de computadores e suas tecnologias fundamentais', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 49,
         :dept_id => 13
         })
discipline.id = 263
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ecologia Agrícola', 
         :code => 'ECOA', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 46,
         :dept_id => 12
         })
discipline.id = 264
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Aplicada', 
         :code => 'INFOAP', 
         :description => 'COMPONENTE DO MÓDULO DE FORMAÇÃO BÁSICA',
         :goals => 'Utilizar microcomputadores com sistema operacional em modo gráfico;\r
Utilizar aplicativos básicos do sistema operacional;\r
Realizar pesquisas na Web;', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 50,
         :dept_id => 13
         })
discipline.id = 265
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português Instrumental', 
         :code => 'PORTINST', 
         :description => 'COMPONENTE DO MÓDULO DE FORMAÇÃO BÁSICA.',
         :goals => 'Saber ler e explorar textos\r
Empregar estratégias adequadas ao “como ler”\r
Interpretar corretamente textos diversos\r
Produzir textos diversos\r
Dissertar\r
Produzir textos persuasivos\r
Identificar fases da criação de um texto\r
Produzir resumos\r
Produzir relatórios', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 50,
         :dept_id => 13
         })
discipline.id = 268
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Introdução à Contabilidade', 
         :code => 'INTROCONT', 
         :description => 'COMPONENTE DO MÓDULO DE FORMAÇÃO BÁSICA.',
         :goals => 'Compreender e aplicar os conceitos, fundamentos, elementos e técnicas básicas da Contabilidade.\r
Compreender a estrutura básica e as características das principais demonstrações contábeis.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 50,
         :dept_id => 13
         })
discipline.id = 269
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Qualidade no Atendimento ao Público', 
         :code => 'ATENDPUB', 
         :description => 'COMPONENTE DO MÓDULO DE FORMAÇÃO BÁSICA.',
         :goals => 'Atender satisfatoriamente às necessidades dos clientes da organização.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 50,
         :dept_id => 13
         })
discipline.id = 271
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética, Cidadania e Meio Ambiente', 
         :code => 'ECMA', 
         :description => 'COMPONENTE DO MÓDULO DE FORMAÇÃO BÁSICA.',
         :goals => 'Compreender as principais concepções éticas constituídas historicamente.\r
Compreender o fenômeno ético e suas implicações no convívio humano e em sua relação com o meio ambiente.\r
Discutir a questão da responsabilidade socioambiental a partir de exemplos práticos.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 50,
         :dept_id => 13
         })
discipline.id = 272
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Práticas Corporais II', 
         :code => 'PCII', 
         :description => 'Aprofundamento dos estudos iniciados em práticas corporais I.',
         :goals => 'Disponibilizar-se corporalmente para o ato criativo;\r
Endenter o corpo como meio de expressão artística, a partir do desenvolvimento do movimento consciente.', 
         :workload => '120',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 273
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Segurança do Trabalho em Eventos', 
         :code => 'STE', 
         :description => 'Compreender a influência direta que tem a segurança em qualquer tipo de evento.',
         :goals => 'Compreender a influência direta que tem a segurança em qualquer tipo de evento.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 17,
         :dept_id => 13
         })
discipline.id = 274
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Legislação Aplicada a Eventos', 
         :code => 'LAEV', 
         :description => 'Fornececer subsídios para a compreensão e domínio da legislação do segmento de eventos.',
         :goals => 'Fornececer subsídios para a compreensão e domínio da legislação do segmento de eventos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 17,
         :dept_id => 13
         })
discipline.id = 275
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Recepção de Eventos', 
         :code => 'RE', 
         :description => 'Compreender a importância da hospitalidade na recepção em eventos.',
         :goals => 'Utilizar vestimentas adequadas para a recepção de eventos;\r
Dominar sistemas de inscrição em eventos;\r
Lidar com situações imprevistas;\r
Observar criticamente a prática de eventos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 17,
         :dept_id => 13
         })
discipline.id = 276
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Redação Técnica', 
         :code => 'RTEC', 
         :description => 'Compreender textos e discursos e expressar-se de forma contextualizada e coerente.',
         :goals => 'Compreender textos e discursos e expressar-se de forma contextualizada e coerente.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 17,
         :dept_id => 13
         })
discipline.id = 277
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fundamentos da Arte-Educação', 
         :code => 'FAE', 
         :description => ' Compreender o contexto histórico da Arte-Educação \r
\r
',
         :goals => '1. Reconhecer a importância da arte como um dos pressupostos dos processos educacionais;\r
2. Contextualizar o ensino das artes no mundo ocidental e no Brasil; \r
3. Refletir sobre os conceitos de Arte-Educação', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 279
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Cinesiologia     ', 
         :code => 'CIN', 
         :description => 'Adquirir o conhecimento anatômico e cinesiológico aplicado à formação do movimento na dança.',
         :goals => 'Compreender os conceitos básicos da Cinesiologia e relacioná-los com a prática profissional;\r
. Descrever o conjunto de movimentos básicos aplicados à dança;\r
. Compreender a integração dos sistemas esquelético, muscular e nervoso na formação do movimento', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 280
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fundamentos da Música II ', 
         :code => 'FMII', 
         :description => 'Identificar os elementos básicos de partituras musicais. ',
         :goals => 'Compreender, em linhas gerais, partituras musicais. Discernir formas e estruturas musicais básicas; Identificar padrões métricos compostos e padrões métricos irregulares.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 282
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Estrutura e Funcionamento da Educação Brasileira I  ', 
         :code => 'EFEBI', 
         :description => 'Conceituar Legislação \r
',
         :goals => 'Oportunizar a análise crítica e contextualizada do ordenamento jurídico na Legislação Brasileira. \r
2. Analisar a estrutura e o funcionamento do Sistema Educacional Brasileiro: Educação Básica, Ensino Superior e suas respectivas Modalidades de Ensino. ', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 283
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Práticas Integradoras II', 
         :code => 'PI II', 
         :description => 'Integrar conteúdos teóricos com vivências práticas aplicando-os ao contexto educacional.',
         :goals => 'Articular e aplicar conteúdos das unidades curriculares cursadas ao longo do semestre.\r
Desenvolver pesquisa de campo para diagnosticar e analisar criticamente as práticas artísticas localizadas', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 284
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Introdução à Estética e História da Arte', 
         :code => 'IEHA', 
         :description => 'Investigar diferentes concepções estéticas de forma crítica.',
         :goals => 'Compreender as concepções estéticas constituídas historicamente;\r
.Relacionar a arte com a totalidade da existência e seus valores, mostrando sua função como instrumento de expressão.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 285
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Inglês Aplicado', 
         :code => 'INGAPL', 
         :description => 'Saber usar, de forma oral, algumas expressões e frases na língua inglesa (LI).',
         :goals => 'Compreender mini-textos em inglês, diretamente relacionados ao setor de eventos. Conhecer terminologia básica em inglês da área de eventos. ', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 51,
         :dept_id => 13
         })
discipline.id = 286
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Organização de Empresas de Eventos', 
         :code => 'OEE', 
         :description => 'Aplicar os conceitos, princípios e fundamentos da Administração de Empresas com ênfase em Eventos.',
         :goals => 'Aplicar os conceitos, princípios e fundamentos da Administração de Empresas com ênfase em Eventos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 51,
         :dept_id => 13
         })
discipline.id = 287
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Sustentabilidade em Eventos', 
         :code => 'SE', 
         :description => 'Compreender as aplicações dos conceitos de sustentabilidade na área de eventos.',
         :goals => 'Reconhecer a origem problemática ambiental\r
Compreender a importância da aplicação dos conceitos da sustentabilidade no setor de eventos\r
Elaborar projetos que respeitem os princípios da sustentabilidade;\r
', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 51,
         :dept_id => 13
         })
discipline.id = 288
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fundamentos de Eventos', 
         :code => 'FE', 
         :description => 'Compreender o mercado de eventos e seus conceitos.',
         :goals => 'Compreender a área de eventos dentro do sistema turístico;Identificar as características do mercado de eventos nacional e local;Saber os principais conceitos e as classificações e as tipologias da área de eventos.\r
', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 51,
         :dept_id => 13
         })
discipline.id = 289
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português Aplicado', 
         :code => 'PA', 
         :description => 'Expressar-se oralmente e por escrito com coerência, de acordo com as finalidades de comunicação.',
         :goals => 'Expressar-se oralmente e por escrito com coerência, de acordo com as finalidades de comunicação', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 51,
         :dept_id => 13
         })
discipline.id = 290
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Básica', 
         :code => 'REC2011/1INFORMÁTICA', 
         :description => 'Conhecer os fundamentos da Informática Básica',
         :goals => 'Citar as principais mudanças ocorridas na evolução da tecnologia da informação.\r
Descrever os componentes de um computador.\r
Diferenciar Hardware de Software.\r
Utilizar os principais softwares básicos, utilitários e aplicativos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 291
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português Instrumental', 
         :code => 'REC2011/1PORTUGUÊS', 
         :description => 'Conhecer as noções básicas de português instrumental.',
         :goals => 'Relacionar as variedades lingüísticas a situações específicas de uso social.\r
Reconhecer os usos da norma padrão da língua portuguesa nas diferentes situações de comunicação.\r
Utilizar estratégias e procedimentos de leitura para a compreensão e interpretação de textos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 292
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Legislação Ambiental', 
         :code => 'REC2011/1LEGISLAÇÃO', 
         :description => 'Compreensão da legislação ambiental brasileira.',
         :goals => 'Identificar a estrutura da Política Nacional do Meio Ambiente.\r
Relacionar a legislação específica deresíduos sólidos com a atuação técnica.\r
Identificar os principais fundamentos da Lei de crimes ambientais.\r
', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 293
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Educação Ambiental', 
         :code => 'REC2011/1EDUCAÇÃO', 
         :description => 'Conhecer os fundamentos da educação ambiental',
         :goals => 'Discutir conceitos e fundamentos relacionados à educação ambiental.\r
Relacionar a crise dos paradigmas da sociedade moderna a suas consequências ambientais.\r
Avaliar os aspectos históricos que envolvem o desenvolvimento do pensamento sobre o meio ambiente.\r
', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 294
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Meio Ambiente e Sustentabilidade', 
         :code => 'REC2011/1AMBIENTE', 
         :description => 'Compreender as informações acerca do meio ambiente e da sustentabilidade',
         :goals => 'Descrever os conceitos de meio ambiente e sustentabilidade;\r
Conhecer os principais processos de dinâmica interna e externa da Terra;\r
Identificar as influências antrópicas na degradação ambiental;\r
Compreender os fatores ambientais determinantes na paisagem;', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 295
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Comunicação e Relacionamento Interpessoal no Trabalho', 
         :code => 'REC2011/1COMUNICAÇÃO', 
         :description => 'Compreender os componentes e as formas de comunicação e relacionamento interpessoal no trabalho.',
         :goals => 'suas peculiaridades.\r
Compreender as relações existentes entre as pessoas no ambiente de trabalho.\r
Facilitar a compreensão sobre a diversidade humana e sua influencia nas organizações.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 296
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Reforma Ortográfica', 
         :code => 'REFORT0111', 
         :description => ' Apresentar o novo acordo ortográfico da língua portuguesa\r
',
         :goals => '∙Utilizar estratégias e procedimentos de leitura para a compreensão do texto do Decreto nº 6.583, de 29 de setembro de 2008.\r
. Reconhecer as mudanças de ortografia ocorridas no Brasil com a promulgação do novo acordo.\r
. Utilizar a nova ortografia na elaboração de textos.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 52,
         :dept_id => 10
         })
discipline.id = 297
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Programa Interno de Gerenciamento', 
         :code => 'REC2011/1PROGRAMA', 
         :description => 'Apresentar as formas de gerenciamento nos programas internos.',
         :goals => 'Aplicar as normas relacionadas a resíduos sólidos na destinação final\r
Diferenciar os tipos de resíduos sólidos.\r
Diferenciar as formas de tratamento de resíduos.\r
Identificar as formas de armazenamento dos resíduos sólidos', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 298
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Higiene e Segurança no Trabalho', 
         :code => 'REC2011/1HIGIENE', 
         :description => 'Conhecer os mecanimos de seurunça no trabalho.',
         :goals => 'Identificar os fundamentos de higiene e segurança do trabalho.\r
Apreender as normas regulamentadoras de higiene e segurança do trabalho.\r
Executar as orientações de prevenção de acidentes no trabalho.\r
Fazer cumprir as normas e procedimentos da segurança no trabalho.\r
', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 299
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética e Responsabilidade Social', 
         :code => 'REC2011/1ÉTICA', 
         :description => 'Compreender a finalidade da ética e da responsabilidade social',
         :goals => 'Identificar e apreender as diferenças que constituem as identidades pessoais.\r
Discutir sobre a presença da mídia na formação de padrões sociais e da influência dos discursos dos aparatos informacionais na distinção de comportamentos e ações éticas.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 300
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Protocolo, Expedição e Arquivo de Documentos', 
         :code => 'PEAD', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 18,
         :dept_id => 12
         })
discipline.id = 301
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Comunicação Empresarial', 
         :code => 'CEMP', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 18,
         :dept_id => 12
         })
discipline.id = 302
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Básica - Edificações', 
         :code => 'EDIFICAÇÕES_INFOBAS', 
         :description => 'Informática Aplicada ao curso técnico em Edificações',
         :goals => 'Citar as principais mudanças ocorridas na evolução da tecnologia da informação.\r
Descrever os componentes de um computador.\r
', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 57,
         :dept_id => 10
         })
discipline.id = 303
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mecânica dos Solos _Edificações', 
         :code => 'EDIFICAÇÕES_MECSOL', 
         :description => 'Mecanica dos Solos',
         :goals => 'Identificar as propriedades físicas dos solos;', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 57,
         :dept_id => 10
         })
discipline.id = 304
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Desenho Técnico e Arquitetônico', 
         :code => 'EDIFICAÇÕES_DETECARQ', 
         :description => 'Desenho Técnico e Arquitetônico',
         :goals => 'Representar projetos por meio de desenhos técnicos, conforme as convenções de desenho aceitas', 
         :workload => '120',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 57,
         :dept_id => 10
         })
discipline.id = 305
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática Aplicada', 
         :code => 'EDIFICAÇÕES_MATAPLIC', 
         :description => 'Matemática Aplicada',
         :goals => '  interpretação de   problemas e suas aplicações na área de construção civil.\r
', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 57,
         :dept_id => 10
         })
discipline.id = 306
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português Instrumental', 
         :code => 'EDIFICAÇÕES_PORTINST', 
         :description => 'Portugues Instrumental',
         :goals => 'Compreensão e utilização da língua portuguesa', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 57,
         :dept_id => 10
         })
discipline.id = 307
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Processos Construtivos', 
         :code => 'EDIFICAÇÕES_PROCCONS', 
         :description => 'Processos Costrutivos',
         :goals => 'Conhecimento da sequência construtiva de obras', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 57,
         :dept_id => 10
         })
discipline.id = 308
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Resistência dos Materiais ', 
         :code => 'EDIFICAÇÕES_RESMAT', 
         :description => 'Resistência dos Materiais',
         :goals => 'Compreensão da linguagem física e matemática', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 57,
         :dept_id => 10
         })
discipline.id = 309
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português Instrumental (Dependência)', 
         :code => 'PORTDEP', 
         :description => 'atualizar',
         :goals => 'atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 310
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Básica', 
         :code => 'MÓVEIS_INFORMÁTICA', 
         :description => 'Utilização de\r
computadores e seus\r
periféricos, assim como\r
de recursos\r
tecnológicos.',
         :goals => 'Citar as principais mudanças ocorridas\r
na evolução da tecnologia da\r
informação.\r
• Descrever os componentes de um\r
computador.\r
• Diferenciar Hardware de Software.\r
• Utilizar os principais softwares básicos,\r
utilitários e aplicativos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 311
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português Instrumental', 
         :code => 'MÓVEIS_PORTUGUÊS', 
         :description => 'Compreensão e\r
utilização da língua\r
portuguesa como\r
língua materna,\r
geradora de\r
significação.',
         :goals => 'Relacionar as variedades linguísticas a\r
situações específicas de uso social.\r
• Reconhecer os usos da norma padrão\r
da língua portuguesa nas diferentes\r
situações de comunicação.\r
• Utilizar estratégias e procedimentos de\r
leitura para a compreensão e\r
interpretação de textos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 312
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ligações com Madeira', 
         :code => 'MÓVEIS_LIGAÇÕES', 
         :description => 'Compreensão dos\r
processos matemáticos\r
aplicáveis ao\r
desenvolvimento das\r
atividades produtivas.',
         :goals => 'Unir peças de madeira a partir das\r
diferentes técnicas;\r
• Identificar e aplicar a forma adequada\r
para a ligação de peças em um móvel;', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 313
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Processos Administrativos', 
         :code => 'MÓVEIS_PROCESSOS', 
         :description => 'Construção de hábitos\r
apropriados para o\r
exercício da profissão.',
         :goals => 'Entender as dinâmicas das relações\r
humanas no ambiente de trabalho\r
• Lidar com conflitos\r
• Conhecer as rotinas de recrutamento,\r
seleção, admissão/demissão de\r
pessoal;', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 314
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática Aplicada', 
         :code => 'MÓVEIS_MATEMÁTICA', 
         :description => 'Compreensão dos\r
processos matemáticos\r
aplicáveis ao\r
desenvolvimento das\r
atividades produtivas.',
         :goals => 'Dominar operações aritméticas e\r
algébricas básicas\r
• Identificar relações entre grandezas e\r
unidades de medida\r
• Arrolar e utilizar informações a fim de\r
prever quantidade de materiais a ser\r
utilizados em serviço', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 315
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão de Recursos de Materiais', 
         :code => 'MÓVEIS_GESTÃO', 
         :description => 'Compreensão e\r
desenvolvimento de\r
processos de\r
gerenciamento.\r
',
         :goals => 'Realizar procedimentos de recepção de\r
materiais.\r
• Utilizar as principais técnicas para\r
armazenagem de materiais.\r
• Executar expedição de mercadorias.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 316
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Tecnologia e Propriedades dos Materiais', 
         :code => 'MÓVEIS_TECNOLOGIA', 
         :description => 'Compreensão da\r
estrutura dos materiais\r
com sua função\r
tecnológica e\r
econômica.',
         :goals => 'Relacionar os materiais baseados em\r
suas características físico-mecânicas\r
• Reconhecer o comportamento histórico\r
dos materiais.\r
• Identificar os planos de corte.\r
• Reconhecer as propriedades', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 317
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética e Responsabilidade Social', 
         :code => 'MÓVEIS_ÉTICA', 
         :description => 'Desenvolver atitudes\r
que favoreçam o\r
desempenho e da\r
qualidade das relações\r
no trabalho,',
         :goals => 'Avaliar os processos atuais de\r
formação dos valores sociais,\r
identificando e apreendendo as\r
diferenças que constituem as\r
identidades pessoais e sociais.\r
• Discutir sobre a presença da mídia na\r
formação de padrões sociais e da\r
influência dos discursos dos aparatos\r
informacionais', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 318
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Formação de Associações e Cooperativas', 
         :code => 'FAC_RECI', 
         :description => 'Formação de associações e cooperativas',
         :goals => 'Conhecimento de formas alternativas de economia   baseadas na cultura da cooperação', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 319
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Economia Solidária', 
         :code => 'ECS_RECI', 
         :description => 'Economia Solidária',
         :goals => 'Planejamento e formação de negócios articulados aos conceitos de cooperativismo e associativismo,', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 320
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão de Pessoas', 
         :code => 'GEP_RECI', 
         :description => 'Gestão de Pessoas',
         :goals => 'Compreensão das principais políticas de gestão de pessoas ', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 321
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Logistica', 
         :code => 'LOG_RECI', 
         :description => 'Logistica',
         :goals => 'Entendimento do papel da Logística como um esforço integrado', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 322
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Saude e qualidade de vida do trabalhador', 
         :code => 'SQV_RECI', 
         :description => 'Compreensão dos benefícios da prática da ginástica laboral',
         :goals => 'com vistas à melhoria da qualidade de vida no trabalho', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 323
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Marketing e Negociação de Produtos Reciclaveis', 
         :code => 'MNPR_RECI', 
         :description => ' Compreensão do marketing e Entendimento dos diferentes aspectos da negociação',
         :goals => 'possibilitando a formulação de  estratégias do composto de marketing.negociação que possam ser aplicados à realidade atual, permitindo que o gestor saiba se posicionar diante de diferentes tipos de negociações.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 25,
         :dept_id => 10
         })
discipline.id = 324
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Língua Espanhola_Nível Básico_Módulo II', 
         :code => 'LENB_II', 
         :description => 'Capacitar profissionais',
         :goals => 'para atuar com estrangeiros em língua espanhola.', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 61,
         :dept_id => 10
         })
discipline.id = 325
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Lingua Inglesa', 
         :code => 'INGSAM012011', 
         :description => 'inglês Básico I',
         :goals => 'Comunicar-se em nivel elementar por meio de habilidades de leitura, escrita, compreensao auditiva e produção oral.ing', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 62,
         :dept_id => 10
         })
discipline.id = 326
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Elementos de máquinas', 
         :code => 'EMA1', 
         :description => 'Conceitos básicos de esforço e resistencia aplicados em elementos de máquinas, e seu funcionamento',
         :goals => '(C1) H.1 Conhecer os princípios de resistências dos materiais;\r
(C1) H.2 Fazer análise de esforços;\r
(C1) H.3 Identificar os principais elementos de máquinas e seu funcionamento.', 
         :workload => '18',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 59,
         :dept_id => 11
         })
discipline.id = 327
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ferramentaria', 
         :code => 'FRT1', 
         :description => 'Tipo e uso de ferramentas básicas de manutenção mecânica e instrumentos de medição',
         :goals => 'Reconhecer os principais tipos de ferramentas e suas aplicações;\r
Identificar os principais instrumentos de medição dimensional e elétrica e seu funcionamento;\r
Identificar corretamente a ferramenta mais adequada para uma determinada aplicação.', 
         :workload => '26',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 59,
         :dept_id => 11
         })
discipline.id = 328
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Improvisação', 
         :code => 'IMPRO', 
         :description => 'Estar apto a responder e gerar estímulos no ato de improvisar.\r
',
         :goals => 'Improvisar em cena;\r
Reconhecer a unicidade corporal em ação, identidade e autonomia expressiva;\r
Mostrar prontidão corporal e cognitiva no ato de improvisar;\r
Utilizar a improvisação como estratégia para a composição coreográfica.\r
', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 329
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Extensão Rural', 
         :code => 'EXTRU', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 46,
         :dept_id => 12
         })
discipline.id = 330
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Planejamento e Gestão de Projetos Agropecuários', 
         :code => 'PGPAG', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 46,
         :dept_id => 12
         })
discipline.id = 331
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Agricultura I', 
         :code => 'AGRI I', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 46,
         :dept_id => 12
         })
discipline.id = 332
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Zootecnia I', 
         :code => 'ZOOT I', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 46,
         :dept_id => 12
         })
discipline.id = 333
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Contabilidade Rural', 
         :code => 'CONTRU', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 46,
         :dept_id => 12
         })
discipline.id = 334
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Economia no Agronegócio', 
         :code => 'ECONAG', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 46,
         :dept_id => 12
         })
discipline.id = 335
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Legislação e Políticas Agrícolas', 
         :code => 'LPAG', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 46,
         :dept_id => 12
         })
discipline.id = 336
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática Financeira', 
         :code => 'MATFI', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 46,
         :dept_id => 12
         })
discipline.id = 337
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Projeto Arquitetônico', 
         :code => 'PROJARQ022011', 
         :description => 'Formar profissionais que dominem os conhecimentos técnicos e científicos em seu campo de atuação',
         :goals => 'Oferecer condições para que o estudante desenvolva as habilidades e competências profissionais gerais requeridas pela área da construção civil, de modo a facilitar e ampliar suas possibilidades de atuação e interação com outros profissionais;', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 57,
         :dept_id => 10
         })
discipline.id = 338
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Projeto de Instalação Elétrica', 
         :code => 'PROJINSTELET022011', 
         :description => 'Formar profissionais que dominem os conhecimentos técnicos e científicos em seu campo de atuação',
         :goals => 'O Técnico em Edificações, no exercício pleno de suas atribuições, deverá ser um indivíduo responsável, criativo, crítico, diligente, prudente, pontual, consciente da ética, com espírito de liderança e participante no processo transformador da sociedade. Para isso deve desenvolver:', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 57,
         :dept_id => 10
         })
discipline.id = 339
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Projeto de Instalação Hidráulica', 
         :code => 'PROJINSTHID022011', 
         :description => 'Construção de uma sólida base de conhecimentos tecnológicos e científicos;',
         :goals => 'Oferecer condições para que o estudante desenvolva as habilidades e competências profissionais gerais requeridas pela área da construção civil, de modo a facilitar e ampliar suas possibilidades de atuação e interação com outros profissionais; ', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 57,
         :dept_id => 10
         })
discipline.id = 340
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fundações', 
         :code => 'FUND022011', 
         :description => 'Construção de uma sólida base de conhecimentos tecnológicos e científicos;',
         :goals => 'Oferecer condições para que o estudante desenvolva as habilidades e competências profissionais gerais requeridas pela área da construção civil, de modo a facilitar e ampliar suas possibilidades de atuação e interação com outros profissionais;', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 57,
         :dept_id => 10
         })
discipline.id = 341
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Desenho Auxiliado por Computador', 
         :code => 'DESAUXCOMP022011', 
         :description => 'Construção de uma sólida base de conhecimentos tecnológicos e científicos;',
         :goals => 'Oferecer condições para que o estudante desenvolva as habilidades e competências profissionais gerais requeridas pela área da construção civil, de modo a facilitar e ampliar suas possibilidades de atuação e interação com outros profissionais; ', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 57,
         :dept_id => 10
         })
discipline.id = 342
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Estruturas de Concreto Armado', 
         :code => 'ESTCONCARM022011', 
         :description => 'Construção de uma sólida base de conhecimentos tecnológicos e científicos;',
         :goals => 'Oferecer condições para que o estudante desenvolva as habilidades e competências profissionais gerais requeridas pela área da construção civil, de modo a facilitar e ampliar suas possibilidades de atuação e interação com outros profissionais; ', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 57,
         :dept_id => 10
         })
discipline.id = 343
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Estruturas Metálicas e de Madeira', 
         :code => 'ESTMETMAD022011', 
         :description => 'Construção de uma sólida base de conhecimentos tecnológicos e científicos;',
         :goals => 'Oferecer condições para que o estudante desenvolva as habilidades e competências profissionais gerais requeridas pela área da construção civil, de modo a facilitar e ampliar suas possibilidades de atuação e interação com outros profissionais; ', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 57,
         :dept_id => 10
         })
discipline.id = 344
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Materiais de Construção Civil', 
         :code => 'MATCONCIV022011', 
         :description => 'Construção de uma sólida base de conhecimentos tecnológicos e científicos;',
         :goals => 'Oferecer condições para que o estudante desenvolva as habilidades e competências profissionais gerais requeridas pela área da construção civil, de modo a facilitar e ampliar suas possibilidades de atuação e interação com outros profissionais; ', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 57,
         :dept_id => 10
         })
discipline.id = 345
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Madeira e Derivados', 
         :code => 'MÓVEIS_MADEIRA', 
         :description => 'Compreensão das\r
diferenças anatômicas\r
da madeira.',
         :goals => 'Identificar as estruturas da madeira em\r
nível macroscópico\r
Distinguir as madeiras pertencentes às\r
coníferas e folhosas\r
Interpretar as propriedades, físicas,\r
mecânicas e organolépticas da\r
madeira', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 346
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ergonomia', 
         :code => 'MÓVEIS_ERGONOMIA', 
         :description => 'Compreensão dos\r
conceitos ergonômicos\r
no dimensionamento\r
de móveis.',
         :goals => 'Compreender o conceito e as fases da\r
ergonomia.\r
Identificar as aplicações da ergonomia.\r
Conhecer as funções do organismo\r
humano.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 347
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Formação de Preço', 
         :code => 'MÓVEIS_FORMAÇÃO', 
         :description => 'Identificação e\r
compreensão dos\r
custos existentes na\r
composição dos preços.',
         :goals => 'Planejar e realizar análise de custos.\r
Reconhecer as vantagens e\r
desvantagens de cada política de\r
preço adotada.\r
Conhecer os conceitos e terminologias\r
de custos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 348
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Metrologia', 
         :code => 'MÓVEIS_METROLOGIA', 
         :description => 'Identificação dos\r
instrumentos para\r
medidas diretas e indiretas.',
         :goals => 'Desenvolver o conhecimento dos\r
principais instrumentos de medição\r
mecânica, as técnicas para seu uso e\r
tratamentos de dados.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 349
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Desenho Técnico', 
         :code => 'MÓVEIS_DESENHO', 
         :description => 'Capacidade de\r
interpretação e\r
confecção de desenhos\r
técnicos.',
         :goals => 'Aplicar conceitos de geometria\r
descritiva nos desenhos de móveis e\r
esquadrias;\r
Utilizar técnicas de representação\r
gráfica de fácil compreensão e aplicar\r
os recursos de perspectiva, preparando\r
esboço do projeto ou maquetes de\r
objetos;', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 350
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Arte e Móveis', 
         :code => 'MÓVEIS_ARTE', 
         :description => 'Relação das criações\r
artísticas funcionalistas\r
a valores pertinentes\r
ao ser humano.',
         :goals => 'Reconhecer as influências dos\r
processos econômicos e sociais\r
ocorridos a partir do século XIX na\r
geração de correntes estéticas e\r
consequente criação de produtos.\r
Analisar objetos culturalmente\r
legitimados como produto da criação', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 351
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Projeto e Design de Móveis', 
         :code => 'MÓVEIS_PROJETO', 
         :description => 'Aplicação dos\r
conceitos e de\r
metodologia de design\r
aplicados ao projeto de\r
móveis;',
         :goals => 'Aplicar as tendências do design de\r
mobiliário no Brasil e no Exterior na\r
fabricação de móveis;\r
Projetar móveis.\r
Executar detalhamento de móveis.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 352
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão de Marketing ', 
         :code => 'GSTMARK', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 353
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão de Pessoas', 
         :code => 'GSTPSS', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 354
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão da Qualidade', 
         :code => 'GSQL', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 355
discipline.save!         
       

discipline = Discipline.new(
         {:name => ' Empreendedorismo', 
         :code => 'EMPREE', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 356
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Economia Aplicada', 
         :code => 'ECAPL', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 357
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Logística Reversa', 
         :code => 'LOGRV', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 358
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Logística Internacional e Comércio Exterior', 
         :code => 'LICEXT', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 359
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Elaboração e Gestão de Projetos', 
         :code => 'EGPROJ', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 16,
         :dept_id => 12
         })
discipline.id = 360
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Relações Interpessoais', 
         :code => 'RELIMP', 
         :description => 'Desenvolver habilidades de relações interpessoais no ambiente de trabalho.',
         :goals => 'Saber trabalhar em equipe e resolver conflitos interpessoais.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 51,
         :dept_id => 13
         })
discipline.id = 361
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Higiene e Segurança do Trabalho', 
         :code => 'MÓVEIS_HIGIENE', 
         :description => 'Sistematização de\r
hábitos relacionados à\r
saúde humana,\r
incluindo aqueles\r
concernentes',
         :goals => 'Identificar os fundamentos de higiene e\r
segurança do trabalho.\r
Apreender as normas\r
regulamentadoras de higiene e\r
segurança do trabalho.\r
Executar as orientações de prevenção\r
de acidentes no trabalho.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 362
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Etiqueta e Postura profissional', 
         :code => 'EPPROF', 
         :description => 'Aplicar conhecimentos, operacionalizar técnicas e as regras de boas maneiras.',
         :goals => 'Desenvolver atividades de comunicação e relações com o meio social, turistas, visitantes, clientes, fornecedores e a comunidade, utilizando-se de higiene pessoal e padrões de etiqueta social e profissional.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 63,
         :dept_id => 13
         })
discipline.id = 363
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Língua Inglesa', 
         :code => 'LING', 
         :description => 'Conhecer terminologia básica da área; \r
Saber usar algumas expressões e frases na língua inglesa.',
         :goals => 'Oportunizar aquisição inicial de vocabulário, expressões e frases na língua inglesa para facilitar a recepção de estrangeiros em hotéis do DF. ', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 63,
         :dept_id => 13
         })
discipline.id = 364
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Legislação Hoteleira', 
         :code => 'LH', 
         :description => 'Fornecer subsídios para a compreensão e domínio da legislação.',
         :goals => 'Compreender a legislação que rege a atividade turística com enfoque na gestão hoteleira;\r
Dominar as leis relativas ao mercado de hotéis;\r
Atuar de forma ética e responsável.', 
         :workload => '10',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 63,
         :dept_id => 13
         })
discipline.id = 365
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Meios de Hospedagem', 
         :code => 'MH', 
         :description => 'Conhecer o planejamento hoteleiro; Compreender a organização e gestão dos meios de hospedagem.',
         :goals => 'Relacionar os meios de hospedagem e os aspectos que o compõem;\r
Formar equipes de trabalhos;\r
Compreender as funções dos setores dos meios de hospedagem;\r
', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 63,
         :dept_id => 13
         })
discipline.id = 366
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Técnicas de Recepção Hoteleira', 
         :code => 'TRH', 
         :description => 'Conhecer e ter domínio das técnicas de recepção hoteleira.',
         :goals => 'Conhecer as regras do bom atendimento ao hóspede;\r
Realizar o atendimento ao hóspede mediante os procedimentos adotados no setor de recepção hoteleira, como: check-in, check-out  e os durante a estada no hotel. \r
', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 63,
         :dept_id => 13
         })
discipline.id = 367
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Redação Oficial', 
         :code => 'RO', 
         :description => 'Redigir com coerência documentos que tramitam na recepção hoteleira\r
',
         :goals => 'Utilizar técnicas de resumo de dados\r
Dominar estratégias de escuta\r
Diferenciar estruturas lingüísticas específicas para os diversos gêneros textuais\r
Fazer uso de recursos para difusão de informações geradas no cotidiano da recepção em meios de hospedagem.', 
         :workload => '10',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 63,
         :dept_id => 13
         })
discipline.id = 368
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Espanhol Aplicado a Hotelaria', 
         :code => 'EAH', 
         :description => 'Comunicar-se em língua espanhola, em nível elementar, no ambiente de recepção hoteleira.\r
',
         :goals => 'Conhecer e utilizar estruturas linguístico-comunicativas da língua espanhola, em nível elementar;\r
Conhecer e utilizar vocabulário básico específico da área de recepção hoteleira e turismo.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 63,
         :dept_id => 13
         })
discipline.id = 370
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Eventos na Hotelaria', 
         :code => 'EH', 
         :description => 'Apontar os diversos passos para organização de um evento com foco na captação de eventos.',
         :goals => 'Proporcionar ao aluno entendimento da atuação do Departamento de Eventos na hotelaria, com orientação para vendas.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 63,
         :dept_id => 13
         })
discipline.id = 371
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática Financeira', 
         :code => 'MATFI -COOPERATIVIS', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 47,
         :dept_id => 12
         })
discipline.id = 372
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Contabilidade de Empresas Cooperativistas', 
         :code => 'CONTEMCOOP-COOPERATI', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 47,
         :dept_id => 12
         })
discipline.id = 373
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Técnicas de Negociação', 
         :code => 'TECNEG-COOPERATI', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 47,
         :dept_id => 12
         })
discipline.id = 374
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Administração de Empresas Cooperativas', 
         :code => 'ADEMCOOP-COOPERATI', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 47,
         :dept_id => 12
         })
discipline.id = 375
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Legislação Cooperativista', 
         :code => 'LEGSCOOP-COOPERATI', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 47,
         :dept_id => 12
         })
discipline.id = 376
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ramos do Cooperativismo', 
         :code => 'RAMCOOP-COOPERTI', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 47,
         :dept_id => 12
         })
discipline.id = 377
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Estatística Aplicada', 
         :code => 'ESTAPL-COOPERTI', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 47,
         :dept_id => 12
         })
discipline.id = 378
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Turismo no DF', 
         :code => 'TURDF', 
         :description => 'Identificar os diversos atrativos turísticos do DF caracterizados pela sua segmentação.',
         :goals => 'Compreender o Sistema Turístico e suas interfaces;\r
Identificar possibilidades para formação de arranjos produtivos locais;\r
Saber classificar adequadamente os segmentos do turismo existentes;\r
Reconhecer as potencialidades do turismo no DF.\r
', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 63,
         :dept_id => 13
         })
discipline.id = 379
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Espanhol', 
         :code => 'ESP', 
         :description => 'Comunicar-se no ambiente de turismo, eventos e hotelaria, em língua espanhola – nível básico.',
         :goals => 'Comunicar-se em língua espanhola no ambiente profissional, em nível básico; \r
Desenvolver habilidades de compreensão e produção oral e escrita em língua espanhola, em nível básico;\r
Conhecer aspectos gerais da cultura espanhola e hispano-americana.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 17,
         :dept_id => 13
         })
discipline.id = 380
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Básica', 
         :code => 'TCA_INFORMÁTICA', 
         :description => 'Utilização de computadores e seus periféricos, assim como de recursos tecnológicos digitais.',
         :goals => 'Diferenciar os componentes de um computador.\r
Diferenciar Hardware de Software.\r
Utilizar os principais softwares básicos, utilitários e aplicativos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 381
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português Instrumental', 
         :code => 'TCA_PORTUGUÊS', 
         :description => 'Compreensão e utilização da língua portuguesa como língua materna.',
         :goals => 'Relacionar as variedades lingüísticas a situações específicas de uso social.\r
Reconhecer os usos da norma padrão da língua portuguesa nas diferentes situações de comunicação.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 382
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ecologia', 
         :code => 'TCA_ECOLOGIA', 
         :description => 'Compreensão das interações naturais e das atividades antrópicas para atuação.',
         :goals => 'Relacionar o funcionamento de ecossistemas quanto ao fluxo de matéria e energia e a manutenção do equilíbrio ecossistêmico;\r
Identificar as relações das espécies com o meio ambiente;', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 383
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática Aplicada', 
         :code => 'TCA_MATEMÁTICA', 
         :description => 'Aplicação de técnicas matemáticas para avaliação e tomadas de decisão em problemas ambientais',
         :goals => 'Analisar quais unidades de medidas se aplicam mais ao meio ambiente, e saber transforma-las\r
Desenvolver cálculos de área e volume correlacionados as atividades do meio ambiente', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 384
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética e Responsabilidade Social', 
         :code => 'TCA_ÉTICA', 
         :description => 'Compreensão da formação crítica, desenvolvendo atitudes.',
         :goals => 'Discutir sobre a presença da mídia na formação de padrões sociais e da influência dos discursos dos aparatos informacionais na distinção de comportamentos e ações éticas.\r
Identificar a necessidade das relações éticas no que diz respeito às questões de natureza legal, social e cultural.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 385
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Introdução ao Sensoriamento Remoto', 
         :code => 'TCA_REMOTO', 
         :description => 'Identificação da tecnologia de sensoriamento remoto e sistemas sensores orbitais.',
         :goals => 'Empregar produtos de sensoriamento remoto para gerar informações de interesses ambientais.\r
Identificar os principais sistemas sensores orbitais e suas aplicações em estudos ambientais.\r
Distinguir as resoluções de sistemas sensores adequadas ao estudo ambiental que irá desenvolver.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 386
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Introdução ao Controle Ambiental', 
         :code => 'TCA_AMBIENTAL', 
         :description => 'Compreender os principais conceitos em controle de poluição e seus instrumentos de controle.',
         :goals => 'Compreender a crise ambiental e as Leis de Conservação de Massa e Energia.\r
Conhcer conceitos e definições em saneamento e meio ambiente.\r
Analisar os usos da água, do ar e do solo e a poluição associada.\r
Conhecer a quantidade dos recursos hídricos e como mensurá-los.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 387
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Química Geral', 
         :code => 'TCA_QUÍMICA', 
         :description => 'Análise da qualidade do meio ambiente para fatores que alteram a natureza.',
         :goals => 'Compreender as transformações químicas em uma visão macroscópica e microscópica\r
Identificar as diferenças físico-químicas entre substâncias puras e misturas\r
Apreender os conceitos de átomos, íons, moléculas e elementos.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 388
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Higiene, Saúde e Segurança do Trabalho', 
         :code => 'TCA_HIGIENE', 
         :description => 'Sistematização de hábitos relacionados à saúde humana.',
         :goals => 'Identificar os fundamentos de higiene e segurança do trabalho.\r
Apreender as normas regulamentadoras de higiene e segurança do trabalho.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 389
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Hidráulica Aplicada', 
         :code => 'TCA_HIDRÁULICA', 
         :description => 'Compreender os principais componentes hidráulicos presentes em uma Estação de Tratamento.',
         :goals => 'Identificar a propriedade dos fluidos\r
Diferenciar as condições hidráulicas da água em repouso e em movimento\r
Avaliar e diferenciar tipos de escoamento laminar e turbulento\r
Aplicar a equação da Energia a um escoamento forçado', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 390
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Básica', 
         :code => 'INFOB', 
         :description => 'Operar o computador com a finalidade de auxiliar em eventos.',
         :goals => 'Utilizar as ferramentas para produção de planilhas, documentos e folders de divulgação;\r
Conhecer as ferramentas básicas da informática.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 63,
         :dept_id => 13
         })
discipline.id = 391
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Administração de Materiais', 
         :code => 'ADMMAT', 
         :description => 'Contextualizar os conceitos, funções e os objetivos da administração de materiais;\r
',
         :goals => 'Aplicar os funcionamentos e conceitos, funções e objetivos da administração de materiais;\r
Realizar compras de materiais e atividades de previsão e fornecimento de materiais e serviços;', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 64,
         :dept_id => 13
         })
discipline.id = 392
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Organização, Sistema e Métodos', 
         :code => 'OSM', 
         :description => 'Identificar e compreender as características de organizações',
         :goals => 'Saber definir o tipo de organização em que está inserido;\r
Elaborar o organograma da organização.', 
         :workload => '10',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 64,
         :dept_id => 13
         })
discipline.id = 393
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Conceitos Básicos de Administração', 
         :code => 'CBA', 
         :description => 'Conhecer os princípios básicos de administração de empresas e dos processos administrativos.\r
',
         :goals => 'Definir os princípios básicos da administração.\r
Definir objetivos organizacionais.\r
Estabelecer metas em consonância com os objetivos organizacionais.\r
Atuar em parceria e em equipes.\r
Identificar as funções do administrador e sua importância para o sucesso do negócio. ', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 64,
         :dept_id => 13
         })
discipline.id = 394
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Introdução à Contabilidade', 
         :code => 'IC', 
         :description => 'Compreender e aplicar os conceitos, fundamentos, elementos e técnicas básicas da Contabilidade.',
         :goals => 'Conhecer as bases conceituais da Contabilidade;\r
Identificar os elementos do patrimônio, suas configurações e as causas de suas variações;\r
Classificar, analisar e registrar transações nas contas patrimoniais (Ativo, Passivo, e Patrimônio Líquido).\r
Executar lançamentos contábeis básicos.', 
         :workload => '10',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 64,
         :dept_id => 13
         })
discipline.id = 395
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática Básica', 
         :code => 'MB', 
         :description => 'Realizar as quatro operações básicas da matemática.',
         :goals => 'Adicionar, subtrair, multiplicar e dividir;\r
Operar com regra de três simples;\r
Calcular porcentagens;\r
Aplicar conceitos sobre Porcentagens , Taxas, Impostos, Câmbio, Juros e Capitalizações, Descontos, Amortizações e Empréstimos;\r
Aplicar normas técnicas e efetuar cálculos', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 64,
         :dept_id => 13
         })
discipline.id = 396
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Comunicação Organizacional', 
         :code => 'CO', 
         :description => 'Utilizar as técnicas de comunicação interna e externa à organização.',
         :goals => 'Conhecer as técnicas específicas para uma comunicação adequada;\r
Identificar a comunicação como um processo interpessoal; \r
Promover estratégias de comunicação direcionadas ao público-alvo.', 
         :workload => '10',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 64,
         :dept_id => 13
         })
discipline.id = 397
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Marketing Pessoal e Atendimento ao Público', 
         :code => 'MPAP', 
         :description => 'Atender satisfatoriamente os clientes de uma organização.\r
',
         :goals => 'Estabelecer uma boa relação com o cliente;\r
Ser capaz de se comunicar adequadamente com o cliente;\r
Perceber a complexidade dos aspectos ligados ao comportamento humano dentro das empresas;\r
Ser capaz de utilizar informações a favor da organização.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 64,
         :dept_id => 13
         })
discipline.id = 398
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética, Cidadania e Meio Ambiente', 
         :code => 'ECM', 
         :description => 'Compreender as principais concepções éticas constituídas historicamente.\r
',
         :goals => 'Analisar, refletir e debater acerca da importância da postura ética, enfatizando o homem e suas múltiplas dimensões.\r
Desenvolver uma atitude crítica em relação aos dilemas éticos que envolvem as relações entre seres humanos e em sua relação com o meio ambiente.\r
', 
         :workload => '10',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 64,
         :dept_id => 13
         })
discipline.id = 399
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Básica', 
         :code => 'INFOBAS', 
         :description => 'Utilizar microcomputadores com sistema operacional em modo gráfico.',
         :goals => 'Operar os sistemas operacionais utilizados no mercado;\r
Operar aplicativos e utilitários de microinformática;\r
Elaborar documentos de texto dando-lhes formatações específicas, tais como carta, relatórios e formulários.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 64,
         :dept_id => 13
         })
discipline.id = 400
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português', 
         :code => 'PORTUG', 
         :description => 'Saber ler e explorar textos\r
Interpretar corretamente textos diversos.',
         :goals => 'Escolher o que deve ser lido\r
Reconhecer a significação das palavras no contexto\r
Identificar formas diversas para interpretar textos', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 64,
         :dept_id => 13
         })
discipline.id = 401
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Legislação Ambiental', 
         :code => 'TCA-LEGISLAÇÃO', 
         :description => 'Aplicação de leis pertinentes ao controle e  conservação dos recursos naturais.',
         :goals => 'Identificar os principais fundamentos da Lei de crimes ambientais e relacioná-la à conservação da biodiversidade e dos ecossistemas.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 402
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matérias Primas', 
         :code => 'REC-MPRI', 
         :description => 'A Definir',
         :goals => 'A Definir', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 403
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Tecnologia de Resíduos Especiais', 
         :code => 'REC-RESP', 
         :description => 'Intervir de maneira  que resultem no aproveitamento de resíduos sólidos e no empreendimento.',
         :goals => 'Apreender os procedimentos relacionados à destinação de resíduos especiais.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 404
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Tecnologia de Processamento de RCD', 
         :code => 'REC-PRCD', 
         :description => 'Intervir  de maneira que resultem no aproveitamento de resíduos sólidos.',
         :goals => 'Executar processos relacionados a resíduos recicláveis domésticos e comerciais.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 405
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Tecnologia de Recursos Inertes', 
         :code => 'REC-RINE', 
         :description => 'Intervir de maneira que resultem no aproveitamento de resíduos sólidos e no empreendimento.',
         :goals => 'Classificar os resíduos de construção e demolição (RCD).', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 406
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Desenho Técnico', 
         :code => 'DTEC201102', 
         :description => 'Representar e interpretar peças do vestuário, aviamentos e costura.',
         :goals => 'Desenhar desenho técnico de roupas a mão livre e computadorizados; aplicar normas de desenho técnico; identificar escala de redução, escala de ampliação e escala natural.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 66,
         :dept_id => 11
         })
discipline.id = 407
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática', 
         :code => 'INF201102', 
         :description => 'Conhecer e Promover a interação do usuário com os softwares.',
         :goals => 'Conhecer o software editor de texto para redigir textos, tabelas, memorandos, transferir conteúdos da internet e redigir relatórios; Identificar e utilizar os aplicativo e serviços básicos para navegar na internet.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 66,
         :dept_id => 11
         })
discipline.id = 408
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português e Interpretação de Textos', 
         :code => 'PORTINTT201102', 
         :description => 'Compreender as principais ferramentas para construção de textos linguísticos.',
         :goals => 'Identificar e estudar funções de linguagem;conhecer os principais aspectos diferenciados da língua falada em relação à língua escrita.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 66,
         :dept_id => 11
         })
discipline.id = 409
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Costura', 
         :code => 'COST201102', 
         :description => 'Conhecer os processos de produção do vestuário.',
         :goals => 'Identificar tipos de máquinas, de pontos, classes de costura, saber executar o processo de passamento de fio e calculo do consumo de linha, executar operações de costuras nas máquinas industriais reta, overloque e galoneira.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 66,
         :dept_id => 11
         })
discipline.id = 410
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Modelagem', 
         :code => 'MOD201102', 
         :description => 'Conhecer os processos de produção do vestuário.',
         :goals => 'Tirar medidas do corpo humano; construir bases de modelagem feminina; saber interpretar modelos e graduação de peças femininas.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 66,
         :dept_id => 11
         })
discipline.id = 411
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'História do Vestuário', 
         :code => 'HISTVEST201102', 
         :description => 'Compreender a História e a evolução do vestuário através dos tempos.',
         :goals => 'Analisar textos históricos. E extrair e interpretar informações das diversas fontes documentais; analisar imagens de releituras que trazem a história como citacionismo de época transferindo elementos de estilo para a moda contemporânea.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 66,
         :dept_id => 11
         })
discipline.id = 412
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Materiais e Processos Têxteis', 
         :code => 'MATPROCTEX201102', 
         :description => 'Reconhecer os diversos materiais têxteis bem como suas principais característica e aplicações. ',
         :goals => 'Conhecer as características prncipais das fibras têxteis; identificar os principais tecidos utilizados na área de vestuário bem como suas principais características de construção e estética.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 66,
         :dept_id => 11
         })
discipline.id = 413
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Higiene e Segurança do Trabalho', 
         :code => 'HIGSEGTRAB201102', 
         :description => 'Manusear e utilizar corretamente equipamnetos de trabalho e  EPIs.',
         :goals => 'Entender a importância e  o alcance de HST; Raciocinar preventivamente com a relação a riscos de acidentes; Conhecer o enquadramento legal  e o marco regulatório  no domínio da SHT.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 66,
         :dept_id => 11
         })
discipline.id = 414
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Empreendedorismo', 
         :code => 'EMP201102', 
         :description => 'Capacidade de iniciar e manter pequenos empreendimentos em Vestuário.',
         :goals => 'Identificar Forças, Fraquezas, Ameaças e Oportunidades para empreendimentos em vestuário.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 66,
         :dept_id => 11
         })
discipline.id = 415
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Língua Inglesa', 
         :code => 'INGSAM022011', 
         :description => 'inglês Básico Ii',
         :goals => 'Comunicar-se em nivel elementar por meio de habilidades de leitura, escrita, compreensao auditiva e produção oral.ing', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 62,
         :dept_id => 10
         })
discipline.id = 416
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Língua Espanhola_Nível Básico_Módulo III', 
         :code => 'LENB_III', 
         :description => 'Conhecimento de gêneros dos adjetivos de nacionalidade e uso formal e informal da língua.',
         :goals => 'Saber perguntar e responder a que dedicam-se as pessoas, conhecer e identificar o gênero das profissões.\r
', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 61,
         :dept_id => 10
         })
discipline.id = 417
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Recursos Materiais e Patrimoniais', 
         :code => 'RECMATPAT TC', 
         :description => 'Controlar estoques e a logística de suprimentos.',
         :goals => 'Utilizar sistemas de controle de reposição dos materiais; elaborar planilhas de controle de estoques; examinar avarias; especificar, codificar e classificar materiais.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 21,
         :dept_id => 11
         })
discipline.id = 418
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Logística', 
         :code => 'LOGISTICA TC', 
         :description => 'Planejar as atividades de logística; analisar a infraestrutura disponível de transporte.',
         :goals => 'Aplicar as teorias e princípios da logística; selecionar colaboradores para participar do desenvolvimento do planejamento em logística; executar as atividades do planejamento de logística.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 21,
         :dept_id => 11
         })
discipline.id = 419
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática Financeira', 
         :code => 'MATFINAN TC', 
         :description => 'Aplicar conhecimentos matemáticos necessários aos processos da gestão comercial.',
         :goals => 'Realizar cálculos financeiros; fazer análises de movimentação monetária com base no fluxo de caixa; avaliar políticas de credito, cobrança e financiamentos.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 21,
         :dept_id => 11
         })
discipline.id = 420
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Legislação Tributária Empresarial', 
         :code => 'LEGTRIBEMP TC', 
         :description => 'Analisar o caráter normativo da legislação tributária.',
         :goals => 'Verificar os processos de taxação, penalização, isenção e deferimento de impostos, período base, período fiscal e correção de valores.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 21,
         :dept_id => 11
         })
discipline.id = 421
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Processo de Compras', 
         :code => 'PROCOMPRAS TC', 
         :description => 'Conhecer as rotinas e os mecanismos de compras nas empresas.',
         :goals => 'Identificar a necessidade de compra do produto ou serviço; Definir as quantidades a serem compradas e qualidade dos produtos para o estoque.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 21,
         :dept_id => 11
         })
discipline.id = 422
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão de Qualidade', 
         :code => 'GESTAOQ TC', 
         :description => 'Adotar um sistema de qualidade no processo de comercialização.\r
',
         :goals => 'Utilizar teorias e princípios da qualidade; Relacionar as características básicas dos serviços para elaborar as estratégias de atuação no mercado; Definir sistema de coleta de informações.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 21,
         :dept_id => 11
         })
discipline.id = 423
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Contabilidade Empresarial', 
         :code => 'CONTEMP TC', 
         :description => 'Utilizar a contabilidade como fonte de informação e apoio à tomada de decisão.',
         :goals => 'Identificar os elementos que compõem do patrimônio; Compreender os regimes contábeis aplicados.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 21,
         :dept_id => 11
         })
discipline.id = 424
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Inglês Técnico', 
         :code => 'INGLESTEC TC', 
         :description => 'Utilizar conhecimentos da língua inglesa como ferramenta nas atividades cotidianas do comércio.',
         :goals => 'Redigir textos técnicos e correspondências em inglês, em nível básico; Aplicar corretamente termos técnicos da língua inglesa em situações cotidianas.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 21,
         :dept_id => 11
         })
discipline.id = 425
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Arquitetura de Computadores', 
         :code => 'AC TI', 
         :description => 'Identificar os componentes de um computador e seus periféricos.',
         :goals => 'Identificar os componentes de um computador e seus periféricos, analisando o funcionamento e relacionamento entre eles.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 426
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Administração de Sistemas Operacionais', 
         :code => 'ASO TI', 
         :description => 'Manipular sistemas operacionais em ambientes gráficos ou em linha de comando.',
         :goals => 'Conhecer os principais sistemas operacionais disponíveis no mercado e suas diferentes versões ou distribuições.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 427
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Manutenção e Configuração de Hardware', 
         :code => 'MCH TI', 
         :description => 'Realizar manutenção preventiva e corretiva de equipamentos de informática.',
         :goals => 'Realizar a montagem, desmontagem e configuração de microcomputadores; Instalar periféricos; Identificar problemas de hardware e periféricos.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 428
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Assistência Remota para Microcomputador', 
         :code => 'ARM TI', 
         :description => 'Auxiliar remotamente na identificação e solução de problemas.',
         :goals => 'Estabelecer uma comunicação eficiente com a parte solicitante do serviço; Identificar problemas a partir de sua descrição.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 429
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Manutenção e Configuração de Software', 
         :code => 'MCS TI', 
         :description => 'Realizar manutenção preventiva e corretiva em programas instalados em um microcomputador.',
         :goals => 'Instalar aplicativos;Identificar problemas de software;Determinar a origem de erros a partir de eventos observados;Solucionar problemas de software;Usar softwares e ferramentas de diagnóstico e de otimização.', 
         :workload => '100',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 430
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Treinamento de Usuários de Microcomputador', 
         :code => 'TUM TI', 
         :description => 'Avaliar as necessidades de treinamento e suporte técnico aos usuários.',
         :goals => 'Identificar pontos que necessitam de esclarecimento para os usuários;Definir o tipo de treinamento ou suporte adequado de acordo com a situação;Elaborar material para treinamento de usuários.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 431
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Estudos Avançados em Manutenção de Microcomputadores', 
         :code => 'EAMM TI', 
         :description => 'Usar as recentes tecnologias disponíveis no mercado.',
         :goals => 'Conhecer as tecnologias que estão mais difundidas na atualidade.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 432
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Elaboração de Projetos em Eventos', 
         :code => 'E.P.E', 
         :description => 'Componente do Módulo Organização de Eventos',
         :goals => 'Conhecer e aplicar os fundamentos de orçamento e de finanças na operacionalização de eventos.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 17,
         :dept_id => 13
         })
discipline.id = 433
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Estrutura de Dados', 
         :code => 'E.D.', 
         :description => 'MÓDULO DESENVOLVIMENTO DE SISTEMA PARA DESKTOP',
         :goals => 'Utilizar de maneira mais eficiente da\r
memória e buscar reduzir o tempo de\r
processamento, conhecendo os processos de\r
inclusão e exclusão de elementos em\r
estruturas de dados, implementando-as.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 49,
         :dept_id => 13
         })
discipline.id = 434
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Planejamento, Organização e Logística', 
         :code => 'P.O.L.', 
         :description => 'Componente do Módulo organização de Eventos',
         :goals => 'Auxiliar no planejamento, na gestão e na promoção de eventos.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 17,
         :dept_id => 13
         })
discipline.id = 435
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Marketing em Eventos', 
         :code => 'M.E.', 
         :description => 'Componente do Módulo Organização de Eventos',
         :goals => 'Compreender as aplicações dos conceitos de marketing na área de eventos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 17,
         :dept_id => 13
         })
discipline.id = 436
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Linguagem de Programação orientada a Objetos', 
         :code => 'L.P.O.O.', 
         :description => 'MÓDULO DE DESENVOLVIMENTO DE SISTEMAS PARA DESKTOP ',
         :goals => 'Desenvolver sistemas O.O.– Orientação\r
a Objetos;\r
• Comparar o paradigma estruturado com\r
o paradigma O.O. – Orientação a\r
Objetos;\r
• Utilizar linguagens estruturadas e O.O.\r
– Orientação a Objetos;\r
• Explicar vantagens e desvantagens da\r
P.O.O. – Programação Orientação a\r
Objetos;', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 49,
         :dept_id => 13
         })
discipline.id = 437
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Alimentos e Bebidas', 
         :code => 'A.B.', 
         :description => 'Componente do Módulo Organização de Eventos',
         :goals => 'Gerir a área de alimentos e bebidas, durante os eventos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 17,
         :dept_id => 13
         })
discipline.id = 438
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Redes de Computadores', 
         :code => 'R.C.', 
         :description => 'MÓDULO DE DESENVOLVIMENTO DE SISTEMAS PARA DESKTOP',
         :goals => 'Especificar a tecnologia, topologia,\r
componentes e dimensionamento da\r
rede de forma a atender necessidades\r
específicas, seguindo a melhor relação\r
custo benefício, configurando dispositivos de redes', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 49,
         :dept_id => 13
         })
discipline.id = 439
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Banco de Dados', 
         :code => 'B.D.', 
         :description => 'MÓDULO DE DESENVOLVIMENTO DE SISTEMAS PARA DESKTOP',
         :goals => 'Manipular SGBDs – Sistema\r
Gerenciador de Banco de Dados\r
• Ler e aplicar MER em um SGBD\r
• Ler e entender Diagramas de ER\r
• Manipular dados e tabelas em um\r
SGBD utilizando SQL\r
• Implementar Mapeamento Objeto\r
relacional.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 49,
         :dept_id => 13
         })
discipline.id = 440
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão Financeira e Orçamentaria', 
         :code => 'G.F.O.', 
         :description => 'Componente do Módulo de Eventos',
         :goals => 'Conhecer e aplicar os fundamentos de orçamento e de administração financeira na opracionalização de eventos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 17,
         :dept_id => 13
         })
discipline.id = 441
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Operacionalização de Eventos', 
         :code => 'O.E.', 
         :description => 'Componente do Módulo Organização de Eventos',
         :goals => 'Conhecer, compreender e operacionalizar as  principais técnicas e processos de eventos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 17,
         :dept_id => 13
         })
discipline.id = 442
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Inglês Aplicado', 
         :code => 'I.A.', 
         :description => 'Componente do Módulo Organização de Eventos.',
         :goals => 'Conhecer, compreender e operacionalizar as  principais técnicas e processos de eventos na  língua inglesa.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 17,
         :dept_id => 13
         })
discipline.id = 443
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Elaboração de Projetos de Eventos', 
         :code => 'E.P.E.', 
         :description => 'Componente do Módulo Planejamento e Organização de Eventos',
         :goals => 'Elaborar projetos em eventos.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 51,
         :dept_id => 13
         })
discipline.id = 444
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Redação Técnica', 
         :code => 'R.T.', 
         :description => 'Componente do Módulo Planejamento e Organização de Eventos.',
         :goals => 'Saber expressar-se de forma oral,\r
em público, e aplicar normas de\r
redação oficial para eventos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 51,
         :dept_id => 13
         })
discipline.id = 445
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Marketing em Eventos', 
         :code => 'MA.E.', 
         :description => 'Componente do Módulo Planejamento e Organização de Evnetos.',
         :goals => 'Desenvolver estratégias de marketing aplicadas a eventos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 51,
         :dept_id => 13
         })
discipline.id = 446
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Espanhol Aplicado', 
         :code => 'E.A.', 
         :description => 'Componente do Módulo Planejamento e Organização de Eventos.',
         :goals => 'Comunicar-se no ambiente de\r
turismo, eventos e hotelaria na\r
língua espanhola.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 51,
         :dept_id => 13
         })
discipline.id = 447
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Planejamento e Organização de Eventos', 
         :code => 'P.O.E.', 
         :description => 'Componente do Módulo Planejamento e Organização de Eventos.',
         :goals => 'Auxiliar no planejamento, na gestão e na promoção de eventos.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 51,
         :dept_id => 13
         })
discipline.id = 448
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão Financeira e Orçamentaria em Eventos', 
         :code => 'G.F.O.E.', 
         :description => 'Componente do Módulo Planejamento e Organização de Eventos',
         :goals => 'Conhecer e aplicar os fundamentos de orçamento e de finanças na operacionalização de eventos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 51,
         :dept_id => 13
         })
discipline.id = 449
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Alimentos e Bebidas', 
         :code => 'AL.B.', 
         :description => 'Componente do Módulo Planejamento e organização de Eventos.',
         :goals => 'Gerir a área de alimentos e bebidas durante os eventos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 51,
         :dept_id => 13
         })
discipline.id = 450
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Empreendedoriso em Eventos', 
         :code => 'EM.E.', 
         :description => 'Componente do Módulo de Planejamento e Organização de Eventos.',
         :goals => 'Compreender o perfil do empreendedor e as estratégias para empreender no setor de\r
eventos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 51,
         :dept_id => 13
         })
discipline.id = 451
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Sistemas Operacionais', 
         :code => 'S.O.', 
         :description => 'DISCIPLINA INTEGRANTE DO MÓDULO DE DESENVOLVIMENTO DE SISTEMAS PARA DESKTOP',
         :goals => '. Operar as ferramentas básicas de\r
sistemas operacionais;\r
. Selecionar o sistema operacional de\r
acordo com as necessidades do cliente', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 49,
         :dept_id => 13
         })
discipline.id = 452
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Engenharia de Software', 
         :code => 'E.D.S.', 
         :description => 'DISCIPLINA INTEGRANTE DO MÓDULO  DESENVOLVIMENTO DE SISTEMAS PARA DESKTOP',
         :goals => '. Capacidade de Organizar dados\r
operacionais;\r
. Compreender a dinâmica de processos\r
organizacionais;\r
. Compreender o escopo de um sistema\r
de informação e de um projeto de\r
sistemas', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 49,
         :dept_id => 13
         })
discipline.id = 453
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Cultura e Sociedade I – CS I', 
         :code => 'CS I', 
         :description => 'Disciplina do 3º período',
         :goals => 'Compreender os conceitos de cultura estruturados historica-mente no Ocidente;\r
', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 454
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Introdução à Administração', 
         :code => 'INTRODADM', 
         :description => 'DISCIPLINA DO MÓDULO BÁSICO',
         :goals => 'Ser capaz de apropriar-se das\r
funções da Administração na\r
avaliação e análise de\r
organizações, de modo eficaz.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 50,
         :dept_id => 13
         })
discipline.id = 455
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Didática – Did', 
         :code => 'DID', 
         :description => 'Disciplina do 3º período',
         :goals => 'Compreender historicamente as concepções pedagógicas e seu impacto na formação do professor;\r
.Conhecer e elaborar estraté-gias de ensino, observando o planejamento, as técnicas, os métodos do processo de ensi-no- aprendizagem;\r
.Conhecer o processo de ava-liação da aprendizagem.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 456
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática aplicada', 
         :code => 'M.A.', 
         :description => 'DISCIPLINA DO MODULO BÁSICO',
         :goals => '· Identificar em dada\r
situação-problema as\r
informações ou variáveis\r
relevantes e possíveis\r
estratégicas para resolvê-la', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 50,
         :dept_id => 13
         })
discipline.id = 457
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Contato-Improvisação – CI', 
         :code => 'CI', 
         :description => 'Disciplina do 3º período',
         :goals => 'Reconhecer as possibilida-des de comunicação a partir da exploração de diferentes qualidades de toque com foco na ação e reação do aqui e agora;\r
.Desenvolver habilidades rela-cionadas à técnica do Contato-Improvisação;\r
', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 458
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Noções de Direito Administrativo', 
         :code => 'N.D.A.', 
         :description => 'DISCIPLINA DO MÓDULO BÁSICO',
         :goals => 'Compreender os conceitos e\r
fundamentos do direito administrativo.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 50,
         :dept_id => 13
         })
discipline.id = 459
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Teoria e História da Dança I – THD I', 
         :code => ' THD I', 
         :description => 'Disciplina do 3º período',
         :goals => 'Caracterizar os principais e-lementos da dança ao longo de sua história até sua fase moderna;\r
.Relacionar noções históricas de corpo às estéticas da dan-ça ao longo de sua história até a modernidade;\r
.Conceituar corpo na atualidade.\r
.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 460
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Planejamento Organizacional', 
         :code => 'P.O.', 
         :description => 'DISCIPLINA INTEGRANTE DO MÓDULO PROJETOS PÚBLICOS',
         :goals => '· Compreender as relações\r
humanas nas organizações e seus\r
impactos.\r
· Compreender as responsabilidades\r
do Gestor de Recursos humanos.\r
· Capacidade de compreender os diferentes\r
tipos de comportamentos\r
humanos nas empresas.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 50,
         :dept_id => 13
         })
discipline.id = 461
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Dança Clássica I ', 
         :code => 'DC I', 
         :description => 'Disciplina do 3º período',
         :goals => 'Ser capaz de trabalhar a técnica de dança clássica de acordo com a realidade anatômica de cada pessoa;\r
.Saber realizar exercícios da dança clássica de modo consciente;\r
', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 462
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão de Documentos e Arquivística', 
         :code => 'G.D.A.', 
         :description => 'DISCIPLINA INTEGRANTE DO MÓDULO ADMINISTRATIVO EM SERVIÇOS PÚBLICOS',
         :goals => 'Compreender e aplicar os conceitos,\r
sistemas e mecanismos básicos da\r
arquivística.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 50,
         :dept_id => 13
         })
discipline.id = 463
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão de Pessoas e comportamento organizacional', 
         :code => 'G.P.C.O.', 
         :description => 'DISCIPLINA INTEGRANTE DO MÓDULO ADMINISTRATIVO EM SERVIÇOS PÚBLICOS',
         :goals => '· Compreender as relações\r
humanas nas organizações e\r
seus impactos.\r
· Compreender as responsabilidades\r
do Gestor de Recursos humanos.\r
· Capacidade de compreender os\r
diferentes tipos de comportamentos\r
humanos nas empresas.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 50,
         :dept_id => 13
         })
discipline.id = 464
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Práticas Integradoras e de Ensino I ', 
         :code => 'PIE I', 
         :description => 'Disciplina do 3º período',
         :goals => '.Articular e aplicar conteúdos das unidades curriculares cur-sadas ao longo do semestre;\r
.Refletir sobre a dança como campo de produção do conhe-cimento nos diversos espaços de ensino-aprendizagem;\r
.Elaborar e desenvolver práti-cas artísticas em contextos educacionais diversos.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 465
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Redação e Documentos Oficiais', 
         :code => 'R.D.O.', 
         :description => 'DISCIPLINA INTEGRANTE DO MÓDULO ADMINISTRATIVO EM SERVIÇOS PÚBLICOS',
         :goals => '· Distinguir redação literária, de\r
técnica e científica.\r
· Saber utilizar os vocativos e\r
pronomes de tratamento\r
adequados para cada tipo de\r
comunicação oficial.\r
· Conhecer todas as\r
comunicações oficiais.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 50,
         :dept_id => 13
         })
discipline.id = 466
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Orçamento Público', 
         :code => 'O.P.', 
         :description => 'DISCIPLINA INTEGRANTE DO MÓDULO ADMINISTRATIVO EM SERVIÇOS PÚBLICOS',
         :goals => 'Compreender as\r
principais questões\r
relacionadas à\r
elaboração e execução\r
orçamentária e\r
financeira do setor\r
público brasileiro.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 50,
         :dept_id => 13
         })
discipline.id = 467
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Licitações, Contratos e Convênios da Administração Pública', 
         :code => 'L.C.C.A.P.', 
         :description => 'DISCIPLINA INTEGRANTE DO MÓDULO ADMINISTRATIVO EM SERVIÇOS PÚBLICOS',
         :goals => '· Compreender os fundamentos\r
que regem a licitação,\r
contratos e convênios na\r
administração pública;\r
· Identificar os instrumentos legais\r
para licitações, contratos\r
e convênios;\r
· Aplicar de forma correta os instrumentos\r
legais para a realização\r
de compras públicas', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 50,
         :dept_id => 13
         })
discipline.id = 468
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática Financeira', 
         :code => 'M.F.', 
         :description => 'DISCIPLINA INTEGRANTE DO MÓDULO ADMINISTRATIVO EM SERVIÇOS PÚBLICOS',
         :goals => ' Ler, articular e interpretar\r
símbolos e códigos em diferentes\r
linguagens e representações:\r
sentenças, equações, esquemas,\r
diagramas, tabelas, gráficos ou\r
outras representações\r
geométricas.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 50,
         :dept_id => 13
         })
discipline.id = 469
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Noções de Administração Pública', 
         :code => 'N.A.P.', 
         :description => 'DISCIPLINA INTEGRANTE DO MÓDULO ADMINISTRATIVO EM SERVIÇOS PÚBLICOS',
         :goals => '· Conhecer os princípios básicos\r
da administração pública\r
· Compreender a função dos responsáveis\r
pela gestão de pública.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 50,
         :dept_id => 13
         })
discipline.id = 470
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Práticas Integradoras', 
         :code => 'P.I.', 
         :description => 'DISCIPLINA INTEGRANTE DO MÓDULO ADMINISTRATIVO EM SERVIÇOS PÚBLICOS',
         :goals => '· Articular e aplicar conteúdos\r
das unidades curriculares\r
cursadas ao longo do Módulo\r
em situações-problema\r
interdisciplinares.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 50,
         :dept_id => 13
         })
discipline.id = 471
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'FIC ESPANHOL', 
         :code => 'ESPCOPA', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 67,
         :dept_id => 12
         })
discipline.id = 472
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'FIC FRANCÊS', 
         :code => 'FRANCESCOPA', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 77,
         :dept_id => 12
         })
discipline.id = 473
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Comunicação', 
         :code => 'ATCOM20112', 
         :description => 'A comunicação oral: dicção; entonação; regionalismos; jargões; gírias; vícios de linguagem;',
         :goals => 'Construir conhecimentos sobre a organização do texto oral e escrito de modo a comunicar-se com clareza e coerência argumentativa.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 79,
         :dept_id => 10
         })
discipline.id = 474
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Atendimento ao Cliente', 
         :code => 'ATCATC20112', 
         :description => 'Realizar o atendimento de maneira profissional.',
         :goals => 'Conhecer a área de atuação e atribuições do profissional de atendimento.\r
Identificar os conhecimentos necessários à função do atendente.\r
Compreender o papel do atendente para a prestação de serviços.\r
Desenvolver comportamentos e atitudes que valorizem a imagem pessoal. ', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 79,
         :dept_id => 10
         })
discipline.id = 475
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética ', 
         :code => 'ATCETC20112', 
         :description => 'Desenvolver comportamento ético no processo de atendimento ao cliente.\r
\r
',
         :goals => 'Agir de forma ética no processo de negociação junto ao cliente.\r
Manter um diálogo ponderado independentemente da crise emocional do cliente. \r
Estabelecer relação de confiança com o cliente.\r
Promover a empatia no ambiente de trabalho', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 79,
         :dept_id => 10
         })
discipline.id = 476
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'CRF - Padeiro ', 
         :code => 'CRF/FIC PADEIRO CRF', 
         :description => 'Auxiliar de padeiro',
         :goals => 'Formar cidadão profissional apto a elaborar e servir produtos de panificação e confeitaria, considerando os aspectos higiênicos, a responsabilidade profissional, socioecônomica e ambiental.', 
         :workload => '108',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 69,
         :dept_id => 29
         })
discipline.id = 477
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Desenho assistido por computador', 
         :code => 'CAD', 
         :description => 'Execução de desenho técnico.',
         :goals => 'Conhecer ferramentas das desenho no software de CAD. ', 
         :workload => '96',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 80,
         :dept_id => 10
         })
discipline.id = 478
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Inglês para Copa', 
         :code => 'FIC COPAINGLES', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 81,
         :dept_id => 12
         })
discipline.id = 479
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Marketing em Eventos', 
         :code => 'MKT', 
         :description => 'Componente do Módulo Planejamento e Organização de Evnetos.',
         :goals => 'Desenvolver estratégias de marketing aplicadas a eventos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 51,
         :dept_id => 13
         })
discipline.id = 480
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Princípios de higiene e sanitização', 
         :code => '002', 
         :description => 'Aplicar os princípios da higiene e sanitização em estabelecimentos de serviços de alimentação.',
         :goals => 'Aplicar os princípios da higiene e sanitização em estabelecimentos de serviços de alimentação. ', 
         :workload => '60',   
         :credits => 2,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 69,
         :dept_id => 29
         })
discipline.id = 482
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Preparo de panificados e confeitados', 
         :code => '004', 
         :description => 'Aplicar os princípios da fermentação nos diferentes processos. ',
         :goals => 'Aplicar os princípios da fermentação nos diferentes processos.', 
         :workload => '140',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 69,
         :dept_id => 29
         })
discipline.id = 483
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Base dos processos fermentativos', 
         :code => '1-B', 
         :description => 'Aplicar os princípios da fermentação nos diferentes processos de panificados e confeitados. ',
         :goals => 'Aplicar os princípios da fermentação nos diferentes processos de panificados e confeitados. ', 
         :workload => '10',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 70,
         :dept_id => 29
         })
discipline.id = 484
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Preparo de panificados e confeitados', 
         :code => '2-B', 
         :description => ' Elaborar produtos panificados e confeitados de nível básico.',
         :goals => ' Elaborar produtos panificados e confeitados de nível básico.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 70,
         :dept_id => 29
         })
discipline.id = 485
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Princípios de higiene e sanitização', 
         :code => '3-C', 
         :description => 'Elaborar produtos panificados e confeitados de nível básico.',
         :goals => 'Elaborar produtos panificados e confeitados de nível básico.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 70,
         :dept_id => 29
         })
discipline.id = 487
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Básica 40', 
         :code => 'I.B.40', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 64,
         :dept_id => 13
         })
discipline.id = 488
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética e Responsabilidade Social 20', 
         :code => 'E.R.S 20', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 51,
         :dept_id => 13
         })
discipline.id = 489
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Aspectos Culturais em Eventos 40', 
         :code => 'A.C.E 40', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 51,
         :dept_id => 13
         })
discipline.id = 490
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Preparação Tecnológica', 
         :code => 'PT', 
         :description => 'Elaborar e interpretar\r
desenhos técnicos',
         :goals => 'Elaborar e interpretar\r
desenhos técnicos', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 83,
         :dept_id => 11
         })
discipline.id = 493
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'DESENHO TÉCNICO', 
         :code => 'DT', 
         :description => 'Elaborar e interpretar\r
desenhos técnicos',
         :goals => 'Elaborar e interpretar\r
desenhos técnicos', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 83,
         :dept_id => 11
         })
discipline.id = 494
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'TECNOLOGIA DOS MATERIAIS', 
         :code => 'TM', 
         :description => '.',
         :goals => 'Conhecer e aplicar\r
corretemante os conceitos\r
de resistência dos materiais', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 83,
         :dept_id => 11
         })
discipline.id = 495
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'ELETRECIDADE BÁSICA', 
         :code => 'EB', 
         :description => '.',
         :goals => 'Conhecer as\r
propriedades dos materiais e\r
componentes eletroeletrônicos', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 83,
         :dept_id => 11
         })
discipline.id = 496
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'AJUSTAGEM MECÂNICA', 
         :code => 'AM', 
         :description => '.',
         :goals => 'Conhecer e utilizar\r
corretamente ferramentas\r
mecânicas e elétricas', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 83,
         :dept_id => 11
         })
discipline.id = 497
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'HIGIENE E SEGURANÇA DO TRABALHO', 
         :code => 'HST', 
         :description => '.',
         :goals => 'Conhecer e utilizar\r
corretamente ferramentas\r
mecânicas e elétricas', 
         :workload => '30',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 83,
         :dept_id => 11
         })
discipline.id = 498
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'cOMUNICAÇÃO TÉCNICA', 
         :code => 'CT', 
         :description => '.',
         :goals => 'Ler e interpretar\r
manuais técnico e\r
comunicar-se por meio da\r
língua oral e escrita', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 83,
         :dept_id => 11
         })
discipline.id = 499
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Introdução à Manutenção', 
         :code => 'IM', 
         :description => '.',
         :goals => 'Auxiliar\r
adequadamente em\r
processos de manutenção', 
         :workload => '36',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 83,
         :dept_id => 11
         })
discipline.id = 500
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português Instrumental', 
         :code => 'PORT.', 
         :description => 'PORT.',
         :goals => 'PORT.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 501
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Custos e Formação de Preços', 
         :code => 'COMÉRCIO-CFP', 
         :description => 'Custos e Formação de Preços-PARA O CURSO TÉCNICO EM COMÉRCIO',
         :goals => 'Identificar os custos existentes na composição dos preços.\r
', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 21,
         :dept_id => 11
         })
discipline.id = 502
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Administração Mercadológica', 
         :code => 'COMÉRCIO-AM', 
         :description => 'Administração Mercadológica para o comércio',
         :goals => 'Compreender a gestão dos processos de marketing.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 21,
         :dept_id => 11
         })
discipline.id = 503
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Processo de Vendas', 
         :code => 'COMÉRCIO-PV', 
         :description => 'Processo de Vendas PARA O COMÉRCIO',
         :goals => 'Compreender os processos de vendas das empresas.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 21,
         :dept_id => 11
         })
discipline.id = 504
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Técnicas de Vendas', 
         :code => 'COMÉRCIO-TV', 
         :description => '´Técnicas de Vendas para o comércio',
         :goals => 'Identificar técnicas de atendimento adequadas que proporcionem a satisfação do cliente.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 21,
         :dept_id => 11
         })
discipline.id = 505
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Comércio Eletrônico', 
         :code => 'COMÉRCIO-CE', 
         :description => 'Comércio Eletrônico para o comércio',
         :goals => 'Conhecer os modelos de negócios eletrônicos.\r
Desenvolver projetos de comércio eletrônico.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 21,
         :dept_id => 11
         })
discipline.id = 506
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Estatística Aplicada às Vendas', 
         :code => 'COMÉRCIO-EAV', 
         :description => 'Estatística Aplicada às Vendas para o comércio\r
',
         :goals => 'Aplicar conhecimentos da estatística como ferramenta nas atividades de uma empresa.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 21,
         :dept_id => 11
         })
discipline.id = 507
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Espanhol Técnico', 
         :code => 'COMÉRCIO-ET', 
         :description => 'Espanhol Técnico para o comércio',
         :goals => 'Utilizar conhecimentos da língua espanhola como ferramenta nas atividades cotidianas do comércio.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 21,
         :dept_id => 11
         })
discipline.id = 508
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Elementos de Máquinas', 
         :code => 'FIC EM', 
         :description => '.',
         :goals => '.', 
         :workload => '18',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 59,
         :dept_id => 11
         })
discipline.id = 510
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática Aplicada', 
         :code => 'FIC MA', 
         :description => '.',
         :goals => '.', 
         :workload => '30',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 59,
         :dept_id => 11
         })
discipline.id = 511
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'LÓGICA', 
         :code => 'FIC LO', 
         :description => '.',
         :goals => '.', 
         :workload => '30',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 59,
         :dept_id => 11
         })
discipline.id = 512
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Leitura e Interpretação de Textos', 
         :code => 'FIC LIT', 
         :description => '.',
         :goals => '.', 
         :workload => '30',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 59,
         :dept_id => 11
         })
discipline.id = 513
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Práticas de Manutenção', 
         :code => 'FIC PM', 
         :description => '.',
         :goals => '.', 
         :workload => '30',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 59,
         :dept_id => 11
         })
discipline.id = 514
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'HIGIENE E SEGURANÇA DO TRABALHO', 
         :code => 'FIC HST', 
         :description => '.',
         :goals => '.', 
         :workload => '30',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 59,
         :dept_id => 11
         })
discipline.id = 515
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'DESENHO TÉCNICO', 
         :code => 'FIC DT', 
         :description => '.',
         :goals => '.', 
         :workload => '30',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 59,
         :dept_id => 11
         })
discipline.id = 516
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'FERRAMENTARIA', 
         :code => 'FIC FER', 
         :description => '.',
         :goals => '.', 
         :workload => '26',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 59,
         :dept_id => 11
         })
discipline.id = 517
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'ELETRICIDADE BÁSICA', 
         :code => 'FIC EB', 
         :description => '.',
         :goals => '.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 59,
         :dept_id => 11
         })
discipline.id = 518
discipline.save!         
       

discipline = Discipline.new(
         {:name => ' Noções de Administração ', 
         :code => 'COMÉRCIO-NA', 
         :description => ' Noções de Administração para o comércio',
         :goals => 'Compreender os processos próprios de uma empresa comercial.\r
', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 21,
         :dept_id => 11
         })
discipline.id = 527
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Arquitetura de Computadores', 
         :code => 'MÓD. II ARQUIT.', 
         :description => '.',
         :goals => '.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 528
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'ADMINISTRAÇÃO DE SISTEMAS OPERACIONAIS', 
         :code => 'MOD. II ADM SO', 
         :description => '.',
         :goals => '.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 529
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'MANUTENÇÃO E CONFIGURAÇÃO DE HRDWARE', 
         :code => 'MOD. II MANUT HW', 
         :description => '.',
         :goals => '.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 530
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'MANUTENÇÃO E CONFIGURAÇÃO DE SOFTWARE', 
         :code => 'MOD. II MANUT SW', 
         :description => '.',
         :goals => '.', 
         :workload => '100',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 531
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'ASSITENCIA REMOTA PARA COMPUTADORES', 
         :code => 'MOD. II ARC', 
         :description => '.',
         :goals => '.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 532
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'TREINAMENTO DE USUÁRIOS DE MICROCOMPUTADORES', 
         :code => 'MOD. II TUM', 
         :description => '.',
         :goals => '.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 533
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'ESTUDOS AVANÇADOS EM MANUTENÇÃO DE MICROCOMPUTADORES', 
         :code => 'MOD. II EAMM', 
         :description => '.',
         :goals => '.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 534
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Alfabetização Digital', 
         :code => 'ALF_DG', 
         :description => 'Alfabetização Digital',
         :goals => 'Promover o primeiro contato dos estudantes com o computador.', 
         :workload => '69',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 86,
         :dept_id => 13
         })
discipline.id = 535
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Operador de Microcomputador', 
         :code => 'OPR_MC', 
         :description => 'Operador de Microcomputador',
         :goals => 'Habilitar o aluno a desenpenhar procedimentos simples de configuração e utilização do Computador', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 86,
         :dept_id => 13
         })
discipline.id = 536
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Processador de Texto', 
         :code => 'OPR_TX', 
         :description => 'Processador de Texto',
         :goals => 'Habilitar o estudante no domínio e uso de editores de texto de mercado.', 
         :workload => '32',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 86,
         :dept_id => 13
         })
discipline.id = 537
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Planilha Eletrônica', 
         :code => 'OPR_PE', 
         :description => 'Planilha Eletrônica',
         :goals => 'Habilitar o estudante no domínio e uso de planilhas eletronicas disponíveis no mercado.', 
         :workload => '32',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 86,
         :dept_id => 13
         })
discipline.id = 538
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Editoração de Imagens e Apresentações', 
         :code => 'OPR_IA', 
         :description => 'Editoração de Imagens e Apresentações',
         :goals => 'Habilitar o estudante na manipulação de imagens e elaboração de apresentações digitais.', 
         :workload => '32',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 86,
         :dept_id => 13
         })
discipline.id = 539
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'COMUNICAÇÃO EM REDES DE COMPUTADORES', 
         :code => 'MOD. III COM REDES', 
         :description => '.',
         :goals => '.', 
         :workload => '120',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 540
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'CABEAMENTO ESTRUTURADO', 
         :code => 'MOD. III CABEAMENTO', 
         :description => '.',
         :goals => '.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 541
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'SEGURANÇA DE DADOS', 
         :code => ' MOD III SEG. DADOS', 
         :description => '.',
         :goals => '.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 542
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'SISTEMAS OPERACIONAIS APLICADOS A REDE', 
         :code => 'MOD III  SIST. OP. R', 
         :description => '.',
         :goals => '.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 543
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'CONFIGURAÇÃO DE SISTEMAS DE REDES', 
         :code => 'MOD III CONF SER RED', 
         :description => '.',
         :goals => '.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 544
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'ASSISTÊNCIA REMOTA PARA REDES', 
         :code => 'MOD III ARR', 
         :description => '.',
         :goals => '.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 545
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'TREINAMENTO DE USUÁRIOS DE REDES', 
         :code => 'MOD III EACR', 
         :description => '.',
         :goals => '.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 546
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'TREINAMENTO DE USUÁRIOS DE REDES', 
         :code => 'MOD III TR DE USU', 
         :description => '.',
         :goals => '.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 547
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'ESTUDOS AVANÇADOS EM CONFIGURAÇÃO DE REDES', 
         :code => 'MOD.III EACR', 
         :description => '.',
         :goals => '.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 14,
         :dept_id => 11
         })
discipline.id = 548
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Sistema Financeiro Nacional', 
         :code => 'G.TES. SIST. F. NAC.', 
         :description => 'Sistema Financeiro Nacional para o curso Gestão de Tesouraria',
         :goals => 'Compreender o Sistema Financeiro Nacional, visando desenvolver habilidades para atuar na área de tesouraria.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 87,
         :dept_id => 11
         })
discipline.id = 549
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Tesouraria e Mercado Bancário', 
         :code => 'G. TES. TESOUR. M.BA', 
         :description => 'Tesouraria e Mercado Bancário para o curso Gestão de Tesouraria',
         :goals => 'Compreender o mercado bancário e seus principais produtos, visando desnevolver habilidades para atuar na área de tesouraria.', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 87,
         :dept_id => 11
         })
discipline.id = 550
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática Financeira', 
         :code => 'G.TES. MAT. FINANC.', 
         :description => 'Matemática Financeira para o curso de Gestão de Tesouraria.',
         :goals => 'x', 
         :workload => '30',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 87,
         :dept_id => 11
         })
discipline.id = 551
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Atendimento ao Cliente', 
         :code => 'G.COMERCIAL AT. CLIE', 
         :description => 'Atendimento ao Cliente do curso Gestão Comercial',
         :goals => 'Capacitar o aluno a desenvolver princípios e ferramentas básicas que assegurem a qualidade no atendimento, estimulando e fortalecendo relações de parcerias entre as pessoas.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 88,
         :dept_id => 11
         })
discipline.id = 552
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Estratégias de Compra e Venda', 
         :code => 'G.COMERCIAL EST.C.VE', 
         :description => 'Estratégias de Compra e Venda do curso Gestão Comercial.',
         :goals => 'Aprender a estruturar estratégias de compra e venda.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 88,
         :dept_id => 11
         })
discipline.id = 553
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Processos de Comunicação', 
         :code => 'G.COMERCIAL PROC. CO', 
         :description => 'Processos de Comunicação do curso Gestão Comercial.',
         :goals => 'Aprimorar a linguagem oral e escrita.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 88,
         :dept_id => 11
         })
discipline.id = 554
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão de Vendas', 
         :code => 'G.COMERCIAL G.VENDAS', 
         :description => 'Gestão de Vendas do curso Gestão Comercial',
         :goals => '- Compreender os processos de vendas das empresas;\r
- Identificar as oporetunidades do mercado e selcionar mercados-alvo;\r
- Identificar os ambients de vendas;\r
- Identificar os tipos de mercado;\r
- Compreender o comportamento do mercado consumidor.', 
         :workload => '30',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 88,
         :dept_id => 11
         })
discipline.id = 555
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Código de defesa do consumidor', 
         :code => 'G.COMERCIAL C.DEF.CO', 
         :description => 'Código de defesa do consumidor do curso Gestão Comercial.',
         :goals => 'Identificar os princípios básicos das normas consumeristas.', 
         :workload => '10',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 88,
         :dept_id => 11
         })
discipline.id = 556
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática', 
         :code => 'G.COMERCIAL INFO', 
         :description => 'Informática do curso Gestão Comercial',
         :goals => 'x', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 88,
         :dept_id => 11
         })
discipline.id = 557
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'INGLÊS BÁSICO 2', 
         :code => 'TAG. CENTRO - ING 2', 
         :description => 'INGLES BÁSICO 2',
         :goals => 'Oferecer curso de língua inglesa para a comunidade escolar, com o intuito de desenvolver a competência linguístico-comunicativa na língua inglesa e oportunizar o contato com aspectos culturais, literários, históricos e políticos dos respectivos países em que se falam esse idioma.', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 89,
         :dept_id => 11
         })
discipline.id = 558
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'INGLÊS BÁSICO 3', 
         :code => 'TAG. CENTRO - ING 3', 
         :description => 'Inglês Básico 3 ',
         :goals => 'Oferecer curso de língua inglesa para a comunidade escolar, com o intuito de desenvolver a competência linguístico-comunicativa na língua inglesa e oportunizar o contato com aspectos culturais, literários, históricos e políticos dos respectivos países em que se falam esse idioma.', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 89,
         :dept_id => 11
         })
discipline.id = 559
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Profissional do atendimento', 
         :code => 'FIC/RF - PROFI. ATEN', 
         :description => 'Profissional do atendimento',
         :goals => 'Atender cliente de forma ética e profissional', 
         :workload => '13',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 75,
         :dept_id => 29
         })
discipline.id = 560
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Excelência no atendimento', 
         :code => 'FIC/RF - EXCE. ATEN.', 
         :description => 'Excelência no atendimento',
         :goals => 'Desenvolver Comportamentos favoráveis para a satisfação do cliente através de práticas de atendimento.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 75,
         :dept_id => 29
         })
discipline.id = 561
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Processo de Comunicação', 
         :code => 'FIC/RF - PROC. COMUN', 
         :description => 'Processo de Comunicação',
         :goals => 'Construir conhecimentos sobre a organização do texto oral e escrito de modo a comunicar-se com clareza e coerência argumentativa.', 
         :workload => '16',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 75,
         :dept_id => 29
         })
discipline.id = 562
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Operador Básico de Computador', 
         :code => 'CRF/FIC - OP. BAS. C', 
         :description => 'Operador Básico de Computador',
         :goals => 'Proporcionar a formação inicial de jovens e adultos  com ensino fundamental completo calcado em uma qualificação profissional para garantir de modo equânime, o ingresso no mundo do trabalho com foco na profissionalização;\r
', 
         :workload => '96',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 72,
         :dept_id => 29
         })
discipline.id = 563
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'CRF/Fic Espanhol Mod. 1', 
         :code => 'CRF/FIC ESPANHOL ', 
         :description => 'CRF/Fic Espanhol Mod. 1',
         :goals => 'Formar futuros profissionais que atuem no meio turístico com habilitação em lingua estrangeira espanhol.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 73,
         :dept_id => 29
         })
discipline.id = 564
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'CRF/Fic Inglês Mod. 1', 
         :code => 'CRF/FIC INGLÊS M 1', 
         :description => 'CRF/Fic Inglês Mod. 1',
         :goals => 'Capacitação em lingua inglesa', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 74,
         :dept_id => 29
         })
discipline.id = 565
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fic/RF - Padeiro B', 
         :code => 'FIC/RF - PADEIRO B', 
         :description => 'Fic/RF - Padeiro B',
         :goals => 'Capacitar mão de obra especializada em panificação', 
         :workload => '108',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 70,
         :dept_id => 29
         })
discipline.id = 566
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Espanhol Básico III', 
         :code => 'TAG. CENTRO - ESPA 3', 
         :description => 'Módulo 3 Curso de Espanhol',
         :goals => 'Oferecer curso de língua espanhola para a comunidade escolar, com o intuito de desenvolver a competência linguístico-comunicativa na língua inglesa e oportunizar o contato com aspectos culturais, literários, históricos e políticos dos respectivos países em que se falam esse idioma.', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 90,
         :dept_id => 11
         })
discipline.id = 567
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Espanhol Básico II', 
         :code => 'TAG. CENTRO - ESPA 2', 
         :description => 'Módulo 2 do Espanhol',
         :goals => 'Compra de ticket de metrô\r
Instruções para utilizar o metrô\r
Marcar um compromisso por telefone\r
Domínio do verbo QUEDAR\r
Descrição de ações em desenvolvimento\r
Entonação exclamativa adequada\r
Indagação e indicação de como ir a um lugar\r
Nomenclatura vocabulário relacionado à cidade\r
', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 90,
         :dept_id => 11
         })
discipline.id = 568
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'LIBRAS', 
         :code => 'FICLIBRAS', 
         :description => 'Para capacitar  profissionais tradutores/intérpretes ',
         :goals => 'Estimular o desenvolvimento de vocábulos da Língua Brasileira de Sinais;\r
Proporcionar momentos e oportunidades para a prática de LIBRAS e seu aspectos de identidade e cultura da comunidade surda.', 
         :workload => '120',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 93,
         :dept_id => 11
         })
discipline.id = 569
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Inglês Básico', 
         :code => 'CSSB FIC ING BASICO', 
         :description => 'Desenvolver a capacidade de comunicação na língua estrangeira em seu nível incipiente.',
         :goals => ' Possibilitar uma compreensão geral do funcionamento da língua e a comunicação em seu sentido mais imediato, bem como preparar o educando para aprendizagem da língua voltada à sua profissão.', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 98,
         :dept_id => 32
         })
discipline.id = 571
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Espanhol Básico', 
         :code => 'CSSB FIC ESP BASICO', 
         :description => 'Desenvolver a capacidade de comunicação na língua estrangeira em seu nível incipiente.',
         :goals => 'Possibilitar uma compreensão geral do funcionamento da língua e a comunicação em seu sentido mais imediato, bem como preparar o educando para aprendizagem da língua voltada à sua profissão.', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 97,
         :dept_id => 32
         })
discipline.id = 572
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Conceitos Básicos de Administração', 
         :code => 'CSSB FIC CBADM', 
         :description => 'Conhecer os princípios básicos de administração de empresas e dos processos administrativos.\r
',
         :goals => '•    Definir os princípios básicos da administração.\r
•       Definir objetivos organizacionais.\r
•       Estabelecer metas em consonância com os objetivos organizacionais.\r
•       Atuar em parceria e em equipes.\r
•       Identificar as funções do administrador e sua importância para o sucesso do negócio.\r
', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 95,
         :dept_id => 32
         })
discipline.id = 573
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Introdução à Contabilidade', 
         :code => 'CSSB FIC INTCONT', 
         :description => 'Fundamentos, conceitos e técnicas básicas da contabilidade.',
         :goals => '•    Conhecer as bases conceituais da Contabilidade;\r
•       Identificar os elementos do patrimônio, suas configurações e as causas de suas variações;\r
•       Classificar, analisar e registrar transações nas contas patrimoniais (Ativo, Passivo, e Patrimônio Líquido).\r
•       Executar lançamentos contábeis básicos.\r
', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 95,
         :dept_id => 32
         })
discipline.id = 574
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português', 
         :code => 'CSSB FIC PORT', 
         :description => 'Saber ler, explorar, interpretar e produzir diversos gêneros textuais.',
         :goals => '•    Escolher o que deve ser lido\r
•       Reconhecer a significação das palavras no contexto\r
•       Identificar formas diversas para interpretar textos\r
•       Reescrever textos literários a partir da leitura coletiva\r
•       Identificar as características do texto dissertativo\r
\r
', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 95,
         :dept_id => 32
         })
discipline.id = 575
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática Básica', 
         :code => 'CSSB FIC MAT BASICA', 
         :description => 'Dominar o embasamento teórico-prático sobre as operações básicas.',
         :goals => '•    Conhecer a história da matemática financeira e comercial;\r
•       Analisar, interpretar, formular e resolver situações-problema\r
•       Compreender diferentes significados das operações envolvendo conceitos da matemática financeira e comercial\r
', 
         :workload => '10',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 95,
         :dept_id => 32
         })
discipline.id = 576
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Básica', 
         :code => 'CSSB FIC INFO BASICA', 
         :description => 'Operar sistemas operacionais e aplicativos utilizados no mercado.',
         :goals => '•    Operar os sistemas operacionais utilizados no mercado;\r
•       Operar aplicativos e utilitários de microinformática;\r
•       Elaborar documentos de texto dando-lhes formatações específicas, tais como carta, relatórios e formulários;\r
', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 95,
         :dept_id => 32
         })
discipline.id = 577
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética, Cidadania e Meio Ambiente', 
         :code => 'CSSB FIC E.C.M', 
         :description => 'Trabalhar conceitos acerca de ética, cidadania e meio-ambiente.',
         :goals => '•    Compreender as principais concepções éticas constituídas historicamente.\r
•       Compreender o fenômeno ético e suas implicações no convívio humano e em sua relação com o meio ambiente.\r
•       Discutir a questão da responsabilidade socioambiental a partir de exemplos práticos.\r
', 
         :workload => '10',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 95,
         :dept_id => 32
         })
discipline.id = 578
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Noções de Informática', 
         :code => 'CSSB FIC NOINFO', 
         :description => 'Noções de Informática',
         :goals => '•    Conhecer a arquitetura básica de um computador.\r
•       Conhecer o pacote de escritório MS Office 2007 (editor de texto, planilha eletrônica e apresentação em multimídia).\r
', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 96,
         :dept_id => 32
         })
discipline.id = 579
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Redação e comunicação Comercial', 
         :code => 'CSSB FIC REDAC COM', 
         :description => 'Desenvolver técnicas de redação e comunicação comercial',
         :goals => '- Compreender o processo de gestão e administração escolar.\r
- Desenvolver as competências inerentes ao secretariado escolar.\r
', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 96,
         :dept_id => 32
         })
discipline.id = 580
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão Escolar', 
         :code => 'CSSB FIC GEST ESC', 
         :description => 'Desenvolver técnicas de Gestão Escolar',
         :goals => '•    Conhecer sobre a gestão educacional diferenciando as relações entre a organização da educação nacional e a gestão pedagógica da escola.\r
•       Identificar os elementos que compõem a gestão de recursos humanos, e compreender as atividades do secretário escolar.\r
', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 96,
         :dept_id => 32
         })
discipline.id = 581
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática Básica', 
         :code => 'CSSB FIC MAT BASIC', 
         :description => 'Dominar as operações básicas e cálculos financeiros.',
         :goals => '•    Dominar o embasamento teórico-prático sobre as operações básicas envolvendo cálculos financeiros e comerciais\r
•       Tomar decisões sobre as melhores alternativas de investimentos e financiamentos e comerciais.\r
', 
         :workload => '10',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 96,
         :dept_id => 32
         })
discipline.id = 582
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética, Cidadania e Meio Ambiente', 
         :code => 'CSSB FIC E.C.M.A.', 
         :description => 'Compreender conceitos sobre ética, cidadania e meio-ambiente.',
         :goals => '•    Compreender as principais concepções éticas constituídas historicamente.\r
•       Compreender o fenômeno ético e suas implicações no convívio humano e em sua relação com o meio ambiente.\r
•       Discutir a questão da responsabilidade socioambiental a partir de exemplos práticos.\r
', 
         :workload => '10',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 96,
         :dept_id => 32
         })
discipline.id = 583
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão da Organização e Secretriado Escolar', 
         :code => 'CSSB FIC GEST ORG SE', 
         :description => 'Noções de processos de gestão e administração EScolar',
         :goals => '- Compreender o processo de gestão e administração escolar.\r
- Desenvolver as competências inerentes ao secretariado escolar.\r
', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 96,
         :dept_id => 32
         })
discipline.id = 584
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'REDES DE COMPUTADORES  VOL. 1', 
         :code => 'HCDAV1', 
         :description => 'Parceria entre o IFB e a Huawei, visando oferecer um curso de qualidade.',
         :goals => 'Preparar interessados em realizar o exame de certificação HCDA.\r
 Iniciar a preparação para interessados em realizar exames de certificação em redes de computadores similares.', 
         :workload => '70',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 99,
         :dept_id => 11
         })
discipline.id = 585
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'REDES DE COMPUTADORES  VOL. 2', 
         :code => 'HCDAV2', 
         :description => 'parceria entre o IFB e a Huawei, visando oferecer um curso de qualidade e',
         :goals => '.Preparar profissionais na área de Informática com ênfase em Redes de Computadores para o mercado de trabalho.', 
         :workload => '35',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 99,
         :dept_id => 11
         })
discipline.id = 586
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Relações Interpressoais', 
         :code => 'MOD I - REL. INTERP.', 
         :description => 'Desenvolve as habilidades de articular as relações com as pessoas.',
         :goals => 'Aplicar Princípios das Relações Interpessoais na área de Alimentos e Bebidas (AeB).', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 102,
         :dept_id => 29
         })
discipline.id = 587
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'História da Gastronomia', 
         :code => 'MOD. I - HIST GASTR', 
         :description => 'Relacionar aspectos histórico-culturais a produção, apresentação, serviço e ambientação de espaços.',
         :goals => 'Aplicar os conhecimentos da história da gastronomia na elaboração de pratos da cozinha, considerando a temática do ambiente e da produção.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 102,
         :dept_id => 29
         })
discipline.id = 588
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod I - sem I - Habilidades básicas', 
         :code => 'MOD I - HAB. BAS.', 
         :description => 'Compreender as etapas de pré-preparo e os métodos básicos de produção dos alimentos.',
         :goals => 'Entender a estrutura física e funcional da cozinha.', 
         :workload => '160',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 102,
         :dept_id => 29
         })
discipline.id = 589
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod I - sem I - Higiene e Segurança Alimentar', 
         :code => 'MOD I - HIG SEG AL.', 
         :description => 'Seleção e higiene das matérias primas;  conservação dos alimentos e boas práticas de manipulação.',
         :goals => 'Preparar alimentos e bebidas de acordo com os padrões de segurança alimentar.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 102,
         :dept_id => 29
         })
discipline.id = 590
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. I - semI - Uso e ocupação do solo Urbano', 
         :code => 'MOD I - SEM I - UOS', 
         :description => 'Medidas para o adequado uso e ocupação do solo urbano.',
         :goals => '•    Utilizar a legislação e as normas técnicas\r
•       Reconhecer e aplicar medidas que reduzam os impactos ambientais\r
•       Elaborar e interpretar relatórios técnicos\r
•       Identificar elementos de uso e ocupação do solo,  superfícies e sistemas de referência, projeções cartográficas, sistema de coordenadas.', 
         :workload => '100',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 94,
         :dept_id => 29
         })
discipline.id = 594
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. I - sem I - Português instrumental', 
         :code => 'MOD I - SEM I - PI', 
         :description => 'Utilizar a comunicação de forma eficaz nas transações imobiliárias.',
         :goals => '•    Elaborar relatórios, memorandos e manuais\r
•       Escrever de acordo com a norma culta da Língua Portuguesa,\r
•       Interpretar corretamente textos,\r
•       Pesquisar assuntos conforme tema proposto\r
•       Compor seu próprio texto a partir das pesquisas,\r
•       Conhecer e estabelecer Rapport/sintonia.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 94,
         :dept_id => 29
         })
discipline.id = 595
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. I - sem I - Noções de construção civil ', 
         :code => 'MOD I - SEM. I - NCC', 
         :description => 'Materiais, normalizações do Sistema Nacional de Metrologia, conceito de agregados e agregantes.',
         :goals => '•    Reconhecer os principais materiais utilizados na construção civil\r
•       Conhecer e compreender as normalizações do Sistema Nacional de Metrologia\r
•       Conhecer e compreender as estrutura dos materiais\r
•       Conhecer e compreender os conceitos de agregados e agregantes\r
', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 94,
         :dept_id => 29
         })
discipline.id = 596
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod I - sem I - Matemática financeira  ', 
         :code => 'MOD - SEM I MAT. FIN', 
         :description => 'Aplicar conhecimentos matemáticos necessários às transações imobiliárias.',
         :goals => '•       Realizar cálculos financeiros.\r
•       Fazer análises de movimentação monetária com base no fluxo de caixa.\r
•       Avaliar políticas de credito, cobrança e financiamentos.\r
•       Utilizar calculadora financeira.\r
•       Elaborar planilhas financeiras com recursos da informática.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 94,
         :dept_id => 29
         })
discipline.id = 597
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod I - sem I - Ética e relações interpesssoais', 
         :code => 'MOD I - SEM I ERI', 
         :description => 'Adotar um comportamento ético e socialmente responsável nas transações imobiliárias.',
         :goals => '\r
•       Agir eticamente no processo decisório.\r
•       Agir eticamente frente às questões de natureza legal, social e cultural.\r
•       Aplicar os conceitos de responsabilidade social e desenvolvimento sustentável nas transações imobiliárias.\r
•       Compreender as consequências do exercício ilegal da profissão.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 94,
         :dept_id => 29
         })
discipline.id = 598
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Linux Básico Para Deficientes Visuais', 
         :code => 'CSSB FIC LINUX BAS', 
         :description => 'Componente única do curso',
         :goals => 'Manipular o Sistema Operacional Linux em suas várias distribuições via linha de comando. ', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 103,
         :dept_id => 32
         })
discipline.id = 599
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Sociedade e Meio Ambiente', 
         :code => 'CSSB TS SOC MEIOAMB', 
         :description => 'Componente Módulo I',
         :goals => 'Compreender a sustentabilidade em suas diversas dimensões: social, cultural, ecológica, ambiental, territorial, econômica e política.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 104,
         :dept_id => 32
         })
discipline.id = 600
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Básica', 
         :code => 'CSSB TS INFO BAS', 
         :description => 'Componente do Módulo I',
         :goals => 'Conhecer e manipular a arquitetura básica e o sistema operacional de um microcomputador.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 104,
         :dept_id => 32
         })
discipline.id = 601
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Introdução à Administração', 
         :code => 'CSSB TS INT ADM', 
         :description => 'Componente do Módulo I',
         :goals => '•    Conhecer as diversas técnicas e as correntes de pensamento da administração geral.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 104,
         :dept_id => 32
         })
discipline.id = 602
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Leitura e Produção de Texto', 
         :code => 'CSSB TS LEIT PRO TEX', 
         :description => 'Componente do Módulo I',
         :goals => 'Saber ler, analisar e compreender textos, empregar estratégias adequadas à leitura, interpretar corretamente textos diversos, produzir textos diversos, dissertar, produzir textos persuasivos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 104,
         :dept_id => 32
         })
discipline.id = 603
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Técnicas Secretariais', 
         :code => 'CSSB TS TEC SECR', 
         :description => 'Componente do Módulo I',
         :goals => 'Planejar e organizar a rotina diária e mensal dos diretores/gestores de uma organização, demonstrando as técnicas do profissional de secretariado e Conhecendo os conceitos que envolvem a profissão; \r
', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 104,
         :dept_id => 32
         })
discipline.id = 604
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Relações Interpessoais', 
         :code => 'CSSB TS REL INTERP', 
         :description => 'Componente do Módulo I',
         :goals => 'Compreender os processos de liderança e relações de poder no ambiente de trabalho;         Conhecer os processos de interação humana e seus principais problemas; Compreender a importância do bom manejo das relações interpessoais e sua aplicabilidade nas organizações;\r
', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 104,
         :dept_id => 32
         })
discipline.id = 605
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão de Pessoas', 
         :code => 'CSSB TS GEST PESS', 
         :description => 'Componente do Módulo I',
         :goals => '- Conhecer a evolução do mundo do trabalho, na perspectiva da Gestão de Pessoas.\r
- Identificar as principais características do setor de Recursos Humanos diante das diversas organizações.\r
-  Trabalhar a questão de saúde e qualidade de vida nas organizações.\r
', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 104,
         :dept_id => 32
         })
discipline.id = 606
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Primeiros Socorros', 
         :code => 'CSSB TS PRIM SOC', 
         :description => 'Componente do Módulo I',
         :goals => 'Ser capaz de executar técnicas básicas de intervenção, e conhecer os serviços de emergência disponíveis.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 104,
         :dept_id => 32
         })
discipline.id = 607
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Inglês instrumental GB 1/2012', 
         :code => 'ING. INST. GB 1/2012', 
         :description => 'Recepcionar e atender um cliente anglófono na situação de bar e restaurante.',
         :goals => 'Identificar e compreender as estruturas elementares da língua inglesa, conhecer o vocabulário da língua inglesa a fim de se comunicar em situações cotidianas de bar e restaurante, interagir oralmente com um estrangeiro anglófono no contexto de bar e restaurante.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 105,
         :dept_id => 29
         })
discipline.id = 608
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Higiene e segurança alimentar GB 1/2012', 
         :code => 'H.S.A GB 1/2012', 
         :description => 'Boas Práticas em alimentação: higiene pessoal, ambiental e de equipamentos na produção de A&B.',
         :goals => 'Reconhecer a importância da higiene, implicações da presença de microorganismos nos alimentos, reconhecer as principais doenças transmitidas por alimentos, aplicar legislação sanitária vigente, noções básicas de Boas Práticas de Fabricação (BPF)', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 105,
         :dept_id => 29
         })
discipline.id = 609
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Processo Comunicativo GB 1/2012', 
         :code => 'PROC. COM. GB 1/2012', 
         :description => 'Comunicar-se com cordialidade, desenvoltura e liderança.',
         :goals => 'Interpretar as necessidades as necessidades específicas de cada atividade, atender e orientar os clientes fazendo o uso de linguagem clara, precisa e adequada ao contexto profissional.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 105,
         :dept_id => 29
         })
discipline.id = 610
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Relações Interpressoais GB 1/2012', 
         :code => 'RI GB 1/2012', 
         :description => 'Aplicar Princípios das Relações Interpessoais na área de Alimentos e Bebidas (AeB).\r
',
         :goals => '- Articular as relações com as pessoas.\r
- Perceber as atitudes pessoais e agir com profissinalismo.\r
- Desenvolver técnicas de trabalho em equipe.\r
\r
', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 105,
         :dept_id => 29
         })
discipline.id = 611
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Serviços de Bar e Restaurante GB 1/2012', 
         :code => 'SBR GB 1/2012', 
         :description => 'Vender, servir e operacionalizar produtos e serviços de A&B em bares e restaurantes',
         :goals => 'Montar os espaços, preparar as mesas e utilizar equipamentos e utensílios, atender o cliente a partir do uso de técnicas de atendimento e de vendas, servir bebidas e comidas à mesa, comercializar cardápios em sintonia com a produção, comunicar-se com postura profissional.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 105,
         :dept_id => 29
         })
discipline.id = 612
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Serviços de Eventos GB 1/2012', 
         :code => 'SERV. EV. GB 1/2012', 
         :description => 'Organizar e operacionalizar os serviços de alimentos e bebidas no contexto de eventos sociais.',
         :goals => 'Montar os espaços, preparar as mesas e utilizar equipamentos e utensílios de serviços para eventos em Alimentos e Bebidas, atender ao cliente nos eventos sociais servindo bebidas e comidas, executar o planejamento, a organização e o controle de estoque no ponto de venda e de materiais de eventos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 105,
         :dept_id => 29
         })
discipline.id = 613
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão e Organização Escolar', 
         :code => 'CSSB TS GEST ORG ESC', 
         :description => 'Componente do Módulo I',
         :goals => 'Estabelecer as relações entre a organização da educação nacional e a gestão pedagógica da escola;', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 106,
         :dept_id => 32
         })
discipline.id = 614
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Noções de Recursos Humanos', 
         :code => 'CSSB TS NOC REC HUM', 
         :description => 'Componente do Módulo I',
         :goals => 'Conhecer, analisar, identificar e executar atividades básicas inerentes ao setor de recursos humanos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 106,
         :dept_id => 32
         })
discipline.id = 615
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Básica', 
         :code => 'CSSB TS INFO BAS1', 
         :description => 'Componente Módulo I',
         :goals => '•Conhecer e  manipular a arquitetura básica e o sistema operacional de um microcomputador.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 106,
         :dept_id => 32
         })
discipline.id = 616
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Sociedade e Meio Ambiente', 
         :code => 'CSSB TS SOC MEIOAMB1', 
         :description => 'Componente Módulo I',
         :goals => '•    Compreender a sustentabilidade em suas diversas dimensões: social, cultural, ecológica, ambiental, territorial, econômica e política.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 106,
         :dept_id => 32
         })
discipline.id = 617
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Técnicas Secretariais', 
         :code => 'CSSB TS TEC SECR1', 
         :description => 'Componente Módulo I',
         :goals => '•    Planejar e organizar a rotina diária e mensal dos diretores/gestores de uma organização, demonstrando as técnicas do profissional de secretariado e Conhecendo os conceitos que envolvem a profissão', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 106,
         :dept_id => 32
         })
discipline.id = 618
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Leitura e Produção de Texto', 
         :code => 'CSSB TS LEIT PROTEX1', 
         :description => 'Componente Módulo I',
         :goals => 'Saber ler, analisar e compreender textos, empregar estratégias adequadas à leitura, interpretar corretamente textos diversos, produzir textos diversos, dissertar, produzir textos persuasivos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 106,
         :dept_id => 32
         })
discipline.id = 619
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão de Pessoas', 
         :code => 'CSSB TS GEST PESS1', 
         :description => 'Componente Módulo I',
         :goals => 'Conhecer a evolução do mundo do trabalho, na perspectiva da Gestão de Pessoas. Identificar as principais características do setor de Recursos Humanos diante das diversas organizações. Trabalhar a questão de saúde e qualidade de vida nas organizações.\r
', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 106,
         :dept_id => 32
         })
discipline.id = 620
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Primeiros Socorros', 
         :code => 'CSSB TS PRIM SOC1', 
         :description => 'Componente Módulo I',
         :goals => 'Ser capaz de executar técnicas básicas de intervenção, e conhecer os serviços de emergência disponíveis.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 106,
         :dept_id => 32
         })
discipline.id = 621
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Inglês Instumental/Leitura', 
         :code => 'CSSB FIC ING INST', 
         :description => 'Componente única do FIC',
         :goals => 'Compreender textos escritos.\r
Empregar estratégias adequadas à leitura;\r
Interpretar corretamente textos diversos;\r
Compreender o funcionamento linguístico da língua inglesa. ', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 107,
         :dept_id => 32
         })
discipline.id = 622
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Língua Espanhola Nível Básico', 
         :code => 'CSSB FIC ESP BAS', 
         :description => 'Componente única',
         :goals => 'Compreender e se comunicar em espanhol com o nível básico de aprendizagem. ', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 108,
         :dept_id => 32
         })
discipline.id = 623
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fundamentos da Administração', 
         :code => 'CSSB FIC FUN ADM', 
         :description => 'Componente do módulo único',
         :goals => '•    Conhecer os princípios básicos da administração das empresas e da gestão de pessoas.\r
•       Compreender a importância das funções administrativas.\r
\r
        \r
', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 111,
         :dept_id => 32
         })
discipline.id = 624
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Técnicas de Vendas', 
         :code => 'CSSB FIC TEC VEND', 
         :description => 'Componente do módulo único',
         :goals => '\r
- Conhecer a diversas técnicas de vendas e sua importância para o negócio.\r
        \r
', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 111,
         :dept_id => 32
         })
discipline.id = 625
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'O Processo de Vendas', 
         :code => 'CSSB FIC PROC VEND', 
         :description => 'Componente do módulo único',
         :goals => '- Compreender o processo de vendas e pós-vendas.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 111,
         :dept_id => 32
         })
discipline.id = 626
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Redação Comercial', 
         :code => 'CSSB FIC REDA COMER', 
         :description => 'Componente do múdulo único',
         :goals => '•    Identificar normas de redação comercial.\r
•       Reconhecer a língua portuguesa como diferencial nas negociações.\r
', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 111,
         :dept_id => 32
         })
discipline.id = 627
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática Comercial e Financeira', 
         :code => 'CSSB FIC MAT COM FIN', 
         :description => 'Componente do módulo único',
         :goals => ' - Dominar o embasamento teórico-prático sobre as operações básicas envolvendo cálculos financeiros e comerciais, podendo tomar decisões sobre as melhores alternativas de investimentos e financiamentos e comerciais.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 111,
         :dept_id => 32
         })
discipline.id = 628
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Introdução à Contabilidade', 
         :code => 'CSSB FIC INT CONT', 
         :description => 'Componente do módulo único',
         :goals => '•    Compreender e aplicar os conceitos, objeto e finalidade da Contabilidade.\r
•       Aplicar as Técnicas contábeis de escrituração e Demonstrações Contábeis;\r
•       Entender o processo de formação do lucro.\r
\r
', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 112,
         :dept_id => 32
         })
discipline.id = 629
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Leitura e Produção de Texto', 
         :code => 'CSSB FIC LEI PRO TEX', 
         :description => 'Componente do módulo único',
         :goals => '- Saber ler, analisar e compreender textos;', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 112,
         :dept_id => 32
         })
discipline.id = 630
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática Comercial e Financeira', 
         :code => 'CSSB FIC MAT COM FI1', 
         :description => 'Componente do módulo único',
         :goals => ' - Dominar o embasamento teórico-prático sobre as operações básicas envolvendo cálculos financeiros e comerciais, podendo tomar decisões sobre as melhores alternativas de investimentos e financiamentos e comerciais.\r
\r
', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 112,
         :dept_id => 32
         })
discipline.id = 631
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Aplicada', 
         :code => 'CSSB FIC INFO APLIC', 
         :description => 'Componente do módulo único',
         :goals => '- Operar microcomputadores com sistema operacional modo gráfico, \r
- Utilizar aplicativos básicos do sistema operacional;\r
                \r
', 
         :workload => '30',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 112,
         :dept_id => 32
         })
discipline.id = 632
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética, Cidadania e Meio Ambiente', 
         :code => 'CSSB FIC ETIC CID MA', 
         :description => 'Componente do módulo único',
         :goals => '- Compreender a ética presente nas inter-relações  humanas e socioambientais;\r
\r
        \r
', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 112,
         :dept_id => 32
         })
discipline.id = 633
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Recursos Humanos', 
         :code => 'CSSB FIC REC HUM', 
         :description => 'Componente do módulo único',
         :goals => '- Identificar as principais atribuições do setor de Recursos Humanos dentro da organização.\r
\r
\r
\r
', 
         :workload => '30',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 112,
         :dept_id => 32
         })
discipline.id = 634
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Base dos processos fermentativos P&C 1/2012', 
         :code => 'BPF P&C 1/2012', 
         :description => 'Princípios da fermentação dos diferentes processos que envolvam produtos panificados e conflitados.',
         :goals => '• Compreender o processo de fermentação.\r
• Importância do processo de fermatação  nos panificados e confeitados.\r
•  Reconhecer as tipos de fermentação.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 113,
         :dept_id => 29
         })
discipline.id = 635
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Princípios de Higiene e Sanitização P&C 1/2012', 
         :code => 'PHS P&C 1/2012', 
         :description => 'Aplicar os princípios da higiene e sanitização em estabelecimentos de serviços de alimentação. ',
         :goals => '• Compreender os conceitos de higiene e sanitização.\r
• Importância do processo de higiene e sanitização.\r
• Reconhecer os tipos de limpeza e sanitização.\r
', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 113,
         :dept_id => 29
         })
discipline.id = 636
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Relações Interpessoais P&C 1/2012', 
         :code => 'RI P&C 1/2012', 
         :description => 'Adotar um comportamento ético e socialmente responsável nas empresas produtoras de alimentos.',
         :goals => '•    Agir eticamente no processo decisório.\r
•       Agir eticamente frente às questões de natureza legal, social e cultural.\r
•       Aplicar os conceitos de responsabilidade social e desenvolvimento sustentável nas Empresas.\r
•       Compreender as consequências do exercício ilegal da profissão\r
', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 113,
         :dept_id => 29
         })
discipline.id = 637
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 2 Inglês -CRF', 
         :code => 'MOD. 2 INGLÊS -CRF', 
         :description => 'Inglês ',
         :goals => 'Inglês ', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 74,
         :dept_id => 29
         })
discipline.id = 638
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 2 Espanhol -CRF', 
         :code => 'MOD. 2 ESPANHOL -CRF', 
         :description => 'Espanhol Mod. 2',
         :goals => 'Espanhol Mod. 2', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 73,
         :dept_id => 29
         })
discipline.id = 639
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português Instrumental', 
         :code => 'PORTBRA', 
         :description => 'PORTBRA',
         :goals => 'PORTBRA', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 114,
         :dept_id => 13
         })
discipline.id = 640
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Espanhol', 
         :code => 'ESPANHOLBRA', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 115,
         :dept_id => 13
         })
discipline.id = 641
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Italiano', 
         :code => 'ITALIANOBRA', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 116,
         :dept_id => 13
         })
discipline.id = 642
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'FIC Francês para iniciantes - Turma A', 
         :code => 'FRANCÊSBRA', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 117,
         :dept_id => 13
         })
discipline.id = 643
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'FIC Francês para iniciantes - Turma B', 
         :code => 'FRANCÊSB', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 118,
         :dept_id => 13
         })
discipline.id = 644
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fic Copa Francês- Módulo II', 
         :code => 'FRANCESCOPA- II', 
         :description => 'Capacitar Profissionais',
         :goals => 'Capacitar profissionais para atendimento ao público em língua francesa.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 77,
         :dept_id => 12
         })
discipline.id = 645
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fic Copa Francês- Módulo III', 
         :code => 'FRANCESCOPA- III', 
         :description => 'Capacitar profissionais',
         :goals => 'Capacitar profissionais para usar adequadamente o vocabulário específico em língua francesa para cada contexto de atendimento.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 77,
         :dept_id => 12
         })
discipline.id = 646
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fic Copa Inglês- Módulo II', 
         :code => 'INGLESCOPA- II', 
         :description => 'Capacitar profissionais',
         :goals => 'Capacitar profissionais para atendimento em lojas de roupas, sapatos e souvenires.\r
Fornecer informações turísticas em língua inglesa..', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 81,
         :dept_id => 12
         })
discipline.id = 647
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fic Copa Inglês- Módulo III', 
         :code => 'INGLESCOPA- III', 
         :description => 'Capacitar profissionais',
         :goals => 'Capacitar profissionais para usar adequadamente o vocabulário específico em língua francesa para cada contexto de atendimento.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 81,
         :dept_id => 12
         })
discipline.id = 648
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fic Copa Espanhol- Módulo II', 
         :code => 'ESPANHOLCOPA-MOD II', 
         :description => 'Capacitar Profissionais',
         :goals => 'Capacitar profissionais para realizar atendimento em lojas de roupas, sapatos e souvenires.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 67,
         :dept_id => 12
         })
discipline.id = 649
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fic Copa Espanhol- Módulo III', 
         :code => 'ESPANHOLCOPA-MOD III', 
         :description => 'Capacitar profissionais',
         :goals => 'Capacitar profissionais para usar adequadamente o vocabulário específico em língua espanhola para cada contexto de atendimento.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 67,
         :dept_id => 12
         })
discipline.id = 650
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão de Marketing', 
         :code => 'GESTMARKETING', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 47,
         :dept_id => 12
         })
discipline.id = 651
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão de Pessoas', 
         :code => 'GESTPESSOAS', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 47,
         :dept_id => 12
         })
discipline.id = 652
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão Ambiental Aplicada ao Cooperativismo', 
         :code => 'GAAPLCOOPERATIVISMO', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 47,
         :dept_id => 12
         })
discipline.id = 653
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gerenciamento e Auditoria em Cooperativismo', 
         :code => 'GAUDTCOOPERATIVISMO', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 47,
         :dept_id => 12
         })
discipline.id = 654
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Empreendedorismo', 
         :code => 'EMPREENDORISMO', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 47,
         :dept_id => 12
         })
discipline.id = 655
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Elaboração e Gestão de Projetos', 
         :code => 'ELGESTPROJ', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 47,
         :dept_id => 12
         })
discipline.id = 656
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Administração Mercadológica', 
         :code => 'CTAGC - ADM MERC', 
         :description => 'Administração Mercadológica para o comércio',
         :goals => 'Compreender a gestão dos processos de marketing.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 119,
         :dept_id => 37
         })
discipline.id = 657
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Comércio Eletrônico', 
         :code => 'CTAGC - COM ELETR', 
         :description => 'Comércio Eletrônico para o comércio',
         :goals => 'Conhecer os modelos de negócios eletrônicos.\r
Desenvolver projetos de comércio eletrônico.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 119,
         :dept_id => 37
         })
discipline.id = 658
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Contabilidade Empresarial', 
         :code => 'CTAGC - CONT EMPRE', 
         :description => 'Utilizar a contabilidade como fonte de informação e apoio à tomada de decisão.',
         :goals => 'Identificar os elementos que compõem do patrimônio; Compreender os regimes contábeis aplicados.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 119,
         :dept_id => 37
         })
discipline.id = 659
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Custos e Formação de Preços', 
         :code => 'CTAGC - CUSTFOPREC', 
         :description => 'Custos e Formação de Preços-PARA O CURSO TÉCNICO EM COMÉRCIO',
         :goals => 'Identificar os custos existentes na composição dos preços.\r
', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 119,
         :dept_id => 37
         })
discipline.id = 660
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Empreendedorismo', 
         :code => 'CTAGC - EMPREENDED', 
         :description => 'A',
         :goals => 'A', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 119,
         :dept_id => 37
         })
discipline.id = 661
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Espanhol Técnico', 
         :code => 'CTAGC - ESPANTECN', 
         :description => 'Espanhol Técnico para o comércio',
         :goals => 'Utilizar conhecimentos da língua espanhola como ferramenta nas atividades cotidianas do comércio.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 119,
         :dept_id => 37
         })
discipline.id = 662
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Estatística Aplicada às Vendas', 
         :code => 'CTAGC - ESTAPLICVEND', 
         :description => 'Estatística Aplicada às Vendas para o comércio\r
',
         :goals => 'Aplicar conhecimentos da estatística como ferramenta nas atividades de uma empresa.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 119,
         :dept_id => 37
         })
discipline.id = 663
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética e Responsabilidade Social', 
         :code => 'CTAGC - ETICRESPSOCI', 
         :description => 'A',
         :goals => 'A', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 119,
         :dept_id => 37
         })
discipline.id = 664
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão de Pessoas', 
         :code => 'CTAGC - GESTPESSOAS', 
         :description => 'A',
         :goals => 'A', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 119,
         :dept_id => 37
         })
discipline.id = 665
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão da Qualidade', 
         :code => 'CTAGC - GESTQUALID', 
         :description => 'Adotar um sistema de qualidade no processo de comercialização.\r
',
         :goals => 'Utilizar teorias e princípios da qualidade; Relacionar as características básicas dos serviços para elaborar as estratégias de atuação no mercado; Definir sistema de coleta de informações.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 119,
         :dept_id => 37
         })
discipline.id = 666
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Aplicada às Atividades Comerciais', 
         :code => 'CTAGC - INFOATIVCOME', 
         :description => 'A',
         :goals => 'A', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 119,
         :dept_id => 37
         })
discipline.id = 667
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Inglês Técnico', 
         :code => 'CTAGC - INGLESTECNIC', 
         :description => 'Utilizar conhecimentos da língua inglesa como ferramenta nas atividades cotidianas do comércio.',
         :goals => 'Redigir textos técnicos e correspondências em inglês, em nível básico; Aplicar corretamente termos técnicos da língua inglesa em situações cotidianas.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 119,
         :dept_id => 37
         })
discipline.id = 668
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Legislação Empresarial', 
         :code => 'CTAGC - LEGISEMPRES', 
         :description => 'A',
         :goals => 'A', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 119,
         :dept_id => 37
         })
discipline.id = 669
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Legislação Tributária Empresarial', 
         :code => 'CTAGC - LEGISTRIBEMP', 
         :description => 'Analisar o caráter normativo da legislação tributária.',
         :goals => 'Verificar os processos de taxação, penalização, isenção e deferimento de impostos, período base, período fiscal e correção de valores.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 119,
         :dept_id => 37
         })
discipline.id = 670
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Logística', 
         :code => 'CTAGC - LOGISTICA', 
         :description => 'Planejar as atividades de logística; analisar a infraestrutura disponível de transporte.',
         :goals => 'Aplicar as teorias e princípios da logística; selecionar colaboradores para participar do desenvolvimento do planejamento em logística; executar as atividades do planejamento de logística.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 119,
         :dept_id => 37
         })
discipline.id = 671
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática Financeira', 
         :code => 'CTAGC - MATEMFINANC', 
         :description => 'Aplicar conhecimentos matemáticos necessários aos processos da gestão comercial.',
         :goals => 'Realizar cálculos financeiros; fazer análises de movimentação monetária com base no fluxo de caixa; avaliar políticas de credito, cobrança e financiamentos.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 119,
         :dept_id => 37
         })
discipline.id = 672
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Noções de Administração', 
         :code => 'CTAGC - NOCOESADM', 
         :description => 'Noções de Administração para o comércio',
         :goals => 'Compreender os processos próprios de uma empresa comercial.\r
', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 119,
         :dept_id => 37
         })
discipline.id = 673
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Planejamento Organizacional', 
         :code => 'CTAGC - PLANEJORGANI', 
         :description => 'A',
         :goals => 'A', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 119,
         :dept_id => 37
         })
discipline.id = 674
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português Instrumental', 
         :code => 'CTAGC - PORTINSTRUM', 
         :description => 'A',
         :goals => 'A', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 119,
         :dept_id => 37
         })
discipline.id = 675
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Processo de Compras', 
         :code => 'CTAGC - PROCECOMPRAS', 
         :description => 'Conhecer as rotinas e os mecanismos de compras nas empresas.',
         :goals => 'Identificar a necessidade de compra do produto ou serviço; Definir as quantidades a serem compradas e qualidade dos produtos para o estoque.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 119,
         :dept_id => 37
         })
discipline.id = 676
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Recursos Materiais e Patrimoniais', 
         :code => 'CTAGC - RECUMATEPATR', 
         :description => 'Controlar estoques e a logística de suprimentos.',
         :goals => 'Utilizar sistemas de controle de reposição dos materiais; elaborar planilhas de controle de estoques; examinar avarias; especificar, codificar e classificar materiais.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 119,
         :dept_id => 37
         })
discipline.id = 677
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Técnicas de Vendas', 
         :code => 'CTAGC - TECVENDAS', 
         :description => '´Técnicas de Vendas para o comércio',
         :goals => 'Identificar técnicas de atendimento adequadas que proporcionem a satisfação do cliente.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 119,
         :dept_id => 37
         })
discipline.id = 678
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Processo de Vendas', 
         :code => 'CTAGC - PROCEVENDAS', 
         :description => 'Processo de Vendas PARA O COMÉRCIO',
         :goals => 'Compreender os processos de vendas das empresas.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 119,
         :dept_id => 37
         })
discipline.id = 679
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Inglês noturno 2 Mod 1', 
         :code => 'ING. NOT 2 MOD. 1', 
         :description => 'Desenvolver a competência comunicativa em língua estrangeira (inglês).',
         :goals => '- Desenvolver estratégias de leitura e interpretação de textos na língua inglesa;\r
- Produzir textos em inglês;\r
- Estabelecer comunicação na língua-alvo;\r
- Desenvolver estratégias de compreensão oral em inglês.\r
', 
         :workload => '300',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 120,
         :dept_id => 29
         })
discipline.id = 681
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'FIC - INGLÊS_1º_2012', 
         :code => '123', 
         :description => 'turma inícial do 1/2012',
         :goals => 'capacitar ', 
         :workload => '300',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 74,
         :dept_id => 29
         })
discipline.id = 683
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'teste', 
         :code => 'TESTE', 
         :description => 'teste',
         :goals => 'teste', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Atividade Complementar'),   
         :course_id => 68,
         :dept_id => 12
         })
discipline.id = 684
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Planejamento e Controle de Obras', 
         :code => 'EDIFICAÇÕES_PCO_III', 
         :description => 'Planejamento de Obras',
         :goals => 'Planejamento de obras civis, dimensionando o canteiro de obras, o consumo de materiais e as equipes de trabalho de modo a atender aos recursos financeiros disponíveis e ao prazo estipulado para a conclusão', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 57,
         :dept_id => 10
         })
discipline.id = 685
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'nformática Aplicada', 
         :code => 'EDIFICAÇÕES_INFA_III', 
         :description => 'Planejamento de Obras',
         :goals => 'Utilização de ferramentas computacionais especificas na área de engenharia ', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 57,
         :dept_id => 10
         })
discipline.id = 686
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Legislação Profissional', 
         :code => 'EDIFICAÇÕES_LEGP_III', 
         :description => 'Planejamento de Obras',
         :goals => 'Conhecer e cumprir com as normas e legislações profissionais vigentes na construção civil.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 57,
         :dept_id => 10
         })
discipline.id = 687
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Empreendedorismo', 
         :code => 'EDIFICAÇÕES_EMPR_III', 
         :description => 'Planejamento da Obra',
         :goals => 'Compreensão e desenvolvimento de habilidades empreendedoras ', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 57,
         :dept_id => 10
         })
discipline.id = 688
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Orçamento de Obras', 
         :code => 'EDIFICAÇÕES_ODO_III', 
         :description => 'Planejamento da Obra',
         :goals => 'Desenvolvimento de orçamentos de obras civis utilizando ferramentas computacionais de modo a nivelar e adequar os recursos disponíveis, reduzir custos e planejar adequadamente a obra ', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 57,
         :dept_id => 10
         })
discipline.id = 689
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Licitações e Contratos', 
         :code => 'EDIFICAÇÕES_LEC_III', 
         :description => 'Planejamento da Obra',
         :goals => 'Utilização adequada da legislação pertinente de modo a elaborar propostas para participação em certames licitatórios.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 57,
         :dept_id => 10
         })
discipline.id = 690
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Controle Tecnológico', 
         :code => 'EDIFICAÇÕES_CTEC_III', 
         :description => 'Planejamento da Obra',
         :goals => 'Compreensão crítica da utilização de materiais e processos tecnológicos em obras civis, garantindo a qualidade dos resultados', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 57,
         :dept_id => 10
         })
discipline.id = 691
discipline.save!         
       

discipline = Discipline.new(
         {:name => ' Ética e Responsabilidade Social', 
         :code => 'EDIFICAÇÕES_ERS_III', 
         :description => 'Planejamento da Obra',
         :goals => 'Compreensão e utilização da língua portuguesa como língua materna, geradora de significação e integradora da organização do mundo e da própria identidade.\r
Compreensão da formação crítica em relação aos sistemas de produção e consumo, desenvolvendo atitudes que favoreçam o desempenho e da qualidade das relações no trabalho, intensificando-se nas atividades gerenciais em grupo.\r
', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 57,
         :dept_id => 10
         })
discipline.id = 692
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão de Resíduos', 
         :code => 'EDIFICAÇÕES_GDR_III', 
         :description => 'Planejamento da Obra',
         :goals => 'Apreensão de métodos e técnicas, ecologicamente sustentáveis, visando o gerenciamento dos resíduos sólidos com vistas a promoção da melhoria da qualidade ambiental.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 57,
         :dept_id => 10
         })
discipline.id = 693
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Básica', 
         :code => 'RE2_IB_I', 
         :description => 'Módulo I',
         :goals => 'Utilização de computadores e seus periféricos, assim como de recursos tecnológicos digitais referentes a esta ferramenta conforme sua necessidade.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 694
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português Instrumental', 
         :code => 'RE2_PORTIN_I', 
         :description => 'Módulo I',
         :goals => 'Compreensão e utilização da língua portuguesa como língua materna, geradora de significação e integradora da organização do mundo e da própria identidade.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 695
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Legislação Ambiental', 
         :code => 'RE2_LEGAMB_I', 
         :description => 'Módulo I',
         :goals => 'Compreensão e utilização da língua portuguesa como língua materna, geradora de significação e integradora da organização do mundo e da própria identidade.Identificação das bases políticas, conceituais, filosóficas e ideológicas da educação e da legislação ambiental e suas relações com a sustentabilidade, enquanto processo político na ação transformadora na sociedade', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 696
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Educação Ambiental', 
         :code => 'RE2_EDAMB_I', 
         :description => 'Módulo I',
         :goals => 'Identificação das bases políticas, conceituais, filosóficas e ideológicas da educação e da legislação ambiental e suas relações com a sustentabilidade, enquanto processo político na ação transformadora na sociedade.\r
 Compreensão e utilização da língua portuguesa como língua materna, geradora de significação e integradora da organização do mundo e da própria identidade.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 697
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Meio Ambiente e Sustentabilidade', 
         :code => 'RE2_MAS_I', 
         :description => 'Módulo I',
         :goals => 'Identificação e apreensão dos fatores ambientais, com vistas à proposição de ações de transformação nas relações com o meio ambiente', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 698
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Programa Interno de Gerenciamento', 
         :code => 'RE2_PIG_I', 
         :description => 'Módulo I',
         :goals => 'Análise e interpretação das peculiaridades do gerenciamento de resíduos sólidos para elaboração do plano interno de gerenciamento.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 699
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Higiene, Saúde e Segurança no Trabalho', 
         :code => 'RE2_HSST_I', 
         :description => 'Módulo I',
         :goals => 'Sistematização de hábitos relacionados à saúde humana, incluindo aqueles concernentes às relações produtivas e ao ambiente de trabalho.\r
 Compreensão dos benefícios da prática da ginástica laboral com vistas à melhoria da qualidade de vida no trabalho.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 700
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética e Responsabilidade Social', 
         :code => 'RE2_ERS_I', 
         :description => 'Módulo I',
         :goals => 'Compreensão e utilização da língua portuguesa como língua materna, geradora de significação e integradora da organização do mundo e da própria identidade.\r
 Compreensão da formação crítica em relação aos sistemas de produção e consumo, desenvolvendo atitudes que favoreçam o desempenho e da qualidade das relações no trabalho, intensificando-se nas atividades gerenciais em grupo', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 701
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Organização da Produção', 
         :code => 'RE2_ORGP_II', 
         :description => 'Módulo II',
         :goals => 'Planejamento do sistema de produção visando à otimização do fluxo de operações e a gestão de resíduos.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 702
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Administração de Centros de Reciclagem', 
         :code => 'RE2_ACR_II', 
         :description => 'Módulo II',
         :goals => 'Compreensão das práticas básicas de gestão organizacional, possibilitando a aplicação de conceitos teóricos à prática', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 703
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão de Pessoas', 
         :code => 'RE2_GP_II', 
         :description => 'Módulo II',
         :goals => 'Compreensão das principais práticas e políticas de gestão de pessoas orientadas para a melhoria do desempenho no trabalho.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 704
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Logística', 
         :code => 'RE2_LOG_II', 
         :description => 'Módulo II',
         :goals => 'Entendimento do papel da Logística como um esforço integrado, com o objetivo de alcançar vantagem competitiva', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 705
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gerenciamento de Resíduos Sólidos', 
         :code => 'RE2_GRS_II', 
         :description => 'Módulo II',
         :goals => 'Associação de intervenções que resultem no aproveitamento de resíduos sólidos e no empreendimento de ações de manejo de modo a produzir baixo impacto ambiental.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 706
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Tecnologias de Resíduos de Papel', 
         :code => 'RE2_TRP_II', 
         :description => 'Módulo II',
         :goals => 'Produção sustentável de papel reciclado destinado a fabricação de diferentes produtos capazes de agregar valor ao resíduo de papel', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 707
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matérias Primas', 
         :code => 'RE2_MPRIMAS_II', 
         :description => 'Módulo II',
         :goals => 'Identificação dos diversos tipos de materiais e suas propriedades', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 708
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Instalações de Centro de Triagem', 
         :code => 'RE1_ICT_III', 
         :description => 'Módulo III',
         :goals => 'Apropriação de conhecimentos técnicos e científicos, aplicando-os em situações cotidianas do mundo produtivo e do trabalho em reciclagem, com vistas ao planejamento de galpão de triagem, especificação, operação e manutenção de equipamentos.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 709
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Desenho Técnico', 
         :code => 'RE1_DESTEC_III', 
         :description => 'Módulo III',
         :goals => 'Utilização do desenho como ferramenta facilitadora de planejamento de instalações destinadas aos Centros de Reciclagem', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 710
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fundamentos da Administração Financeira', 
         :code => 'RE1_FAFIN_III', 
         :description => 'Módulo III',
         :goals => 'Desenvolvimento de capacidades para avaliar decisões financeiras no ambiente organizacional', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 711
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Especificação e Manutenção de Equipamentos', 
         :code => 'RE1_EMEQ_III', 
         :description => 'Módulo III',
         :goals => 'Apropriação de conhecimentos técnicos e científicos, aplicando-os em situações cotidianas do mundo produtivo e do trabalho em reciclagem, com vistas ao planejamento de galpão detriagem, uso e manutenção de equipamentos.\r
 Apropriação de conhecimentos técnicos necessários à instalação e manutenção de equipamentos de galpões de triagem.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 712
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Marketing e Empreendedorismo', 
         :code => 'RE1_MAKEMP_III', 
         :description => 'Módulo III',
         :goals => 'Compreensão do marketing dentro de uma visão estratégica e sistêmica, possibilitando a formulação de estratégiasmercadológicas e de negociação.\r
 Identificação de conceitos que viabilizem a transformação de idéias em negócios, por intermédio do planejamento, análise de mercado e interpretação das formas de captação de recursos e dos aspectos legais que envolvem o planejamento de um novo negócio.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 713
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Tecnologias de Resíduos de Papel', 
         :code => 'RE1_TECRESPAPEL_III', 
         :description => 'Módulo III',
         :goals => 'Produção sustentável de papel reciclado destinado a fabricação de diferentes produtos capazes de agregar valor ao resíduo de papel', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 714
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Tecnologia de Resíduos de Plasticos', 
         :code => 'RE1_TECRPLASTICO_III', 
         :description => 'Módulo III',
         :goals => 'Executar o manejo e operação de reciclagem de materiais plásticos', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 53,
         :dept_id => 10
         })
discipline.id = 715
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Básica', 
         :code => 'MÓVIES_INFB_I', 
         :description => 'Técnico em Móveis',
         :goals => 'Utilização de\r
computadores e seus\r
periféricos, assim como\r
de recursos\r
tecnológicos digitais\r
referentes a esta\r
ferramenta conforme\r
sua necessidade.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 716
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português Instrumental', 
         :code => 'MÓVIES_PORT INS_I', 
         :description => 'Técnico em Móveis',
         :goals => 'Compreensão e\r
utilização da língua\r
portuguesa como\r
língua materna,\r
geradora de\r
significação e\r
integradora da\r
organização do mundo\r
e da própria identidade', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 717
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ligações com madeira', 
         :code => 'MÓVIES_LIGMAD_I', 
         :description => 'Técnico em Móveis',
         :goals => 'Compreensão dos\r
processos matemáticos\r
aplicáveis ao\r
desenvolvimento das\r
atividades produtivas.\r
• Domínio dos diversos\r
tipos de ligações em\r
peças de madeira e\r
derivados visando a\r
confecção de produtos\r
de qualidade.', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 718
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Processos Administrativos', 
         :code => 'MÓVIES_PROCADM_I', 
         :description => 'Técnico em Móveis',
         :goals => 'Construção de hábitos\r
apropriados para o\r
exercício da profissão.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 719
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática Aplicada', 
         :code => 'MÓVIES_MATAPL_I', 
         :description => 'Técnico em Móveis',
         :goals => 'Compreensão dos\r
processos matemáticos\r
aplicáveis ao\r
desenvolvimento das\r
atividades produtivas.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 720
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Metrologia', 
         :code => 'MÓVIES_METROLOGIA_I', 
         :description => 'Técnico em Móveis',
         :goals => 'Identificação dos\r
instrumentos para\r
medidas diretas,\r
indiretas e medidas\r
angulares com o uso\r
correto das\r
ferramentas.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 721
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Tecnologia e Propriedade dos Materiais', 
         :code => 'MÓVIES_TPM_I', 
         :description => 'Técnico em Móveis',
         :goals => 'Compreensão da\r
estrutura dos materiais\r
com sua função\r
tecnológica e\r
econômica.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 722
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética e Responsabilidade Social', 
         :code => 'MÓVIES_ERS_I', 
         :description => 'Técnico em Móveis',
         :goals => 'Compreensão e\r
utilização da língua\r
portuguesa como\r
língua materna,\r
geradora de\r
significação e\r
integradora da\r
organização do mundo\r
e da própria identidade.\r
Compreensão da\r
formação crítica em\r
relação aos sistemas\r
de produção e\r
consumo,\r
desenvolvendo atitudes\r
que favoreçam o\r
desempenho e da\r
qualidade das relações\r
no trabalho,\r
intensificando-se nas\r
atividades gerenciais\r
em grupo.', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 723
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Madeiras e Derivados', 
         :code => 'MÓVIES_MADDER_II', 
         :description => 'Técnico em Móveis',
         :goals => 'Compreensão das\r
diferenças anatômicas\r
da madeira e sua\r
relação com suas\r
propriedades físicas e\r
mecânicas, bem como\r
da aplicação dos\r
diferentes tipos de\r
painéis de madeira', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 724
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ergonomia', 
         :code => 'MÓVIES_ERGONOMIA_II', 
         :description => 'Técnico em Móveis',
         :goals => 'Compreensão dos\r
conceitos ergonômicos\r
no dimensionamento\r
de móveis, pequenos\r
objetos e seus\r
componentes.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 725
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Metrologia', 
         :code => 'MÓVIES_METROLOGIA_II', 
         :description => 'Técnico em Móveis',
         :goals => 'Identificação dos\r
instrumentos para\r
medidas diretas,\r
indiretas e medidas\r
angulares com o uso\r
correto das\r
ferramentas. \r
Capacidade de\r
interpretação e\r
confecção de desenhos\r
técnicos para produção\r
e montagem de\r
móveis', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 726
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Desenho Técnico', 
         :code => 'MÓVIES_DESTEC_II', 
         :description => 'Técnico em Móveis',
         :goals => 'Capacidade de\r
interpretação e\r
confecção de desenhos\r
técnicos para produção\r
e montagem de\r
móveis.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 727
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Arte e Móveis', 
         :code => 'MÓVIES_ARTEMOV_II', 
         :description => 'Técnico em Móveis',
         :goals => 'Relação das criações\r
artísticas funcionalistas\r
a valores como\r
produção, tecnologia,\r
informação e às\r
questões pertinentes\r
ao ser humano,facilitando os\r
processos de criação\r
pessoal.\r
', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 728
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Projeto e Design de Móveis', 
         :code => 'MÓVEIS_PROJDESMOV_II', 
         :description => 'Técnico em Móveis',
         :goals => 'Aplicação dos\r
conceitos e de\r
metodologia de design\r
aplicados ao projeto de\r
móveis;\r
• Desenvolvimento de\r
técnicas de otimização\r
e do processo de\r
produção de mobiliário\r
em geral.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 729
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Máquinas Manuais e Estacionárias', 
         :code => 'MÓVEIS_MME_III', 
         :description => 'Técnico em Móveis',
         :goals => 'Domínio e uso correto\r
de ferramentas e\r
equipamentos manuais,\r
bem como de máquinas\r
- manuais ou\r
estacionárias - para a\r
fabricação de móveis;\r
• Aplicação das normas\r
de segurança no\r
trabalho', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 730
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Processo Produtivo Moveleiro', 
         :code => 'MÓVEIS_PPM_III', 
         :description => 'Técnico em Móveis',
         :goals => 'Produção de móveis de\r
madeira e derivados a\r
partir de leituras de\r
projetos;\r
• Operações de\r
máquinas de produção\r
de móveis.\r
• Planejamento do\r
sistema de produção\r
visando a otimização\r
do fluxo de operações e\r
a gestão de resíduos.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 731
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Tecnologia Moveleira', 
         :code => 'MÓVEIS_TECMOV_III', 
         :description => 'Técnico em Móveis',
         :goals => 'Domínio dos processos\r
de usinagem visando a\r
produção de peças de\r
mobiliário em geral, a\r
partir da leitura de\r
projeto.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 732
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Detalhamento da Produção', 
         :code => 'MÓVEIS_DETPROD_III', 
         :description => 'Técnico em Móveis',
         :goals => 'Planejamento do\r
sistema de produção\r
visando à otimização\r
do fluxo de operações e\r
a gestão de resíduos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 733
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Formação de Preço', 
         :code => 'MÓVEIS_FORMPREÇO_III', 
         :description => 'Técnico em Móveis',
         :goals => 'Identificação e\r
compreensão dos\r
custos existentes na\r
composição dos preços\r
comparando com os\r
preços de mercados.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 734
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Técnicas de acabamento em móveis', 
         :code => 'MÓVEIS_TAM_III', 
         :description => 'Técnico em Móveis',
         :goals => 'Identificação e\r
reconhecimento das\r
características gerais,\r
processos de obtenção,\r
propriedades, principais\r
tipos e aplicações de\r
materiais e\r
acabamentos.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 735
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão Ambiental', 
         :code => 'MÓVEIS_GESTAMB_III', 
         :description => 'Técnico em Móveis',
         :goals => 'Desenvolvimento da\r
visão crítica sobre\r
Desenvolvimento\r
Sustentável.\r
• Apropriação de\r
conceitos e\r
Identificação, qualificação e\r
valoração dos impactos\r
ambientais na empresa\r
moveleira.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 736
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Higiene e segurança do trabalho', 
         :code => 'MÓVEIS_HST_III', 
         :description => 'Técnico em Móveis',
         :goals => 'Sistematização de\r
hábitos relacionados à\r
saúde humana,\r
incluindo aqueles\r
concernentes às\r
relações produtivas e\r
ao ambiente de\r
trabalho.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 58,
         :dept_id => 10
         })
discipline.id = 737
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Básica', 
         :code => 'CONTROLE_IB_I', 
         :description => 'Controle Ambiental turma 2012/01',
         :goals => 'Utilização de computadores e seus periféricos, assim como de recursos tecnológicos digitais referentes a esta ferramenta conforme sua necessidade. ', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 738
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Português Instrumental', 
         :code => 'CONTROLE_POTI_I', 
         :description => 'Controle Turma 2012',
         :goals => 'Compreensão e utilização da língua portuguesa como língua materna, geradora de significação e integradora da organização do mundo e da própria identidade.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 739
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ecologia', 
         :code => 'CONTROLE_ECOLOGIA_I', 
         :description => 'Controle turma 2012',
         :goals => 'Compreensão das interações naturais e das atividades antrópicas para atuação em projetos de controle ambiental a fim de preservar a integridade ecológica dos ecossistemas;', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 740
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática Aplicada', 
         :code => 'CONTROLE_MATAPL_I', 
         :description => 'Controle turma 2012',
         :goals => 'Aplicação de técnicas matemáticas para avaliação e tomadas de decisão em problemas ambientais', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 741
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética e Responsabilidade Social', 
         :code => 'CONTROLE_ERS_I', 
         :description => 'Controle  turma 2012',
         :goals => 'Compreensão da formação crítica, desenvolvendo atitudes que favoreçam o desempenho e da qualidade das relações no trabalho.\r
Utilização adequada do conhecimento científico e tecnológico no desempenho da profissão, incluindo a formação ética e o desenvolvimento da autonomia intelectual e do pensamento crítico em prol da preservação da vida.\r
', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 742
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Hidraulica Básica', 
         :code => 'CONTROLE_HIDBAS_I', 
         :description => 'Controle turma 2012',
         :goals => 'Compreender os principais componentes hidráulicos presentes em uma Estação de Tratamento de Água e Esgoto, norteando ações para controle e operação do processo.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 743
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Introdução ao Controle Ambiental', 
         :code => 'CONTROLE_ICA_I', 
         :description => 'Controle Turma 2012',
         :goals => 'Compreender os principais conceitos em controle de poluição e seus instrumentos de controle.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 744
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Quimica Geral', 
         :code => 'CONTROLE_QUIMGERAL_I', 
         :description => 'Controle turma 2012',
         :goals => 'Análise da qualidade do meio ambiente para identificação e quantificação dos fatores que alteram a natureza física, biológica e química dos ecossistemas naturais; \r
Proposição de medidas para minimizar os impactos ambientais oriundos dos processos industriais, atuando na prevenção da poluição e/ou contaminação do meio ambiente. \r
Operação de laboratórios de análises ambientais para monitoramento da qualidade do meio ambiente para preservação e recuperação de recursos naturais.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 745
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Higiene, Saúde e Segurança no Trabalho', 
         :code => 'CONTROLE_HSST_I', 
         :description => 'Controle turma 2012',
         :goals => 'Sistematização de hábitos relacionados à saúde humana, incluindo aqueles concernentes às relações produtivas e ao ambiente de trabalho.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 746
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Estatística Aplicada', 
         :code => 'CONTROLE_ESTAPLI_II', 
         :description => 'Controle Ambiental',
         :goals => 'Interpretação de informações de natureza científica e social obtida por meio da leitura de gráficos e tabelas.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 747
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Hidraulica Básica', 
         :code => 'CONTROLE_HIDBAS_II', 
         :description => 'Controle Ambiental',
         :goals => 'Compreender os principais componentes hidráulicos presentes em uma Estação de Tratamento de Água e Esgoto, norteando ações para controle e operação do processo.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 748
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Quimica Geral', 
         :code => 'CONTROLE_QUIMGER_II', 
         :description => 'Controle Ambiental',
         :goals => 'Análise da qualidade do meio ambiente para identificação e quantificação dos fatores que alteram a natureza física, biológica e química dos ecossistemas naturais; \r
Proposição de medidas para minimizar os impactos ambientais oriundos dos processos industriais, atuando na prevenção da poluição e/ou contaminação do meio ambiente. \r
Operação de laboratórios de análises ambientais para monitoramento da qualidade do meio ambiente para preservação e recuperação de recursos naturais.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 749
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Saúde e Meio Ambiente', 
         :code => 'CONTROLE_SMA_II', 
         :description => 'Controle Ambiental',
         :goals => 'Análise da qualidade ambiental, com foco em saneamento e saúde, propondo medidas de eliminação e controle de riscos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 750
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Introdução ao Sistema de Informação Geográfica', 
         :code => 'CONTROLE_SIG_II', 
         :description => 'Controle Ambiental',
         :goals => 'Identificação das geotecnologias e suas aplicações como ferramenta de análise, diagnóstico e monitoramento ambiental. ', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 751
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Impactos Ambientais', 
         :code => 'CONTROLE_IMPAMB_II', 
         :description => 'Controle Ambiental',
         :goals => 'Aplicação de conhecimentos científicos e tecnológicos a fim de contribuir para a solução de problemas relacionados com a poluição ambiental oriundas de atividades produtivas.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 752
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão Ambiental', 
         :code => 'CONTROLE_GESTAMB_II', 
         :description => 'Controle Ambiental',
         :goals => 'Identificação e apreensão dos fatores ambientais articulados à interpretação de dados e informações pertinentes à proposição de processos de produção sustentável e conservação do meio ambiente.\r
Avaliação da utilização dos recursos hídricos a partir do conhecimento dos usos múltiplos e aspectos legais, a fim de promover o uso sustentável da água.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 65,
         :dept_id => 10
         })
discipline.id = 753
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fundamentos da Gestão Pública', 
         :code => 'FUNDAMENT GEST PUBLI', 
         :description => 'a',
         :goals => 'a', 
         :workload => '30',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 121,
         :dept_id => 37
         })
discipline.id = 754
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Metodologia Científica e Normas Técnicas', 
         :code => 'METOD CIENT NORM TEC', 
         :description => 'A',
         :goals => 'A', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 121,
         :dept_id => 37
         })
discipline.id = 755
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Métodos Quantitativos aplicados à Gestão Pública', 
         :code => 'METOD QUANT APL GPUB', 
         :description => 'A',
         :goals => 'A', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 121,
         :dept_id => 37
         })
discipline.id = 756
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Direito Administrativo', 
         :code => 'DIREITO ADM', 
         :description => 'A',
         :goals => 'A', 
         :workload => '30',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 121,
         :dept_id => 37
         })
discipline.id = 757
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Licitação, Contratos e Convênios', 
         :code => 'LICITAC CONTR CONVEN', 
         :description => 'A',
         :goals => 'A', 
         :workload => '30',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 121,
         :dept_id => 37
         })
discipline.id = 758
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética na Administração Pública', 
         :code => 'ETICA NA ADM PUBLICA', 
         :description => 'A',
         :goals => 'A', 
         :workload => '10',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 121,
         :dept_id => 37
         })
discipline.id = 759
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Inglês Básico 1', 
         :code => 'INGLÊS BÁSICO 1', 
         :description => 'A',
         :goals => 'A', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 122,
         :dept_id => 37
         })
discipline.id = 761
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Inglês Básico 2', 
         :code => 'INGLÊS BÁSICO 2', 
         :description => 'A',
         :goals => 'A', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 122,
         :dept_id => 37
         })
discipline.id = 762
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Inglês Básico 3', 
         :code => 'INGLÊS BÁSICO 3', 
         :description => 'A',
         :goals => 'A', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 122,
         :dept_id => 37
         })
discipline.id = 763
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Inglês Básico 4', 
         :code => 'INGLÊS BÁSICO 4', 
         :description => 'A',
         :goals => 'A', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 122,
         :dept_id => 37
         })
discipline.id = 764
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'FIC Espanhol', 
         :code => 'ESPANHOL PRA COPA', 
         :description => 'Alterar',
         :goals => 'Alterar', 
         :workload => '200',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 123,
         :dept_id => 13
         })
discipline.id = 765
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Portugues TESTE', 
         :code => 'PORTUGUES TESTE', 
         :description => 'portugues teste',
         :goals => 'portugues teste', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 124,
         :dept_id => 13
         })
discipline.id = 766
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Biologia TESTE', 
         :code => 'BIOLOGIA TESTE', 
         :description => 'Biologia TESTE',
         :goals => 'Biologia TESTE', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 124,
         :dept_id => 13
         })
discipline.id = 767
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática TESTE', 
         :code => 'MATEMÁTICA TESTE', 
         :description => 'Matemática TESTE',
         :goals => 'Matemática TESTE', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 124,
         :dept_id => 13
         })
discipline.id = 768
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Química TESTE', 
         :code => 'QUÍMICA TESTE', 
         :description => 'Química TESTE',
         :goals => 'Química TESTE', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 124,
         :dept_id => 13
         })
discipline.id = 769
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'FIC Francês', 
         :code => 'FRANCÊS COPA', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '160',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 125,
         :dept_id => 13
         })
discipline.id = 770
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Expressão Corporal Aplicada a Eventos', 
         :code => 'EXPRESSÃO CORPORAL', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 51,
         :dept_id => 13
         })
discipline.id = 771
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Prática de Eventos', 
         :code => 'PRÁTICA EVENTOS', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '120',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 51,
         :dept_id => 13
         })
discipline.id = 772
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Cerimonial e Protocolo', 
         :code => 'CERIMONIAL E PROTOCO', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 51,
         :dept_id => 13
         })
discipline.id = 773
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Prática de Oratória', 
         :code => 'PRATICA ORATÓRIA', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 51,
         :dept_id => 13
         })
discipline.id = 774
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Etiqueta e Postura Profissional', 
         :code => 'ETIQUETA E POSTURA P', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 51,
         :dept_id => 13
         })
discipline.id = 775
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ornamentação e Decoração de Eventos', 
         :code => 'ORNAMENTAÇÃO', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 51,
         :dept_id => 13
         })
discipline.id = 776
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Meios de Hospedagem e Legislação Hoteleira', 
         :code => 'HOSPEDAGEM', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 126,
         :dept_id => 13
         })
discipline.id = 777
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Inglês Aplicado á Hotelaria', 
         :code => 'INGLÊS APLICADO HOT.', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 126,
         :dept_id => 13
         })
discipline.id = 778
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Turismo na Copa', 
         :code => 'TURCOPA', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 126,
         :dept_id => 13
         })
discipline.id = 779
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Atendimento ao Hospede', 
         :code => 'ATEND.HOSP', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 126,
         :dept_id => 13
         })
discipline.id = 780
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Etiqueta, Cultura e Postura Profissional', 
         :code => 'ETIQUETA, CULT.POSTU', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 126,
         :dept_id => 13
         })
discipline.id = 781
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Redação Oficial', 
         :code => 'RED.OFICIAL', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 126,
         :dept_id => 13
         })
discipline.id = 782
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Noções de Direito Tributário', 
         :code => 'DIR.TRIBUTARIO', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 50,
         :dept_id => 13
         })
discipline.id = 783
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Economia e Mercado', 
         :code => 'ECON.MERCADO', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 50,
         :dept_id => 13
         })
discipline.id = 784
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Orientação Estágio Supervisionado', 
         :code => 'ESTÁGIO SUPER', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 50,
         :dept_id => 13
         })
discipline.id = 785
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Noções de Contabilidade Pública', 
         :code => 'NCP', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 50,
         :dept_id => 13
         })
discipline.id = 786
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Práticas Integradoras II', 
         :code => 'P.INTEG. II', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 50,
         :dept_id => 13
         })
discipline.id = 787
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Patrimônio, Materiais e Logística', 
         :code => 'P.M.L', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 50,
         :dept_id => 13
         })
discipline.id = 788
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão de Projetos', 
         :code => 'GES.PROJ', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 50,
         :dept_id => 13
         })
discipline.id = 789
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Estatística Básica', 
         :code => 'EST.BASICA', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 50,
         :dept_id => 13
         })
discipline.id = 790
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fundamentos da Administração ', 
         :code => 'CSSB FIC A. A FADM', 
         :description => 'Fundamentos da Administração(FADM)\r
',
         :goals => 'Conhecer os princípios básicos da administração das empresas e da gestão de pessoas.\r
Compreender a importância das funções administrativas.\r
', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 112,
         :dept_id => 32
         })
discipline.id = 791
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Introdução à Contabilidade', 
         :code => 'CSSB FIC INT. CONT', 
         :description => 'Introdução à Contabilidade',
         :goals => '•    Compreender e aplicar os conceitos, objeto e finalidade da Contabilidade.\r
•       Aplicar as Técnicas contábeis de escrituração e Demonstrações Contábeis;\r
•       Entender o processo de formação do lucro.\r
', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 112,
         :dept_id => 32
         })
discipline.id = 792
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Leitura e produção de texto', 
         :code => 'CSSB FIC L.PRODTEXT', 
         :description => 'Leitura e produção de texto',
         :goals => '- Saber ler, analisar e compreender textos;', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 112,
         :dept_id => 32
         })
discipline.id = 793
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática comercial e financeira', 
         :code => 'CSSB FIC M.C.FMATCOM', 
         :description => 'Matemática comercial e financeira\r
    (MATCOM)\r
',
         :goals => 'Dominar o embasamento teórico-prático sobre as operações básicas envolvendo cálculos financeiros e comerciais, podendo tomar decisões sobre as melhores alternativas de investimentos e financiamentos e comerciais', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 112,
         :dept_id => 32
         })
discipline.id = 794
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Aplicada', 
         :code => 'CSSB FIC INF APLIC', 
         :description => 'Informática Aplicada',
         :goals => '- Operar microcomputadores com sistema operacional modo gráfico, \r
- Utilizar aplicativos básicos do sistema operacional;\r
', 
         :workload => '30',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 112,
         :dept_id => 32
         })
discipline.id = 795
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Ética, Cidadania e Meio Ambiente', 
         :code => 'CSSB E.C.M ', 
         :description => 'Ética, Cidadania e Meio Ambiente',
         :goals => '- Compreender a ética presente nas inter-relações  humanas e socioambientais;', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 112,
         :dept_id => 32
         })
discipline.id = 796
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Recursos Humanos', 
         :code => 'CSSB FIC R.H', 
         :description => 'Recursos Humanos',
         :goals => '- Identificar as principais atribuições do setor de Recursos Humanos dentro da organização.', 
         :workload => '30',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 112,
         :dept_id => 32
         })
discipline.id = 797
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fisiologia', 
         :code => 'FISIO', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 798
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Dança Moderna', 
         :code => 'DANÇA MODERNA', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 799
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Empreendedorismo', 
         :code => 'EMPREENDEDORISMO', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 49,
         :dept_id => 13
         })
discipline.id = 800
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Segurança da Informação', 
         :code => 'S.D.I', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 49,
         :dept_id => 13
         })
discipline.id = 801
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão de TI', 
         :code => 'G.D.T', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 49,
         :dept_id => 13
         })
discipline.id = 802
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Web Desing', 
         :code => 'W.D.S', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 49,
         :dept_id => 13
         })
discipline.id = 803
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Qualidade de Software', 
         :code => 'Q.D.S', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 49,
         :dept_id => 13
         })
discipline.id = 804
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Linguagem de Programação O.O. Para Web', 
         :code => 'L.P.O.O.W', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '100',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 49,
         :dept_id => 13
         })
discipline.id = 805
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Base dos processos fermentativos', 
         :code => '001', 
         :description => 'Treinamento na elaboração de panificados e confeitados.',
         :goals => 'Formar o cidadão profissional apto a elaborar e servir produtos de panificação e confeitaria, considerando os aspectos higiênico-sanitários, a responsabilidade profissional, socioeconômica e ambiental. ', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 69,
         :dept_id => 29
         })
discipline.id = 808
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Relações Interpessoais', 
         :code => '003', 
         :description => 'Relações Interpessoais',
         :goals => 'Relações Interpessoais', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 69,
         :dept_id => 29
         })
discipline.id = 809
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 01 Informática Aplicada', 
         :code => '005', 
         :description => 'Informática Aplicada',
         :goals => 'Informática Aplicada', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 128,
         :dept_id => 29
         })
discipline.id = 810
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 01 Português', 
         :code => '006', 
         :description => 'Português',
         :goals => 'Português', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 128,
         :dept_id => 29
         })
discipline.id = 811
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 01 Desenho Arquitetônico e Noções de Construção Civil', 
         :code => '007', 
         :description => 'Desenho Arquitetônico e Noções de Construção Civil',
         :goals => 'Desenho Arquitetônico e Noções de Construção Civil', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 128,
         :dept_id => 29
         })
discipline.id = 812
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 01 Matemática', 
         :code => '008', 
         :description => 'Matemática',
         :goals => 'Matemática', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 128,
         :dept_id => 29
         })
discipline.id = 813
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Relações Interpessoais', 
         :code => '009', 
         :description => 'Relações Interpessoais',
         :goals => 'Relações Interpessoais', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 128,
         :dept_id => 29
         })
discipline.id = 814
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 02 Português', 
         :code => '010', 
         :description => 'Português',
         :goals => 'Português', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 128,
         :dept_id => 29
         })
discipline.id = 815
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 02 Direito Imobiliário e Comercial', 
         :code => '011', 
         :description => 'Direito Imobiliário e Comercial',
         :goals => 'Direito Imobiliário e Comercial', 
         :workload => '120',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 128,
         :dept_id => 29
         })
discipline.id = 816
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 02 Organização e Técnica Comercial', 
         :code => '012', 
         :description => 'Organização e Técnica Comercial',
         :goals => 'Organização e Técnica Comercial', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 128,
         :dept_id => 29
         })
discipline.id = 817
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 02 Documentação Imobiliária', 
         :code => '013', 
         :description => 'Documentação Imobiliária',
         :goals => 'Documentação Imobiliária', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 128,
         :dept_id => 29
         })
discipline.id = 818
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 03 Marketing Imobiliário', 
         :code => '014', 
         :description => 'Marketing Imobiliário',
         :goals => 'Marketing Imobiliário', 
         :workload => '100',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 128,
         :dept_id => 29
         })
discipline.id = 819
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 03 Operações Imobiliárias', 
         :code => '015', 
         :description => 'Operações Imobiliárias',
         :goals => 'Operações Imobiliárias', 
         :workload => '120',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 128,
         :dept_id => 29
         })
discipline.id = 820
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 03 Financiamentos Imobiliários', 
         :code => '016', 
         :description => 'Financiamentos Imobiliários',
         :goals => 'Financiamentos Imobiliários', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 128,
         :dept_id => 29
         })
discipline.id = 821
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 03 Economia e Mercados', 
         :code => '017', 
         :description => 'Economia e Mercados',
         :goals => 'Economia e Mercados', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 128,
         :dept_id => 29
         })
discipline.id = 822
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 01 Habilidades Básicas', 
         :code => '018', 
         :description => 'Habilidades Básicas',
         :goals => 'Habilidades Básicas', 
         :workload => '160',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 129,
         :dept_id => 29
         })
discipline.id = 823
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 01 Higiene e Segurança Alimentar', 
         :code => '019', 
         :description => 'Higiene e Segurança Alimentar',
         :goals => 'Higiene e Segurança Alimentar', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 129,
         :dept_id => 29
         })
discipline.id = 824
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 01 História da Gastronomia', 
         :code => '020', 
         :description => 'História da Gastronomia',
         :goals => 'História da Gastronomia', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 129,
         :dept_id => 29
         })
discipline.id = 825
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 01 Ética e Relações Interpessoais', 
         :code => '021', 
         :description => 'História da Gastronomia',
         :goals => 'História da Gastronomia', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 129,
         :dept_id => 29
         })
discipline.id = 826
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 02 Nutrição e Restrições Alimentares', 
         :code => '022', 
         :description => 'História da Gastronomia',
         :goals => 'História da Gastronomia', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 129,
         :dept_id => 29
         })
discipline.id = 827
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 02 Técnicas de Sala e Bar', 
         :code => '023', 
         :description => 'Técnicas de Sala e Bar',
         :goals => 'Técnicas de Sala e Bar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 129,
         :dept_id => 29
         })
discipline.id = 828
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 02 Cozinha Brasileira', 
         :code => '024', 
         :description => 'Cozinha Brasileira',
         :goals => 'Cozinha Brasileira', 
         :workload => '120',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 129,
         :dept_id => 29
         })
discipline.id = 829
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 02 Química Aplicada à Cozinha', 
         :code => '025', 
         :description => 'Química Aplicada à Cozinha',
         :goals => 'Química Aplicada à Cozinha', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 129,
         :dept_id => 29
         })
discipline.id = 830
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 02 Português Instrumental', 
         :code => '026', 
         :description => 'Português Instrumental',
         :goals => 'Português Instrumental', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 129,
         :dept_id => 29
         })
discipline.id = 831
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 03 Planejamento de Cardápios', 
         :code => '027', 
         :description => 'Planejamento de Cardápios',
         :goals => 'Planejamento de Cardápios', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 129,
         :dept_id => 29
         })
discipline.id = 832
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 03 Estoques, Compras e Custos', 
         :code => '028', 
         :description => 'Estoques, Compras e Custos',
         :goals => 'Estoques, Compras e Custos', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 129,
         :dept_id => 29
         })
discipline.id = 833
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 03 Cozinha Internacional', 
         :code => '029', 
         :description => 'Cozinha Internacional',
         :goals => 'Cozinha Internacional', 
         :workload => '120',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 129,
         :dept_id => 29
         })
discipline.id = 834
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Mod. 03 Informática Aplicada', 
         :code => '030', 
         :description => 'Informática Aplicada',
         :goals => 'Informática Aplicada', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 129,
         :dept_id => 29
         })
discipline.id = 835
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Noções Básicas de Administração', 
         :code => '031', 
         :description => 'Noções Básicas de Administração',
         :goals => 'Noções Básicas de Administração', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 127,
         :dept_id => 29
         })
discipline.id = 836
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Noções de Empreendedorismo', 
         :code => '032', 
         :description => 'Noções de Empreendedorismo',
         :goals => 'Noções de Empreendedorismo', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 127,
         :dept_id => 29
         })
discipline.id = 837
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Processo Comunicativo', 
         :code => '033', 
         :description => 'Processo Comunicativo',
         :goals => 'Processo Comunicativo', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 127,
         :dept_id => 29
         })
discipline.id = 838
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Noções de Informática', 
         :code => '034', 
         :description => 'Noções de Informática',
         :goals => 'Noções de Informática', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 127,
         :dept_id => 29
         })
discipline.id = 839
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Higiene e Segurança Alimentar', 
         :code => '035', 
         :description => 'Higiene e Segurança Alimentar',
         :goals => 'Higiene e Segurança Alimentar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 127,
         :dept_id => 29
         })
discipline.id = 840
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Matemática Financeira', 
         :code => '036', 
         :description => 'Matemática Financeira',
         :goals => 'Matemática Financeira', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 127,
         :dept_id => 29
         })
discipline.id = 841
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Alimentos e Bebidas (A&B)', 
         :code => '037', 
         :description => 'Alimentos e Bebidas (A&B)',
         :goals => 'Alimentos e Bebidas (A&B)', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 127,
         :dept_id => 29
         })
discipline.id = 842
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática', 
         :code => '038', 
         :description => 'Informática',
         :goals => 'Informática', 
         :workload => '200',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 72,
         :dept_id => 29
         })
discipline.id = 843
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'FIC Espanhol', 
         :code => '040', 
         :description => 'FIC Espanhol',
         :goals => 'FIC Espanhol', 
         :workload => '300',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 73,
         :dept_id => 29
         })
discipline.id = 844
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'FIC Espanhol 2', 
         :code => '041', 
         :description => 'FIC Espanhol 2',
         :goals => 'FIC Espanhol 2', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 73,
         :dept_id => 29
         })
discipline.id = 845
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'FIC Espanhol 3', 
         :code => '042', 
         :description => 'FIC Espanhol 3',
         :goals => 'FIC Espanhol 3', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 73,
         :dept_id => 29
         })
discipline.id = 846
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'FIC Espanhol 4', 
         :code => '043', 
         :description => 'FIC Espanhol 4',
         :goals => 'FIC Espanhol 4', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 73,
         :dept_id => 29
         })
discipline.id = 847
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'FIC Espanhol 5', 
         :code => '044', 
         :description => 'FIC Espanhol 5',
         :goals => 'FIC Espanhol 5', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 73,
         :dept_id => 29
         })
discipline.id = 848
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'FIC Espanhol 6', 
         :code => '045', 
         :description => 'FIC Espanhol 6',
         :goals => 'FIC Espanhol 6', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 73,
         :dept_id => 29
         })
discipline.id = 849
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'FIC Inglês 1', 
         :code => '046', 
         :description => 'FIC Inglês 1',
         :goals => 'FIC Inglês 1', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 74,
         :dept_id => 29
         })
discipline.id = 850
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'FIC Inglês 2', 
         :code => '047', 
         :description => 'FIC Inglês 2',
         :goals => 'FIC Inglês 2', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 74,
         :dept_id => 29
         })
discipline.id = 851
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'FIC Inglês 3', 
         :code => '048', 
         :description => 'FIC Inglês 3',
         :goals => 'FIC Inglês 3', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 74,
         :dept_id => 29
         })
discipline.id = 852
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'FIC Inglês 4', 
         :code => '049', 
         :description => 'FIC Inglês 4',
         :goals => 'FIC Inglês 4', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 74,
         :dept_id => 29
         })
discipline.id = 853
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'FIC Inglês 5', 
         :code => '050', 
         :description => 'FIC Inglês 5',
         :goals => 'FIC Inglês 5', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 74,
         :dept_id => 29
         })
discipline.id = 854
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'FIC Inglês 6', 
         :code => '051', 
         :description => 'FIC Inglês 6',
         :goals => 'FIC Inglês 6', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 74,
         :dept_id => 29
         })
discipline.id = 855
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Teoria e História da Dança II', 
         :code => 'T.H.D II', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 856
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Práticas Integradoras e de Ensino II', 
         :code => 'P.INT.E DE ENS.II', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 857
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Metodologia do Ensino da Dança', 
         :code => 'MET.ENS.DANÇA', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 858
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Psicologia do Desenvolvimento', 
         :code => 'PSIC.DESENV', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 859
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Elementos do Movimento', 
         :code => 'ELEM.DO.MOVIM', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 860
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Atendiemnto ao Cliente', 
         :code => 'ATC201201', 
         :description => 'Foco em realizar o atendimento de forma eficaz e com postura profissional.',
         :goals => 'Conhecer a área de atuação e atribuições do profissional de atendimento.\r
Identificar os conhecimentos necessários à função de atendente.\r
Compreender o papel do atendente para a prestação de serviços.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 130,
         :dept_id => 34
         })
discipline.id = 861
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Anatomia e Cinesiologia aplicadas á Dança', 
         :code => 'ACD', 
         :description => 'A',
         :goals => '.Integrar a complexidade do conhecimento anatômico e cinesiológico ao processo de formação do movimento;\r
.Compreender os conceitos básicos da Anatomia e Cinesi-ologia, relacionando-os com a sua prática profissional.\r
. Descrever o conjunto de mo-vimentos básicos aplicados à dança.', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 131,
         :dept_id => 13
         })
discipline.id = 862
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Teoria da Dança', 
         :code => 'TD', 
         :description => 'A',
         :goals => '. Identificar conceitos de arte de dança numa obra coreográ-fica\r
. Analisar criticamente os dis-cursos de dança e arte.\r
. Construir pontes entre dança, cultura e artes.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 131,
         :dept_id => 13
         })
discipline.id = 863
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Práticas Corporais em Dança', 
         :code => 'PCD', 
         :description => 'A',
         :goals => '.Entender o corpo como meio de expressão artística, a partir do desenvolvimento do movi-mento consciente;\r
.Desenvolver noções de espa-ço a partir do corpo em movi-mento;\r
.Potencializar capacidades relacionadas a alongamento, força e flexibilidade.A', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 131,
         :dept_id => 13
         })
discipline.id = 864
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Estética', 
         :code => 'ES', 
         :description => 'A',
         :goals => '.Compreender as concepções estéticas constituídas historicamente;\r
.Relacionar a arte com a tota-lidade da existência e seus valores, mostrando sua função como expressão;\r
.Analisar os aspectos ideológi-cos na relação arte, artista e sociedade.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 131,
         :dept_id => 13
         })
discipline.id = 865
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Dança, Diversidade e Inclusão', 
         :code => 'DDI', 
         :description => 'A',
         :goals => 'Elaborar planos de aula de dança, contemplando a diver-sidade.\r
Atuar como professor de dan-ça em contextos inclusivos.\r
Refletir sobre a diferença na dança.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 131,
         :dept_id => 13
         })
discipline.id = 866
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Improvisação em Dança', 
         :code => 'ID', 
         :description => 'A',
         :goals => 'Estar apto a responder e gerar estímulos no ato de improvisar;\r
. Criar estruturas improvisacionais;\r
. Identificar e relacionar tipos de improvisação;\r
. Colaborar em processos de criação coletivos.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 131,
         :dept_id => 13
         })
discipline.id = 867
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'LIBRAS', 
         :code => 'LIB', 
         :description => 'A',
         :goals => '.Compreender a gramática da Língua Brasileira de Sinais;\r
.Dominar o vocabulário básico relativo aos conteúdos gerais e ao contexto da dança;\r
.Identificar aspectos da cultura surda.', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 131,
         :dept_id => 13
         })
discipline.id = 868
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Elementos Musicais para a Dança', 
         :code => 'EMD', 
         :description => 'A',
         :goals => '.Entender o processo de in-serção da música em manifes-tações sócio-culturais.\r
.Discernir formas e estruturas musicais básicas;\r
.Identificar padrões métricos compostos e padrões métricos irregulares;\r
.Conhecer o panorama geral da história da música ociden-tal, com ênfase no estudo de gêneros ligados à Dança;', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 131,
         :dept_id => 13
         })
discipline.id = 869
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Espanhol', 
         :code => 'ESP THA', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '50',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 132,
         :dept_id => 13
         })
discipline.id = 870
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Funcionários de Escolas', 
         :code => 'FUNC.ES', 
         :description => 'Cidadãos, educadores, profissionais e gestores',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 134,
         :dept_id => 13
         })
discipline.id = 871
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Educadores e Educandos', 
         :code => 'EE', 
         :description => 'Tempos Históricos',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 134,
         :dept_id => 13
         })
discipline.id = 872
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Homem, Pensamento e Cultura', 
         :code => 'HPC', 
         :description => 'Abordagens filosófica e antropológica',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 134,
         :dept_id => 13
         })
discipline.id = 873
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Relações Interpessoais', 
         :code => 'RINT', 
         :description => 'Abordagem Psicológica',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 134,
         :dept_id => 13
         })
discipline.id = 874
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Educação, Sociedade e Trabalho', 
         :code => 'EST', 
         :description => 'Abordagem sociológica da Educação',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 134,
         :dept_id => 13
         })
discipline.id = 875
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão da Educação', 
         :code => 'GE', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 134,
         :dept_id => 13
         })
discipline.id = 876
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Básica', 
         :code => 'INFBAS', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 134,
         :dept_id => 13
         })
discipline.id = 877
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Produção Textual na Educação Escolar', 
         :code => 'PTES', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 134,
         :dept_id => 13
         })
discipline.id = 878
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Direito Administrativo e do Trabalho', 
         :code => 'DAT', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 134,
         :dept_id => 13
         })
discipline.id = 879
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Trabalho Escolar e Teorias Administrativas', 
         :code => 'TRE TADM', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 134,
         :dept_id => 13
         })
discipline.id = 880
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão Democrática nos Sistemas e na Escola', 
         :code => 'GEST DEM', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 134,
         :dept_id => 13
         })
discipline.id = 881
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Legislação Escolar', 
         :code => 'LEG ESCOLAR', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 134,
         :dept_id => 13
         })
discipline.id = 882
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Técnicas de Redação e Arquivo', 
         :code => 'TRA', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 134,
         :dept_id => 13
         })
discipline.id = 883
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Contabilidade na Escola', 
         :code => 'CONT ESC', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 134,
         :dept_id => 13
         })
discipline.id = 884
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Administração de Materiais', 
         :code => 'ADM MAT', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 134,
         :dept_id => 13
         })
discipline.id = 885
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Estatística Aplicada à Educação', 
         :code => 'EAE', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 134,
         :dept_id => 13
         })
discipline.id = 886
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Sistemas Operacionais da Recepção Hoteleira ', 
         :code => 'SORH', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '20',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 126,
         :dept_id => 13
         })
discipline.id = 887
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Aplicada', 
         :code => 'TTI_IA_001', 
         :description => 'Utilizar a informática como ferramenta auxiliar nas transações imobiliárias.',
         :goals => '• Criar bancos de dados sobre clientes, fornecedores, produtos e concorrência.\r
• Organizar arquivos.\r
• Realizar tarefas de digitação de textos e           elaboração de planilhas.\r
• Realizar pesquisas e coletas de informações na Internet.\r
• Criar apresentações usando slides.\r
• Elaborar planilhas e gráficos.\r
• Fazer cópias de segurança de dados armazenados no computador.\r
• Fazer uso dos softwares antivírus.\r
', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 94,
         :dept_id => 29
         })
discipline.id = 888
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Composição Coreográfica I', 
         :code => 'COMP COREOGRAFICA', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 889
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Danças do Brasil I', 
         :code => 'DAN BRASIL', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 890
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'LIBRAS', 
         :code => 'LIBRAS', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 891
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Práticas Integradoras e de Ensino III', 
         :code => 'PRAT INTE ENS III', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 892
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'História da Dança no Brasil', 
         :code => 'HIST DANÇA BRA', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 893
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Estágio I', 
         :code => 'EST I', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '80',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 8,
         :dept_id => 13
         })
discipline.id = 894
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Cálculo Diferencial I', 
         :code => 'CADI', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 135,
         :dept_id => 13
         })
discipline.id = 895
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fundamentos de Ciência Política', 
         :code => 'FCP', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 135,
         :dept_id => 13
         })
discipline.id = 896
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fundamentos da Administração', 
         :code => 'FAD', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 135,
         :dept_id => 13
         })
discipline.id = 897
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fundamentos da Sociologia', 
         :code => 'FSO', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 135,
         :dept_id => 13
         })
discipline.id = 898
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fundamentos de Microeconomia', 
         :code => 'FMI', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 135,
         :dept_id => 13
         })
discipline.id = 899
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fundamentos do Direito', 
         :code => 'FD', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 135,
         :dept_id => 13
         })
discipline.id = 900
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Fundamentos da Contabilidade', 
         :code => 'FCONT', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 135,
         :dept_id => 13
         })
discipline.id = 901
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'teste4', 
         :code => 'teste', 
         :description => 'teste',
         :goals => 'teste', 
         :workload => '40',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 136,
         :dept_id => 12
         })
discipline.id = 902
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'teste2', 
         :code => 'w', 
         :description => '2',
         :goals => '2', 
         :workload => '22',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 136,
         :dept_id => 12
         })
discipline.id = 903
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Funcionários de Escolas', 
         :code => 'FUNC. ESC.', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 137,
         :dept_id => 13
         })
discipline.id = 904
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Educadores e Educandos', 
         :code => 'Educadores e Educand', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 137,
         :dept_id => 13
         })
discipline.id = 905
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Homem, Pensamento e Cultura', 
         :code => 'H.P.C', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 137,
         :dept_id => 13
         })
discipline.id = 906
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Relações Interpessoais', 
         :code => 'R.I', 
         :description => 'Abordagem Psicológico',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 137,
         :dept_id => 13
         })
discipline.id = 907
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Educação, Sociedade e Trabalho', 
         :code => 'E.S.T', 
         :description => 'Abordagem sociológica da Educação',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 137,
         :dept_id => 13
         })
discipline.id = 908
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão da Educação Escolar', 
         :code => 'G.E.E', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 137,
         :dept_id => 13
         })
discipline.id = 909
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Básica', 
         :code => 'INF.BAS', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 137,
         :dept_id => 13
         })
discipline.id = 910
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Direito Administrativo e do Trabalho', 
         :code => 'D.A.T', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 137,
         :dept_id => 13
         })
discipline.id = 911
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Trabalho Escolar e Teorias Administrativas', 
         :code => 'T.E - T.A', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 137,
         :dept_id => 13
         })
discipline.id = 912
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão Democrática nos Sistemas e na Escola', 
         :code => 'G.D.S.E', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 137,
         :dept_id => 13
         })
discipline.id = 913
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Legislação Escolar', 
         :code => 'LEG.ESC', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 137,
         :dept_id => 13
         })
discipline.id = 914
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Técnicas de Redação e Arquivo', 
         :code => 'TEC.RED.ARQ', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 137,
         :dept_id => 13
         })
discipline.id = 915
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Contabilidade  na Escola', 
         :code => 'CONT. ESC', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 137,
         :dept_id => 13
         })
discipline.id = 916
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Administração de Materiais', 
         :code => 'ADM.MAT', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 137,
         :dept_id => 13
         })
discipline.id = 917
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Estatística Aplicada à Educação', 
         :code => 'EST.APL.EDU', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 137,
         :dept_id => 13
         })
discipline.id = 918
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Produção Textual na Educação Escolar', 
         :code => 'P.T.E.E', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 137,
         :dept_id => 13
         })
discipline.id = 919
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Funcionários de Escolas', 
         :code => 'FUNC.ESC', 
         :description => 'Cidadãos, Educadores, profissionais e gestores',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 138,
         :dept_id => 13
         })
discipline.id = 920
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Educadores e Educandos', 
         :code => 'E.E', 
         :description => 'Temps Históricos',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 138,
         :dept_id => 13
         })
discipline.id = 921
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Homem, Pensamento e Cultura', 
         :code => 'HOM.PENS.CULT', 
         :description => 'Abordagens Filosófica e Antropológica',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 138,
         :dept_id => 13
         })
discipline.id = 922
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Relações Interpessoais', 
         :code => 'REL.INT', 
         :description => 'Abordagem Sociológica da Educação',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 138,
         :dept_id => 13
         })
discipline.id = 923
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Educação , Sociedade e Trabalho', 
         :code => 'EDUC.SOC.TRAB', 
         :description => 'Abordagem Sociológica da Educação',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 138,
         :dept_id => 13
         })
discipline.id = 924
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Gestão da Educação Escolar', 
         :code => 'GEST.EDUC.ESCO', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 138,
         :dept_id => 13
         })
discipline.id = 925
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Informática Básica', 
         :code => 'Inform.Bás', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 138,
         :dept_id => 13
         })
discipline.id = 926
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Produção Textual na Educação Escolar', 
         :code => 'PROD.TEX.EDUC.ESC', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 138,
         :dept_id => 13
         })
discipline.id = 927
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Direito Administrativo e do Trabalho', 
         :code => 'DIR.ADM.TRAB', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 138,
         :dept_id => 13
         })
discipline.id = 928
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Teoria do Espaço Educativo', 
         :code => 'TE.ESP.EDUC', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 138,
         :dept_id => 13
         })
discipline.id = 929
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Meio Ambiente, Sociedade e Educação', 
         :code => 'MEIO.AMB. ', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 138,
         :dept_id => 13
         })
discipline.id = 930
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Higiene e Segurança nas Escolas', 
         :code => 'HIG.SEG', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 138,
         :dept_id => 13
         })
discipline.id = 931
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Equipamentos Hidráulicos e Sanitários', 
         :code => 'EQUIP.HIDR.SAN', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 138,
         :dept_id => 13
         })
discipline.id = 932
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Equipamentos Elétricos e Eletrônicos', 
         :code => 'EQUIP. ELET.', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 138,
         :dept_id => 13
         })
discipline.id = 933
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Equipamentos e Materiais Didáticos', 
         :code => 'EQUIP. MAT. DID', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 138,
         :dept_id => 13
         })
discipline.id = 934
discipline.save!         
       

discipline = Discipline.new(
         {:name => 'Técnicas de Construção', 
         :code => 'TEC.DE CONST', 
         :description => 'Atualizar',
         :goals => 'Atualizar', 
         :workload => '60',   
         :credits => 0,    
         :discipline_type_id => DisciplineType.find_by_description('Disciplina'),   
         :course_id => 138,
         :dept_id => 13
         })
discipline.id = 935
discipline.save!


#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('disciplines_id_seq', (select max(id) from disciplines), true);")