# Alimenta tabela de Países
puts 'Inserindo Departamentos'
Dept.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('depts_id_seq', 1, false);")
dept = Dept.create([
  {:name => 'Instituto Federal de Brasília', :acronym => 'IFB', :cnpj => '09.266.912/0001-84', :started_at => DateTime.now, :site => 'www.ifb.edu.br', 
   :email => 'reitoria@ifb.edu.br', :description => 'Reitoria do IFB', :dept_type_id => DeptType.find(1), :dept_id => nil}  
])
dept = Dept.find_by_name('Instituto Federal de Brasília')
subdepts = Dept.create([
  #Subdepts do IFB
  {:name => 'Campus Planaltina', :acronym => 'CPLA', :description => 'Campus do IFB', :email => 'planaltina@ifb.edu.br', :dept_id => dept.id},
  {:name => 'Campus Samambaia', :acronym => 'CSAM', :description => 'Campus Samambaia', :email => 'csam@campussamambaia.ifb.edu.br', :dept_id => dept.id},
  {:name => 'Campus Taguatinga', :acronym => 'CTAG', :description => 'Campus Taguatinga', :email => 'ctag@ctag.ifb.edu.br', :dept_id => dept.id},
  {:name => 'Campus Brasília', :acronym => 'CBRA', :description => 'Campus Brasília', :email => 'cbra@cbra.ifb.edu.br', :dept_id => dept.id},
  {:name => 'Campus Riacho Fundo', :acronym => 'CRF', :description => 'Campus Riacho Fundo', :email => 'Campusriachofundo@ifb.edu.br', :dept_id => dept.id},
  {:name => 'Campus Gama', :acronym => 'CGAM', :description => 'Campus São Sebastião', :email => 'cssb@cssb.ifb.edu.br', :dept_id => dept.id},
  {:name => 'Campus São Sebastião', :acronym => 'CSSB', :description => 'Campus São Sebastião', :email => 'campussaosebastiao@ifb.edu.br', :dept_id => dept.id},
  {:name => 'Campus Estrutural', :acronym => 'CEST', :description => 'Campus Estrutural', :email => 'cest@ifb.edu.br', :dept_id => dept.id},
  {:name => 'Campus Taguatinga Centro', :acronym => 'CTAGC', :description => 'Campus Taguatinga Centro', :email => 'ctag.centro@ifb.edu.br', :dept_id => dept.id}
])
dept = Dept.find_by_name('Campus Planaltina')
subdepts = Dept.create([
  #Subdepts de Campus Planaltina
  {:name => 'Coordenadoria do Curso Técnico em Agropecuária', :acronym => 'CDAP', :description => 'Coordenação do Curso de Agropecuária', :email => 'cdap@planaltina.ifb.edu.br', :dept_id => dept.id},
  {:name => 'Coordenadoria de Ensino', :acronym => 'CDEN', :description => 'Coordenadoria de Ensino do CPLA', :email => 'cden@planaltina.ifb.edu.br', :dept_id => dept.id},
  {:name => 'Coordenadoria do Curso Técnico em Guia de Turismo', :acronym => 'CDGT', :description => 'Coordenadoria do Curso Técnico em Guia de Turismo', :email => 'cdgt@planaltina.ifb.edu.br', :dept_id => dept.id},
  {:name => 'Coordenadoria do Curso Técnico em Agroindústria', :acronym => 'CDAI', :description => 'Coordenação do Curso Técnico de Agroindústria', :email => 'cdai@planaltina.ifb.edu.br', :dept_id => dept.id},
  {:name => 'Coordenadoria de CST em Agroecologia', :acronym => 'CDAE', :description => 'Coordenadoria de CST em Agroecologia', :email => 'cdae@planaltina.ifb.edu.br', :dept_id => dept.id},
  {:name => 'Coordenadoria de Pesquisa e Extensão', :acronym => 'CDPQ', :description => 'Coordenadoria de Pesquisa e Extensão do CPLA', :email => 'cdpq@planaltina.ifb.edu.br', :dept_id => dept.id},
  {:name => 'Diretoria de Ensino, Pesquisa e Extensão', :acronym => 'DREP', :description => 'Diretorial de Ensino, Pesquisa e Extensão do CPLA', :email => 'cgpp@ifb.edu.br', :dept_id => dept.id}
])

dept = Dept.find_by_name('Campus Samambaia')
subdepts = Dept.create([
  #Subdepts de Campus Samambaia
  {:name => 'Diretoria de Ensino, Pesquisa e Extensão CSAM', :acronym => 'DREP', :description => 'Diretoria de Ensino, Pesquisa e Extensão do CSAM', :email => 'drep@samambaia.ifb.edu.br', :dept_id => dept.id}
])

dept = Dept.find_by_name('Campus Taguatinga')
subdepts = Dept.create([
  #Subdepts de Campus Taguatinga
  {:name => 'Diretoria de Ensino, Pesquisa e Extensão CTAG', :acronym => 'DREP', :description => 'Diretoria de Ensino, Pesquisa e Extensão', :email => 'drep@taguatinga.ifb.edu.br', :dept_id => dept.id}
])

dept = Dept.find_by_name('Campus Brasília')
subdepts = Dept.create([
  #Subdepts de Campus Brasília
  {:name => 'Diretoria de Ensino, Pesquisa e Extensão CBRA', :acronym => 'DREP', :description => 'Diretoria de Ensino, Pesquisa e Extensão do CBRA', :email => 'drep@brasilia.ifb.edu.br', :dept_id => dept.id}
])

dept = Dept.find_by_name('Campus Riacho Fundo')
subdepts = Dept.create([
  #Subdepts de Campus Riacho Fundo
  {:name => 'Diretoria de Ensino, Pesquisa e Extensão CRF', :acronym => 'CRF', :description => 'Diretoria de Ensino, Pesquisa e Extensão CRF', :email => 'crf@ifb.edu.br', :dept_id => dept.id}
])

dept = Dept.find_by_name('Campus Gama')
subdepts = Dept.create([
  #Subdepts de Campus Gama
  {:name => 'Diretoria de Ensino, Pesquisa e Extensão CGAM', :acronym => 'DREP', :description => 'Diretoria de Ensino, Pesquisa e Extensão do CGAM', :email => 'drep@gama.ifb.edu.br', :dept_id => dept.id}
])

dept = Dept.find_by_name('Campus São Sebastião')
subdepts = Dept.create([
  #Subdepts de Campus São Sebastião
  {:name => 'Diretoria de Ensino, Pesquisa e Extensão CSSB', :acronym => 'DREP CSSB', :description => 'Diretoria de Ensino, Pesquisa e Extensão CSAM', :email => 'cssb@cssb.ifb.edu.br', :dept_id => dept.id}
])

dept = Dept.find_by_name('Campus Estrutural')
subdepts = Dept.create([
  #Subdepts de Campus Estrutural
  {:name => 'Diretoria de Ensino, Pesquisa e Extensão CEST', :acronym => 'DREP', :description => 'Diretoria de Ensino, Pesquisa e Extensão CEST', :email => 'cest@ifb.edu.br', :dept_id => dept.id}
])

dept = Dept.find_by_name('Campus Taguatinga Centro')
subdepts = Dept.create([
  #Subdepts de Campus Taguatinga Centro
  {:name => 'Diretoria de Ensino, Pesquisa e Extensão CTAGC', :acronym => 'DREP', :description => 'Diretoria de Ensino, Pesquisa e Extensão', :email => 'ctag.centro@ifb.edu.br', :dept_id => dept.id}
])