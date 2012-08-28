=begin
-- Select de Instituicoes
select ('
dept = Dept.new(
         {:name => \''||nome||'\', 
          :acronym => \''||sigla||'\', 
          :cnpj => \''||cnpj||'\',  
          :started_at => \''||data_inicio||'\', 
          :site => \''||coalesce(site,'em branco')||'\',  
          :email => \''||coalesce(email,'em branco')||'\',  
          :description => \''||coalesce(descricao,'em branco')||'\',  
          :dept_type_id => DeptType.find(1).id,  
          :dept_id => nil
         })
dept.id = '||instituicao.elemento_organizacional_id||'
dept.save!         
       ') as comando
from instituicao, elemento_organizacional 
where instituicao.elemento_organizacional_id = elemento_organizacional.id;

=end

# Alimenta tabela de Departamentos com as instituicoes Ex: Insituto Federald e Brasília
puts 'Inserindo Departamentos'
Dept.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('depts_id_seq', 1, false);")

dept = Dept.new(
         {:name => 'Instituto Federal de Brasília', 
          :acronym => 'IFB', 
          :cnpj => '9266912000184',  
          :started_at => '2010-01-01', 
          :site => 'www.ifb.edu.br',  
          :email => 'reitoria@ifb.edu.br',  
          :description => 'Reitoria do IFB',  
          :dept_type_id => DeptType.find(1).id,  
          :dept_id => nil
         })
dept.id = 15
dept.save!

=begin
-- Select de Unidades de Ensino
select ('
dept = Dept.new(
         {:name => \''||nome||'\', 
          :acronym => \''||sigla||'\', 
          :cnpj => \''||cnpj||'\',  
          :started_at => \''||data_inicio||'\', 
          :site => \''||coalesce(site,'em branco')||'\',  
          :email => \''||coalesce(email,'em branco')||'\',  
          :description => \''||coalesce(descricao,'em branco')||'\',  
          :dept_type_id => DeptType.find(2).id,  
          :dept_id  => '||elemento_organizacional.elemento_organizacional_id||'
         })
dept.id = '||unidade_ensino.elemento_organizacional_id||'
dept.save!         
       ') as comando
from unidade_ensino, elemento_organizacional 
where unidade_ensino.elemento_organizacional_id = elemento_organizacional.id;

=end

dept = Dept.new(
         {:name => 'Campus Planaltina', 
          :acronym => 'CPLA', 
          :cnpj => '10791831000263',  
          :started_at => '2010-04-02', 
          :site => 'www.ifb.edu.br',  
          :email => 'planaltina@ifb.edu.br',  
          :description => 'Campus do IFB',  
          :dept_type_id => DeptType.find(2).id,  
          :dept_id  => 15
         })
dept.id = 16
dept.save!         
       

dept = Dept.new(
         {:name => 'Campus Samambaia', 
          :acronym => 'CSAM', 
          :cnpj => '14633365000168',  
          :started_at => '2010-06-02', 
          :site => 'www.ifb.samambaia.edu.br',  
          :email => 'csam@campussamambaia.ifb.edu.br',  
          :description => 'Campus Samambaia',  
          :dept_type_id => DeptType.find(2).id,  
          :dept_id  => 15
         })
dept.id = 6
dept.save!         
       

dept = Dept.new(
         {:name => 'Campus Taguatinga', 
          :acronym => 'CTAG', 
          :cnpj => '76864610000103',  
          :started_at => '2010-06-02', 
          :site => 'www.taguatinga.ifb.edu.br',  
          :email => 'ctag@ctag.ifb.edu.br',  
          :description => 'Campus Taguatinga',  
          :dept_type_id => DeptType.find(2).id,  
          :dept_id  => 15
         })
dept.id = 8
dept.save!         
       

dept = Dept.new(
         {:name => 'Campus Brasília', 
          :acronym => 'CBRA', 
          :cnpj => '2353021000116',  
          :started_at => '2010-06-02', 
          :site => 'www.brasilia.ifb.edu.br',  
          :email => 'cbra@cbra.ifb.edu.br',  
          :description => 'Campus Brasília',  
          :dept_type_id => DeptType.find(2).id,  
          :dept_id  => 15
         })
dept.id = 9
dept.save!         
       

dept = Dept.new(
         {:name => 'Campus Riacho Fundo', 
          :acronym => 'CRF', 
          :cnpj => '10791831000182',  
          :started_at => '2011-08-01', 
          :site => 'www.ifb.edu.br',  
          :email => 'Campusriachofundo@ifb.edu.br',  
          :description => 'Campus Riacho Fundo',  
          :dept_type_id => DeptType.find(2).id,  
          :dept_id  => 15
         })
dept.id = 28
dept.save!         
       

dept = Dept.new(
         {:name => 'Campus São Sebastião', 
          :acronym => 'CSSB', 
          :cnpj => '10791831000182',  
          :started_at => '2011-10-11', 
          :site => 'www.ifb.edu.br',  
          :email => 'campussaosebastiao@ifb.edu.br',  
          :description => 'Campus São Sebastião',  
          :dept_type_id => DeptType.find(2).id,  
          :dept_id  => 15
         })
dept.id = 31
dept.save!         
       

dept = Dept.new(
         {:name => 'Campus Estrutural', 
          :acronym => 'CEST', 
          :cnpj => '33748307000124',  
          :started_at => '2012-01-01', 
          :site => 'www.ifb.edu.br',  
          :email => 'cest@ifb.edu.br',  
          :description => 'Campus Estrutural',  
          :dept_type_id => DeptType.find(2).id,  
          :dept_id  => 15
         })
dept.id = 33
dept.save!         
       

dept = Dept.new(
         {:name => 'Campus Taguatinga Centro', 
          :acronym => 'CTAGC', 
          :cnpj => '10791831000182',  
          :started_at => '2011-08-04', 
          :site => 'www.ifb.edu.br',  
          :email => 'ctag.centro@ifb.edu.br',  
          :description => 'Campus Taguatinga Centro',  
          :dept_type_id => DeptType.find(2).id,  
          :dept_id  => 15
         })
dept.id = 36
dept.save!         
       

dept = Dept.new(
         {:name => 'Campus Gama', 
          :acronym => 'CGAM', 
          :cnpj => '33748307000124',  
          :started_at => '2011-10-11', 
          :site => 'www.ifb.edu.br',  
          :email => 'cgam@cgam.ifb.edu.br',  
          :description => 'Campus Gama',  
          :dept_type_id => DeptType.find(2).id,  
          :dept_id  => 15
         })
dept.id = 7
dept.save!

=begin
-- Select de Unidades Organizacional
select ('
dept = Dept.new(
         {:name => \''||nome||'\', 
          :acronym => \''||sigla||'\', 
          :started_at => \''||data_inicio||'\', 
          :email => \''||coalesce(email,'em branco')||'\',  
          :description => \''||coalesce(descricao,'em branco')||'\',  
          :dept_type_id => DeptType.find(3).id,  
          :dept_id  => '||elemento_organizacional.elemento_organizacional_id||'
         })
dept.id = '||unidade_organizacional.elemento_organizacional_id||'
dept.save!         
       ') as comando
from unidade_organizacional, elemento_organizacional 
where unidade_organizacional.elemento_organizacional_id = elemento_organizacional.id;


=end

dept = Dept.new(
         {:name => 'Coordenadoria do Curso Técnico em Agropecuária', 
          :acronym => 'CDAP', 
          :started_at => '2010-01-01', 
          :email => 'cdap@planaltina.ifb.edu.br',  
          :description => 'Coordenação do Curso de Agropecuária',  
          :dept_type_id => DeptType.find(3).id,  
          :dept_id  => 16
         })
dept.id = 20
dept.save!         
       

dept = Dept.new(
         {:name => 'Coordenadoria de Ensino', 
          :acronym => 'CDEN', 
          :started_at => '2010-01-01', 
          :email => 'cden@planaltina.ifb.edu.br',  
          :description => 'Coordenadoria de Ensino do CPLA',  
          :dept_type_id => DeptType.find(3).id,  
          :dept_id  => 16
         })
dept.id = 22
dept.save!         
       

dept = Dept.new(
         {:name => 'Coordenadoria do Curso Técnico em Guia de Turismo', 
          :acronym => 'CDGT', 
          :started_at => '2010-06-15', 
          :email => 'cdgt@planaltina.ifb.edu.br',  
          :description => 'Coordenadoria do Curso Técnico em Guia de Turismo',  
          :dept_type_id => DeptType.find(3).id,  
          :dept_id  => 16
         })
dept.id = 14
dept.save!         
       

dept = Dept.new(
         {:name => 'Coordenadoria do Curso Técnico em Agroindústria', 
          :acronym => 'CDAI', 
          :started_at => '2010-01-01', 
          :email => 'cdai@planaltina.ifb.edu.br',  
          :description => 'Coordenação do Curso Técnico de Agroindústria',  
          :dept_type_id => DeptType.find(3).id,  
          :dept_id  => 16
         })
dept.id = 21
dept.save!         
       

dept = Dept.new(
         {:name => 'Coordenadoria de CST em Agroecologia', 
          :acronym => 'CDAE', 
          :started_at => '2010-06-09', 
          :email => 'cdae@planaltina.ifb.edu.br',  
          :description => 'Coordenadoria de CST em Agroecologia',  
          :dept_type_id => DeptType.find(3).id,  
          :dept_id  => 16
         })
dept.id = 19
dept.save!         
       

dept = Dept.new(
         {:name => 'Coordenadoria de Pesquisa e Extensão', 
          :acronym => 'CDPQ', 
          :started_at => '2010-01-01', 
          :email => 'cdpq@planaltina.ifb.edu.br',  
          :description => 'Coordenadoria de Pesquisa e Extensão do CPLA',  
          :dept_type_id => DeptType.find(3).id,  
          :dept_id  => 16
         })
dept.id = 30
dept.save!         
       

dept = Dept.new(
         {:name => 'Diretoria de Ensino, Pesquisa e Extensão', 
          :acronym => 'DREP', 
          :started_at => '2010-01-01', 
          :email => 'cgpp@ifb.edu.br',  
          :description => 'Diretorial de Ensino, Pesquisa e Extensão do CPLA',  
          :dept_type_id => DeptType.find(3).id,  
          :dept_id  => 16
         })
dept.id = 18
dept.save!         
       

dept = Dept.new(
         {:name => 'Diretoria de Ensino, Pesquisa e Extensão CSAM', 
          :acronym => 'DREP', 
          :started_at => '2010-06-02', 
          :email => 'drep@samambaia.ifb.edu.br',  
          :description => 'Diretoria de Ensino, Pesquisa e Extensão do CSAM',  
          :dept_type_id => DeptType.find(3).id,  
          :dept_id  => 6
         })
dept.id = 10
dept.save!         
       

dept = Dept.new(
         {:name => 'Diretoria de Ensino, Pesquisa e Extensão CGAM', 
          :acronym => 'DREP', 
          :started_at => '2010-06-02', 
          :email => 'drep@gama.ifb.edu.br',  
          :description => 'Diretoria de Ensino, Pesquisa e Extensão do CGAM',  
          :dept_type_id => DeptType.find(3).id,  
          :dept_id  => 7
         })
dept.id = 12
dept.save!         
       

dept = Dept.new(
         {:name => 'Diretoria de Ensino, Pesquisa e Extensão CBRA', 
          :acronym => 'DREP', 
          :started_at => '2010-06-02', 
          :email => 'drep@brasilia.ifb.edu.br',  
          :description => 'Diretoria de Ensino, Pesquisa e Extensão do CBRA',  
          :dept_type_id => DeptType.find(3).id,  
          :dept_id  => 9
         })
dept.id = 13
dept.save!         
       

dept = Dept.new(
         {:name => 'Diretoria de Ensino, Pesquisa e Extensão CTAG', 
          :acronym => 'DREP', 
          :started_at => '2010-06-02', 
          :email => 'drep@taguatinga.ifb.edu.br',  
          :description => 'Diretoria de Ensino, Pesquisa e Extensão',  
          :dept_type_id => DeptType.find(3).id,  
          :dept_id  => 8
         })
dept.id = 11
dept.save!         
       

dept = Dept.new(
         {:name => 'Diretoria de Ensino, Pesquisa e Extensão CRF', 
          :acronym => 'CRF', 
          :started_at => '2011-08-24', 
          :email => 'crf@ifb.edu.br',  
          :description => 'Diretoria de Ensino, Pesquisa e Extensão CRF',  
          :dept_type_id => DeptType.find(3).id,  
          :dept_id  => 28
         })
dept.id = 29
dept.save!         
       

dept = Dept.new(
         {:name => 'PRONATEC', 
          :acronym => 'PRONATEC', 
          :started_at => '2012-04-12', 
          :email => 'pronatec@ifb.edu.br',  
          :description => 'Programa Nacional de Acesso ao Ensino Técnico e Emprego',  
          :dept_type_id => DeptType.find(3).id,  
          :dept_id  => 13
         })
dept.id = 46
dept.save!         
       

dept = Dept.new(
         {:name => 'Diretoria de Ensino, Pesquisa e Extensão CSSB', 
          :acronym => 'DREP CSSB', 
          :started_at => '2011-10-11', 
          :email => 'cssb@cssb.ifb.edu.br',  
          :description => 'Diretoria de Ensino, Pesquisa e Extensão CSAM',  
          :dept_type_id => DeptType.find(3).id,  
          :dept_id  => 31
         })
dept.id = 32
dept.save!         
       

dept = Dept.new(
         {:name => 'Diretoria de Ensino, Pesquisa e Extensão CEST', 
          :acronym => 'DREP', 
          :started_at => '2019-01-01', 
          :email => 'cest@ifb.edu.br',  
          :description => 'Diretoria de Ensino, Pesquisa e Extensão CEST',  
          :dept_type_id => DeptType.find(3).id,  
          :dept_id  => 33
         })
dept.id = 34
dept.save!         
       

dept = Dept.new(
         {:name => 'Diretoria de Ensino, Pesquisa e Extensão CTAGC', 
          :acronym => 'DREP', 
          :started_at => '2011-08-04', 
          :email => 'ctag.centro@ifb.edu.br',  
          :description => 'Diretoria de Ensino, Pesquisa e Extensão',  
          :dept_type_id => DeptType.find(3).id,  
          :dept_id  => 36
         })
dept.id = 37
dept.save!         
       

dept = Dept.new(
         {:name => 'PRONATEC', 
          :acronym => 'PRONATEC', 
          :started_at => '2012-05-04', 
          :email => 'pronatec@ifb.edu.br',  
          :description => 'Programa Nacional de Acesso ao Ensino Técnico e Emprego',  
          :dept_type_id => DeptType.find(3).id,  
          :dept_id  => 16
         })
dept.id = 38
dept.save!         
       

dept = Dept.new(
         {:name => 'PRONATEC', 
          :acronym => 'PRONATEC', 
          :started_at => '2012-04-24', 
          :email => 'pronatec@ifb.edu.br',  
          :description => 'Programa Nacional de Acesso ao Ensino Técnico e Emprego',  
          :dept_type_id => DeptType.find(3).id,  
          :dept_id  => 33
         })
dept.id = 39
dept.save!         
       

dept = Dept.new(
         {:name => 'PRONATEC', 
          :acronym => 'PRONATEC', 
          :started_at => '2012-04-12', 
          :email => 'pronatec@ifb.edu.br',  
          :description => 'Programa Nacional de Acesso ao Ensino Técnico e Emprego',  
          :dept_type_id => DeptType.find(3).id,  
          :dept_id  => 12
         })
dept.id = 40
dept.save!         
       

dept = Dept.new(
         {:name => 'PRONATEC', 
          :acronym => 'PRONATEC', 
          :started_at => '2012-04-12', 
          :email => 'pronatec@ifb.edu.br',  
          :description => 'Programa Nacional de Acesso ao Ensino Técnico e Emprego',  
          :dept_type_id => DeptType.find(3).id,  
          :dept_id  => 29
         })
dept.id = 41
dept.save!         
       

dept = Dept.new(
         {:name => 'PRONATEC', 
          :acronym => 'PRONATEC', 
          :started_at => '2012-04-12', 
          :email => 'pronatec@ifb.edu.br',  
          :description => 'Programa Nacional de Acesso ao Ensino Técnico e Emprego',  
          :dept_type_id => DeptType.find(3).id,  
          :dept_id  => 10
         })
dept.id = 42
dept.save!         
       

dept = Dept.new(
         {:name => 'PRONATEC', 
          :acronym => 'PRONATEC', 
          :started_at => '2012-04-12', 
          :email => 'pronatec@ifb.edu.br',  
          :description => 'Programa Nacional de Acesso ao Ensino Técnico e Emprego',  
          :dept_type_id => DeptType.find(3).id,  
          :dept_id  => 32
         })
dept.id = 43
dept.save!         
       

dept = Dept.new(
         {:name => 'PRONATEC', 
          :acronym => 'PRONATEC', 
          :started_at => '2012-04-12', 
          :email => 'pronatec@ifb.edu.br',  
          :description => 'Programa Nacional de Acesso ao Ensino Técnico e Emprego',  
          :dept_type_id => DeptType.find(3).id,  
          :dept_id  => 11
         })
dept.id = 44
dept.save!         
       

dept = Dept.new(
         {:name => 'PRONATEC', 
          :acronym => 'PRONATEC', 
          :started_at => '2012-04-12', 
          :email => 'pronatec@ifb.edu.br',  
          :description => 'Programa Nacional de Acesso ao Ensino Técnico e Emprego',  
          :dept_type_id => DeptType.find(3).id,  
          :dept_id  => 37
         })
dept.id = 45
dept.save!

#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('depts_id_seq', (select max(id) from depts), true);")