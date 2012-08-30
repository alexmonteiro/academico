=begin

-- Prepara vinculos
select ('classe = DisciplineClass.new({:school_class_id => '||turma_id||', 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => '||matriz_id||', :discipline_id => '||disciplina_id||').first.id,
                                    :code => \''||descricao||'\',
                                    :vancancies => \''||numero_vagas||'\', 
                                    :ending_at => \''||coalesce(data_fechamento_letivo,'01/01/2050')||'\', 
                                    :started_at => \''||coalesce(data_abertura,'01/01/1900')||'\', 
                                    :timetable_started_at => \''||coalesce(data_inicio_vigencia_grade_horaria,'01/01/1900')||'\' })
classe.id = '||id||'
classe.save!
') as comando from classe;

-- comando shell
psql -U postgres -h localhost -d dbsiga-edu -c "select ('classe = DisciplineClass.new({:school_class_id => '||turma_id||', 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => '||matriz_id||', :discipline_id => '||disciplina_id||').first.id,
                                    :code => \''||descricao||'\',
                                    :vancancies => \''||numero_vagas||'\', 
                                    :ending_at => \''||coalesce(data_fechamento_letivo,'01/01/2050')||'\', 
                                    :started_at => \''||coalesce(data_abertura,'01/01/1900')||'\', 
                                    :timetable_started_at => \''||coalesce(data_inicio_vigencia_grade_horaria,'01/01/1900')||'\' })
classe.id = '||id||'
classe.save!
') as comando from classe;" > classe





=end


# Alimenta tabela de Classes
DisciplineClass.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('discipline_classes_id_seq', 1, false);")


classe = DisciplineClass.new({:school_class_id => 13, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 37).first.id,
                                    :code => '2010211a8100103Leitura e Produção de Texto IA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 34
classe.save!

classe = DisciplineClass.new({:school_class_id => 13, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 41).first.id,
                                    :code => '2010211a8100107Práticas Integradoras IA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 35
classe.save!

classe = DisciplineClass.new({:school_class_id => 13, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 39).first.id,
                                    :code => '2010211a8100105Anatomia HumanaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 36
classe.save!

classe = DisciplineClass.new({:school_class_id => 13, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 40).first.id,
                                    :code => '2010211a8100106Fundamentos da EducaçãoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 37
classe.save!

classe = DisciplineClass.new({:school_class_id => 13, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 35).first.id,
                                    :code => '2010211a8100101Fundamentos da DançaC',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 39
classe.save!

classe = DisciplineClass.new({:school_class_id => 13, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 35).first.id,
                                    :code => '2010211a8100101Fundamentos da DançaC',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 40
classe.save!

classe = DisciplineClass.new({:school_class_id => 13, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 36).first.id,
                                    :code => '2010211a8100102Práticas Corporais IA',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 41
classe.save!

classe = DisciplineClass.new({:school_class_id => 13, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 36).first.id,
                                    :code => '2010211a8100102Práticas Corporais IB',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 42
classe.save!

classe = DisciplineClass.new({:school_class_id => 13, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 38).first.id,
                                    :code => '2010211a8100104Fundamentos da Música IB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 38
classe.save!

classe = DisciplineClass.new({:school_class_id => 23, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 25, :discipline_id => 128).first.id,
                                    :code => '2010231cEDA-IEducação AmbientalA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 94
classe.save!

classe = DisciplineClass.new({:school_class_id => 23, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 25, :discipline_id => 130).first.id,
                                    :code => '2010231cCRI-IComunicação e Relacionamento Interpessoal no TrabalhoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 95
classe.save!

classe = DisciplineClass.new({:school_class_id => 25, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 27, :discipline_id => 150).first.id,
                                    :code => '2010231dMAT_AUMMatemática AplicadaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 97
classe.save!

classe = DisciplineClass.new({:school_class_id => 22, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 29).first.id,
                                    :code => '2010221bIBINFORMÁTICA BÁSICAA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 70
classe.save!

classe = DisciplineClass.new({:school_class_id => 22, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 115).first.id,
                                    :code => '2010221bNENoções de EventosA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 71
classe.save!

classe = DisciplineClass.new({:school_class_id => 22, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 110).first.id,
                                    :code => '2010221bADTEAspectos e Dimensões do Turismo de EventosA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 73
classe.save!

classe = DisciplineClass.new({:school_class_id => 22, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 111).first.id,
                                    :code => '2010221bRIRelações InterpessoaisA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 74
classe.save!

classe = DisciplineClass.new({:school_class_id => 22, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 107).first.id,
                                    :code => '2010221bERSÉtica e Responsabilidade SocialA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 75
classe.save!

classe = DisciplineClass.new({:school_class_id => 22, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 109).first.id,
                                    :code => '2010221bPEPrática de EventosA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 76
classe.save!

classe = DisciplineClass.new({:school_class_id => 22, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 116).first.id,
                                    :code => '2010221bAEEAdministração de Empresas de EventosA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 79
classe.save!

classe = DisciplineClass.new({:school_class_id => 134, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 237).first.id,
                                    :code => '20112007301BOPTDOperações de Transportes e DistribuiçãoB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-17', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 725
classe.save!

classe = DisciplineClass.new({:school_class_id => 25, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 27, :discipline_id => 151).first.id,
                                    :code => '2010231dMET_AUMMetrologiaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 98
classe.save!

classe = DisciplineClass.new({:school_class_id => 23, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 25, :discipline_id => 126).first.id,
                                    :code => '2010231cPOI-IPortuguês InstrumentalA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 92
classe.save!

classe = DisciplineClass.new({:school_class_id => 26, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 26, :discipline_id => 152).first.id,
                                    :code => '2010231ePOR_MOVPortuguêsA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 99
classe.save!

classe = DisciplineClass.new({:school_class_id => 26, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 26, :discipline_id => 155).first.id,
                                    :code => '2010231eMAT_MOVMatemática AplicadaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 102
classe.save!

classe = DisciplineClass.new({:school_class_id => 25, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 27, :discipline_id => 156).first.id,
                                    :code => '2010231dSIJ_AUMSistema de injeçãoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 103
classe.save!

classe = DisciplineClass.new({:school_class_id => 25, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 27, :discipline_id => 158).first.id,
                                    :code => '2010231dSEA_AUMSistema elétrico automotivoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 104
classe.save!

classe = DisciplineClass.new({:school_class_id => 26, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 26, :discipline_id => 157).first.id,
                                    :code => '2010231eMET_MOVMetrologiaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 105
classe.save!

classe = DisciplineClass.new({:school_class_id => 25, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 27, :discipline_id => 159).first.id,
                                    :code => '2010231dSIT_AUMSistema de transmissãoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 106
classe.save!

classe = DisciplineClass.new({:school_class_id => 25, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 27, :discipline_id => 163).first.id,
                                    :code => '2010231dSIF_AUMSistema de freiosA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 109
classe.save!

classe = DisciplineClass.new({:school_class_id => 25, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 27, :discipline_id => 165).first.id,
                                    :code => '2010231dSIS_AUMSistema de suspensãoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 111
classe.save!

classe = DisciplineClass.new({:school_class_id => 25, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 27, :discipline_id => 168).first.id,
                                    :code => '2010231dHST_AUMHigiene e Segurança do TrabalhoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 112
classe.save!

classe = DisciplineClass.new({:school_class_id => 26, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 26, :discipline_id => 164).first.id,
                                    :code => '2010231eERG_MOVErgonomiaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 113
classe.save!

classe = DisciplineClass.new({:school_class_id => 25, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 27, :discipline_id => 167).first.id,
                                    :code => '2010231dLRI_AUMLiderança e Relacionamento Interpessoal A',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 114
classe.save!

classe = DisciplineClass.new({:school_class_id => 25, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 27, :discipline_id => 171).first.id,
                                    :code => '2010231dGIL_AUMGinástica LaboralA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 115
classe.save!

classe = DisciplineClass.new({:school_class_id => 25, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 27, :discipline_id => 173).first.id,
                                    :code => '2010231dGRM_AUMGerenciamento de Resíduos de manutençãoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 116
classe.save!

classe = DisciplineClass.new({:school_class_id => 26, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 26, :discipline_id => 166).first.id,
                                    :code => '2010231eFP_MOVFormação de PreçoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 117
classe.save!

classe = DisciplineClass.new({:school_class_id => 25, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 27, :discipline_id => 170).first.id,
                                    :code => '2010231dRED_AUMRelatórios e DocumentaçãoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 118
classe.save!

classe = DisciplineClass.new({:school_class_id => 25, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 27, :discipline_id => 175).first.id,
                                    :code => '2010231dEDT_AUMÉtica, direitos e deveres do trabalhadorA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 119
classe.save!

classe = DisciplineClass.new({:school_class_id => 26, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 26, :discipline_id => 169).first.id,
                                    :code => '2010231eDT_MOVDesenho Técnico e Detalhamento para ProduçãoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 120
classe.save!

classe = DisciplineClass.new({:school_class_id => 25, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 27, :discipline_id => 176).first.id,
                                    :code => '2010231dINFB_AUMInformática Básica A',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 121
classe.save!

classe = DisciplineClass.new({:school_class_id => 26, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 26, :discipline_id => 174).first.id,
                                    :code => '2010231eRPManutenção e Reparo de Máquinas e MóveisA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 123
classe.save!

classe = DisciplineClass.new({:school_class_id => 27, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 29, :discipline_id => 180).first.id,
                                    :code => '2010231fPOI_AAPortuguês InstrumentalA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 124
classe.save!

classe = DisciplineClass.new({:school_class_id => 248, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 125, :discipline_id => 671).first.id,
                                    :code => '20121083302ACTAGC - LOGISTICALogísticaA',
                                    :vancancies => '27', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-16', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 848
classe.save!

classe = DisciplineClass.new({:school_class_id => 211, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 362).first.id,
                                    :code => '20112036302AMÓVEIS_HIGIENEHigiene e Segurança do TrabalhoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 786
classe.save!

classe = DisciplineClass.new({:school_class_id => 22, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 112).first.id,
                                    :code => '2010221bPIPortuguês InstrumentalB',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 90
classe.save!

classe = DisciplineClass.new({:school_class_id => 25, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 27, :discipline_id => 161).first.id,
                                    :code => '2010231dIPE_AUMInspeção periódicaB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 107
classe.save!

classe = DisciplineClass.new({:school_class_id => 25, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 27, :discipline_id => 154).first.id,
                                    :code => '2010231dMAN_AUMManutençãoB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 101
classe.save!

classe = DisciplineClass.new({:school_class_id => 25, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 27, :discipline_id => 153).first.id,
                                    :code => '2010231dMCI_AUMMotor de combustão internaB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 100
classe.save!

classe = DisciplineClass.new({:school_class_id => 23, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 25, :discipline_id => 125).first.id,
                                    :code => '2010231cINFB-IInformática BásicaB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 91
classe.save!

classe = DisciplineClass.new({:school_class_id => 27, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 29, :discipline_id => 181).first.id,
                                    :code => '2010231fINB_AAInformática BásicaB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 125
classe.save!

classe = DisciplineClass.new({:school_class_id => 23, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 25, :discipline_id => 127).first.id,
                                    :code => '2010231cLEA-ILegislação AmbientalB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 93
classe.save!

classe = DisciplineClass.new({:school_class_id => 26, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 26, :discipline_id => 160).first.id,
                                    :code => '2010231eMAD_MOVMadeira e DerivadosB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 108
classe.save!

classe = DisciplineClass.new({:school_class_id => 26, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 26, :discipline_id => 172).first.id,
                                    :code => '2010231ePF_MOVProcesso de Fabricação e montagem de móveisB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 122
classe.save!

classe = DisciplineClass.new({:school_class_id => 23, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 25, :discipline_id => 131).first.id,
                                    :code => '2010231cPIG-IPrograma Interno de GerenciamentoB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 96
classe.save!

classe = DisciplineClass.new({:school_class_id => 26, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 26, :discipline_id => 162).first.id,
                                    :code => '2010231eCQ_MOVControle da QualidadeB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 110
classe.save!

classe = DisciplineClass.new({:school_class_id => 27, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 29, :discipline_id => 182).first.id,
                                    :code => '2010231fEDT_AAÉtica, direitos e deveres do trabalhadorA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 126
classe.save!

classe = DisciplineClass.new({:school_class_id => 27, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 29, :discipline_id => 187).first.id,
                                    :code => '2010231fEDA_AAEducação AmbientalA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 131
classe.save!

classe = DisciplineClass.new({:school_class_id => 27, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 29, :discipline_id => 188).first.id,
                                    :code => '2010231fHST_AASaúde e Segurança do TrabalhadorA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 132
classe.save!

classe = DisciplineClass.new({:school_class_id => 27, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 29, :discipline_id => 189).first.id,
                                    :code => '2010231fGIL_AAGinástica LaboralA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 133
classe.save!

classe = DisciplineClass.new({:school_class_id => 30, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 30, :discipline_id => 190).first.id,
                                    :code => '2010221dESPANHOL_NBLíngua Espanhola Nível BásicoA',
                                    :vancancies => '25', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 135
classe.save!

classe = DisciplineClass.new({:school_class_id => 27, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 29, :discipline_id => 183).first.id,
                                    :code => '2010231fMAS_AAMeio Ambiente e SustentabilidadeA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 127
classe.save!

classe = DisciplineClass.new({:school_class_id => 27, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 29, :discipline_id => 185).first.id,
                                    :code => '2010231fCDP_AAControle da PoluiçãoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 129
classe.save!

classe = DisciplineClass.new({:school_class_id => 27, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 29, :discipline_id => 186).first.id,
                                    :code => '2010231fGRS_AAGerenciamento de Resíduos SólidosA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 130
classe.save!

classe = DisciplineClass.new({:school_class_id => 29, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 30, :discipline_id => 190).first.id,
                                    :code => '2010221cESPANHOL_NBLíngua Espanhola Nível BásicoA',
                                    :vancancies => '25', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 134
classe.save!

classe = DisciplineClass.new({:school_class_id => 35, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 31, :discipline_id => 192).first.id,
                                    :code => '2010231gINF_ALMAPInformática Aplicada A',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 137
classe.save!

classe = DisciplineClass.new({:school_class_id => 35, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 31, :discipline_id => 193).first.id,
                                    :code => '2010231gLOG_ALMAPLogística A',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 138
classe.save!

classe = DisciplineClass.new({:school_class_id => 35, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 31, :discipline_id => 194).first.id,
                                    :code => '2010231gGRC_ALMAPGerenciamento de Resíduos de ConstruçãoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 139
classe.save!

classe = DisciplineClass.new({:school_class_id => 172, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 77, :discipline_id => 89).first.id,
                                    :code => '20112005201AEBSSEstudo Básico de Sistemas de SoftwareA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 88
classe.save!

classe = DisciplineClass.new({:school_class_id => 17, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 7, :discipline_id => 6).first.id,
                                    :code => '2010111aAGROE0101Agroecologia IA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 51
classe.save!

classe = DisciplineClass.new({:school_class_id => 172, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 77, :discipline_id => 94).first.id,
                                    :code => '20112005201AEMPREEmpreendedorismo e VendasA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 81
classe.save!

classe = DisciplineClass.new({:school_class_id => 172, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 77, :discipline_id => 93).first.id,
                                    :code => '20112005201AETICAÉtica Aplicada à InformáticaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 80
classe.save!

classe = DisciplineClass.new({:school_class_id => 17, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 7, :discipline_id => 9).first.id,
                                    :code => '2010111aAGROE0104Química Aplicada à AgroecologiaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 50
classe.save!

classe = DisciplineClass.new({:school_class_id => 17, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 7, :discipline_id => 11).first.id,
                                    :code => '2010111aAGROE0106Sociologia RuralA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 49
classe.save!

classe = DisciplineClass.new({:school_class_id => 17, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 7, :discipline_id => 7).first.id,
                                    :code => '2010111aAGROE0102Cálculo Diferencial e IntegralA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 48
classe.save!

classe = DisciplineClass.new({:school_class_id => 17, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 7, :discipline_id => 5).first.id,
                                    :code => '2010111aAGROE0100Vivência em Agropecuária em Bases EcológicasB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 23
classe.save!

classe = DisciplineClass.new({:school_class_id => 17, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 7, :discipline_id => 12).first.id,
                                    :code => '2010111aAGROE0107Ciência do Solo IA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 52
classe.save!

classe = DisciplineClass.new({:school_class_id => 17, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 7, :discipline_id => 10).first.id,
                                    :code => '2010111aAGROE0105Citologia e MicrobiologiaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 46
classe.save!

classe = DisciplineClass.new({:school_class_id => 17, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 7, :discipline_id => 8).first.id,
                                    :code => '2010111aAGROE0103Leitura e Produção de TextosA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 47
classe.save!

classe = DisciplineClass.new({:school_class_id => 35, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 31, :discipline_id => 195).first.id,
                                    :code => '2010231gPOA_ALMAPPlanejamento e Organização do AlmoxarifadoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 140
classe.save!

classe = DisciplineClass.new({:school_class_id => 35, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 31, :discipline_id => 197).first.id,
                                    :code => '2010231gGIL_ALMAPGinástica LaboralA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 142
classe.save!

classe = DisciplineClass.new({:school_class_id => 35, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 31, :discipline_id => 198).first.id,
                                    :code => '2010231gIGA_ALMAPInventário e Gerenciamento do AmoxarifadoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 143
classe.save!

classe = DisciplineClass.new({:school_class_id => 35, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 31, :discipline_id => 199).first.id,
                                    :code => '2010231gHST_ALMAPPraticar as normas de saúde e segurança no trabalhoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 144
classe.save!

classe = DisciplineClass.new({:school_class_id => 35, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 31, :discipline_id => 200).first.id,
                                    :code => '2010231gLRI_ALMAPLiderança e Relacionamento InterpessoalA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 145
classe.save!

classe = DisciplineClass.new({:school_class_id => 35, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 31, :discipline_id => 201).first.id,
                                    :code => '2010231gPOI_ALMAPPortuguês InstrumentalA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 146
classe.save!

classe = DisciplineClass.new({:school_class_id => 41, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 33, :discipline_id => 204).first.id,
                                    :code => '2010421aCBASContabilidade BásicaA',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 151
classe.save!

classe = DisciplineClass.new({:school_class_id => 42, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 34, :discipline_id => 204).first.id,
                                    :code => '2010421bCBASContabilidade BásicaA',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 152
classe.save!

classe = DisciplineClass.new({:school_class_id => 45, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 35, :discipline_id => 207).first.id,
                                    :code => '2010421cIGAIntrodução ao Gerenciamento AmbientalB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 153
classe.save!

classe = DisciplineClass.new({:school_class_id => 44, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 22, :discipline_id => 206).first.id,
                                    :code => '2010411bESPGAMAEspanhol BásicoA',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 154
classe.save!

classe = DisciplineClass.new({:school_class_id => 43, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 21, :discipline_id => 205).first.id,
                                    :code => '2010411aINGGAMInglês BásicoA',
                                    :vancancies => '21', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 155
classe.save!

classe = DisciplineClass.new({:school_class_id => 22, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 114).first.id,
                                    :code => '2010221bACEAspectos Culturais em EventosB',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 72
classe.save!

classe = DisciplineClass.new({:school_class_id => 48, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 40, :discipline_id => 224).first.id,
                                    :code => '2011145101AEIXO1Eixo1 - EnemA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 165
classe.save!

classe = DisciplineClass.new({:school_class_id => 48, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 40, :discipline_id => 225).first.id,
                                    :code => '2011145101AEIXO2Eixo2 - EnemA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 166
classe.save!

classe = DisciplineClass.new({:school_class_id => 48, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 40, :discipline_id => 226).first.id,
                                    :code => '2011145101AEIXO3Eixo3 - EnemA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 167
classe.save!

classe = DisciplineClass.new({:school_class_id => 49, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 37).first.id,
                                    :code => '201118201A8100103Leitura e Produção de Texto IA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 168
classe.save!

classe = DisciplineClass.new({:school_class_id => 197, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 98, :discipline_id => 564).first.id,
                                    :code => '20112002301ACRF/FIC ESPANHOL CRF/Fic Espanhol Mod. 1A',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 767
classe.save!

classe = DisciplineClass.new({:school_class_id => 211, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 346).first.id,
                                    :code => '20112036302AMÓVEIS_MADEIRAMadeira e DerivadosB',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 782
classe.save!

classe = DisciplineClass.new({:school_class_id => 211, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 349).first.id,
                                    :code => '20112036302AMÓVEIS_METROLOGIAMetrologiaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 784
classe.save!

classe = DisciplineClass.new({:school_class_id => 54, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 259).first.id,
                                    :code => '2011149101AI.N.GInglês Técnico A',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 174
classe.save!

classe = DisciplineClass.new({:school_class_id => 54, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 261).first.id,
                                    :code => '2011149101AL.D.P Lógica de ProgramaçãoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 176
classe.save!

classe = DisciplineClass.new({:school_class_id => 54, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 262).first.id,
                                    :code => '2011149101AI.A.CIntrodução à Computação A',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 177
classe.save!

classe = DisciplineClass.new({:school_class_id => 54, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 258).first.id,
                                    :code => '2011149101AP.O.TPortuguês Instrumental A',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 179
classe.save!

classe = DisciplineClass.new({:school_class_id => 134, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 239).first.id,
                                    :code => '20112007301BLENILíngua Estrangeira para Negócios - InglêsB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-17', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 726
classe.save!

classe = DisciplineClass.new({:school_class_id => 55, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 259).first.id,
                                    :code => '2011149301AI.N.GInglês Técnico A',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 185
classe.save!

classe = DisciplineClass.new({:school_class_id => 55, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 261).first.id,
                                    :code => '2011149301AL.D.P Lógica de ProgramaçãoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 186
classe.save!

classe = DisciplineClass.new({:school_class_id => 55, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 262).first.id,
                                    :code => '2011149301AI.A.CIntrodução à Computação A',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 187
classe.save!

classe = DisciplineClass.new({:school_class_id => 55, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 263).first.id,
                                    :code => '2011149301AI.R.CIntrodução às Redes de Computadores A',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 188
classe.save!

classe = DisciplineClass.new({:school_class_id => 55, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 258).first.id,
                                    :code => '2011149301AP.O.TPortuguês Instrumental A',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 189
classe.save!

classe = DisciplineClass.new({:school_class_id => 55, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 260).first.id,
                                    :code => '2011149301AE.A.I Ética Aplicada a Informática A',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 190
classe.save!

classe = DisciplineClass.new({:school_class_id => 49, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 39).first.id,
                                    :code => '201118201A8100105Anatomia HumanaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 191
classe.save!

classe = DisciplineClass.new({:school_class_id => 49, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 38).first.id,
                                    :code => '201118201A8100104Fundamentos da Música IA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 192
classe.save!

classe = DisciplineClass.new({:school_class_id => 156, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 214).first.id,
                                    :code => '20112032101ARELINTERRelações InterpessoaisB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-09', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 529
classe.save!

classe = DisciplineClass.new({:school_class_id => 49, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 40).first.id,
                                    :code => '201118201A8100106Fundamentos da EducaçãoA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 193
classe.save!

classe = DisciplineClass.new({:school_class_id => 49, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 35).first.id,
                                    :code => '201118201A8100101Fundamentos da DançaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 194
classe.save!

classe = DisciplineClass.new({:school_class_id => 49, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 36).first.id,
                                    :code => '201118201A8100102Práticas Corporais IA',
                                    :vancancies => '25', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 196
classe.save!

classe = DisciplineClass.new({:school_class_id => 49, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 36).first.id,
                                    :code => '201118201A8100102Práticas Corporais IB',
                                    :vancancies => '35', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 197
classe.save!

classe = DisciplineClass.new({:school_class_id => 56, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 100).first.id,
                                    :code => '2011150301AINFORMAPLInformática AplicadaA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 199
classe.save!

classe = DisciplineClass.new({:school_class_id => 56, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 268).first.id,
                                    :code => '2011150301APORTINSTPortuguês InstrumentalA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 204
classe.save!

classe = DisciplineClass.new({:school_class_id => 55, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 262).first.id,
                                    :code => '2011149301AI.A.CIntrodução à Computação B',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 206
classe.save!

classe = DisciplineClass.new({:school_class_id => 49, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 41).first.id,
                                    :code => '201118201A8100107Práticas Integradoras IB',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 195
classe.save!

classe = DisciplineClass.new({:school_class_id => 22, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 242).first.id,
                                    :code => '2010221bEPPEtiqueta e Postura ProfissionalB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 208
classe.save!

classe = DisciplineClass.new({:school_class_id => 22, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 231).first.id,
                                    :code => '2010221bPDOPrática de OratóriaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 209
classe.save!

classe = DisciplineClass.new({:school_class_id => 22, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 235).first.id,
                                    :code => '2010221bCPROTCerimonial e ProtocoloA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 210
classe.save!

classe = DisciplineClass.new({:school_class_id => 22, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 274).first.id,
                                    :code => '2010221bSTESegurança do Trabalho em EventosA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 211
classe.save!

classe = DisciplineClass.new({:school_class_id => 22, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 276).first.id,
                                    :code => '2010221bRERecepção de EventosA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 213
classe.save!

classe = DisciplineClass.new({:school_class_id => 214, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 102, :discipline_id => 575).first.id,
                                    :code => '20111046301ACSSB FIC PORTPortuguêsB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-12-06', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 794
classe.save!

classe = DisciplineClass.new({:school_class_id => 215, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 103, :discipline_id => 572).first.id,
                                    :code => '20111062301ACSSB FIC ESP BASICOEspanhol BásicoB',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-12-06', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 805
classe.save!

classe = DisciplineClass.new({:school_class_id => 22, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 275).first.id,
                                    :code => '2010221bLAEVLegislação Aplicada a EventosB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 212
classe.save!

classe = DisciplineClass.new({:school_class_id => 56, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 272).first.id,
                                    :code => '2011150301AECMAÉtica, Cidadania e Meio AmbienteB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 202
classe.save!

classe = DisciplineClass.new({:school_class_id => 217, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 105, :discipline_id => 579).first.id,
                                    :code => '20111061301ACSSB FIC NOINFONoções de InformáticaB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-12-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 796
classe.save!

classe = DisciplineClass.new({:school_class_id => 35, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 31, :discipline_id => 196).first.id,
                                    :code => '2010231gAMO_ALMAPApontamento de Materiais e Mão de ObraB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 141
classe.save!

classe = DisciplineClass.new({:school_class_id => 35, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 31, :discipline_id => 191).first.id,
                                    :code => '2010231gMAT_ALMAPMatemática AplicadaB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 136
classe.save!

classe = DisciplineClass.new({:school_class_id => 27, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 29, :discipline_id => 184).first.id,
                                    :code => '2010231fLEA_AALegislação AmbientalB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 128
classe.save!

classe = DisciplineClass.new({:school_class_id => 134, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 234).first.id,
                                    :code => '20112007301BSSTRSaude e Segurança do TrabalhoB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-17', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 728
classe.save!

classe = DisciplineClass.new({:school_class_id => 52, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 245).first.id,
                                    :code => '2011146101AADRUAdministração RuralB',
                                    :vancancies => '45', 
                                    :ending_at => '2012-04-10', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 215
classe.save!

classe = DisciplineClass.new({:school_class_id => 50, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 228).first.id,
                                    :code => '2011116301AMATBMatemática BásicaB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '2012-02-09' })
classe.id = 235
classe.save!

classe = DisciplineClass.new({:school_class_id => 58, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 99).first.id,
                                    :code => '2011151301AETICARESPÉtica e Responsabilidade SocialA',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 237
classe.save!

classe = DisciplineClass.new({:school_class_id => 58, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 286).first.id,
                                    :code => '2011151301AINGAPLInglês AplicadoA',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 240
classe.save!

classe = DisciplineClass.new({:school_class_id => 58, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 288).first.id,
                                    :code => '2011151301ASESustentabilidade em EventosA',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 241
classe.save!

classe = DisciplineClass.new({:school_class_id => 53, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 41, :discipline_id => 253).first.id,
                                    :code => '2011147301AINCOIntrodução ao CooperativismoB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 232
classe.save!

classe = DisciplineClass.new({:school_class_id => 53, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 41, :discipline_id => 257).first.id,
                                    :code => '2011147301AECREEconomia RegionalB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 226
classe.save!

classe = DisciplineClass.new({:school_class_id => 153, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 260).first.id,
                                    :code => '20112030201AE.A.I Ética Aplicada a Informática C',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 175
classe.save!

classe = DisciplineClass.new({:school_class_id => 149, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 271).first.id,
                                    :code => '20112031301AATENDPUBQualidade no Atendimento ao PúblicoC',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 201
classe.save!

classe = DisciplineClass.new({:school_class_id => 222, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 110, :discipline_id => 603).first.id,
                                    :code => '20121068301ACSSB TS LEIT PRO TEXLeitura e Produção de TextoA',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-02-09', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 831
classe.save!

classe = DisciplineClass.new({:school_class_id => 222, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 110, :discipline_id => 602).first.id,
                                    :code => '20121068301ACSSB TS INT ADMIntrodução à AdministraçãoA',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-02-09', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 832
classe.save!

classe = DisciplineClass.new({:school_class_id => 53, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 41, :discipline_id => 256).first.id,
                                    :code => '2011147301AINBCInformática BásicaB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 231
classe.save!

classe = DisciplineClass.new({:school_class_id => 50, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 100).first.id,
                                    :code => '2011116301AINFORMAPLInformática AplicadaB',
                                    :vancancies => '45', 
                                    :ending_at => '2012-05-02', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 236
classe.save!

classe = DisciplineClass.new({:school_class_id => 52, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 251).first.id,
                                    :code => '2011146101ASSTASaude e Segurança do TrabalhoB',
                                    :vancancies => '45', 
                                    :ending_at => '2011-08-03', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 217
classe.save!

classe = DisciplineClass.new({:school_class_id => 58, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 289).first.id,
                                    :code => '2011151301AFEFundamentos de EventosB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 239
classe.save!

classe = DisciplineClass.new({:school_class_id => 56, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 269).first.id,
                                    :code => '2011150301AINTROCONTIntrodução à ContabilidadeB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 200
classe.save!

classe = DisciplineClass.new({:school_class_id => 53, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 41, :discipline_id => 255).first.id,
                                    :code => '2011147301AERSCÉtica e Responsabilidade SocialB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 233
classe.save!

classe = DisciplineClass.new({:school_class_id => 53, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 41, :discipline_id => 229).first.id,
                                    :code => '2011147301AFUMTFundamentos do Mundo do TrabalhoB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 230
classe.save!

classe = DisciplineClass.new({:school_class_id => 53, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 41, :discipline_id => 252).first.id,
                                    :code => '2011147301AMATAMatemática BásicaB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 229
classe.save!

classe = DisciplineClass.new({:school_class_id => 53, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 41, :discipline_id => 254).first.id,
                                    :code => '2011147301APTCOPortuguêsB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 227
classe.save!

classe = DisciplineClass.new({:school_class_id => 53, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 41, :discipline_id => 234).first.id,
                                    :code => '2011147301ASSTRSaude e Segurança do TrabalhoB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 228
classe.save!

classe = DisciplineClass.new({:school_class_id => 248, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 125, :discipline_id => 672).first.id,
                                    :code => '20121083302ACTAGC - MATEMFINANCMatemática FinanceiraA',
                                    :vancancies => '27', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-16', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 849
classe.save!

classe = DisciplineClass.new({:school_class_id => 56, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 455).first.id,
                                    :code => '2011150301AINTRODADMIntrodução à AdministraçãoA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 203
classe.save!

classe = DisciplineClass.new({:school_class_id => 152, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 459).first.id,
                                    :code => '20111031301AN.D.A.Noções de Direito AdministrativoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 198
classe.save!

classe = DisciplineClass.new({:school_class_id => 56, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 457).first.id,
                                    :code => '2011150301AM.A.Matemática aplicadaA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 205
classe.save!

classe = DisciplineClass.new({:school_class_id => 50, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 98).first.id,
                                    :code => '2011116301APORTINSPortuguês Instrumental B',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 221
classe.save!

classe = DisciplineClass.new({:school_class_id => 50, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 230).first.id,
                                    :code => '2011116301ATNEGTécnicas de NegociaçãoB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 222
classe.save!

classe = DisciplineClass.new({:school_class_id => 58, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 290).first.id,
                                    :code => '2011151301APAPortuguês AplicadoA',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 244
classe.save!

classe = DisciplineClass.new({:school_class_id => 22, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 277).first.id,
                                    :code => '2010221bRTECRedação TécnicaB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 214
classe.save!

classe = DisciplineClass.new({:school_class_id => 13, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 279).first.id,
                                    :code => '2010211aFAEFundamentos da Arte-EducaçãoA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 246
classe.save!

classe = DisciplineClass.new({:school_class_id => 13, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 280).first.id,
                                    :code => '2010211aCINCinesiologia     A',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 247
classe.save!

classe = DisciplineClass.new({:school_class_id => 199, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 99, :discipline_id => 565).first.id,
                                    :code => '20112004301ACRF/FIC INGLÊS M 1CRF/Fic Inglês Mod. 1A',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 768
classe.save!

classe = DisciplineClass.new({:school_class_id => 13, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 282).first.id,
                                    :code => '2010211aFMIIFundamentos da Música II A',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 250
classe.save!

classe = DisciplineClass.new({:school_class_id => 13, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 283).first.id,
                                    :code => '2010211aEFEBIEstrutura e Funcionamento da Educação Brasileira I  A',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 251
classe.save!

classe = DisciplineClass.new({:school_class_id => 13, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 284).first.id,
                                    :code => '2010211aPI IIPráticas Integradoras IIA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 252
classe.save!

classe = DisciplineClass.new({:school_class_id => 13, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 285).first.id,
                                    :code => '2010211aIEHAIntrodução à Estética e História da ArteA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 253
classe.save!

classe = DisciplineClass.new({:school_class_id => 162, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 69, :discipline_id => 478).first.id,
                                    :code => '20112051301ACADDesenho assistido por computadorB',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 522
classe.save!

classe = DisciplineClass.new({:school_class_id => 60, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 47, :discipline_id => 297).first.id,
                                    :code => '2011152201AREFORT0111Reforma OrtográficaB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 255
classe.save!

classe = DisciplineClass.new({:school_class_id => 61, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 291).first.id,
                                    :code => '2011125301AREC2011/1INFORMÁTICAInformática BásicaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 256
classe.save!

classe = DisciplineClass.new({:school_class_id => 61, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 299).first.id,
                                    :code => '2011125301AREC2011/1HIGIENEHigiene e Segurança no TrabalhoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 257
classe.save!

classe = DisciplineClass.new({:school_class_id => 61, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 298).first.id,
                                    :code => '2011125301AREC2011/1PROGRAMAPrograma Interno de GerenciamentoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 258
classe.save!

classe = DisciplineClass.new({:school_class_id => 61, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 300).first.id,
                                    :code => '2011125301AREC2011/1ÉTICAÉtica e Responsabilidade SocialA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 259
classe.save!

classe = DisciplineClass.new({:school_class_id => 61, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 292).first.id,
                                    :code => '2011125301AREC2011/1PORTUGUÊSPortuguês InstrumentalA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 260
classe.save!

classe = DisciplineClass.new({:school_class_id => 61, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 294).first.id,
                                    :code => '2011125301AREC2011/1EDUCAÇÃOEducação AmbientalA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 261
classe.save!

classe = DisciplineClass.new({:school_class_id => 61, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 296).first.id,
                                    :code => '2011125301AREC2011/1COMUNICAÇÃOComunicação e Relacionamento Interpessoal no TrabalhoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 262
classe.save!

classe = DisciplineClass.new({:school_class_id => 68, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 21, :discipline_id => 205).first.id,
                                    :code => '2011119101AINGGAMInglês BásicoA',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 288
classe.save!

classe = DisciplineClass.new({:school_class_id => 69, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 21, :discipline_id => 205).first.id,
                                    :code => '2011119201AINGGAMInglês BásicoA',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 289
classe.save!

classe = DisciplineClass.new({:school_class_id => 70, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 22, :discipline_id => 206).first.id,
                                    :code => '2011120201AESPGAMAEspanhol BásicoA',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 290
classe.save!

classe = DisciplineClass.new({:school_class_id => 134, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 240).first.id,
                                    :code => '20112007301BLENELíngua Estrangeira para Negócios – EspanholB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-17', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 727
classe.save!

classe = DisciplineClass.new({:school_class_id => 133, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 104).first.id,
                                    :code => '20112007301AFUNDLOGFundamentos de LogísticaB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-14', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 716
classe.save!

classe = DisciplineClass.new({:school_class_id => 54, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 263).first.id,
                                    :code => '2011149101AI.R.CIntrodução às Redes de Computadores B',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 178
classe.save!

classe = DisciplineClass.new({:school_class_id => 58, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 29).first.id,
                                    :code => '2011151301AIBINFORMÁTICA BÁSICAB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 242
classe.save!

classe = DisciplineClass.new({:school_class_id => 57, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 115).first.id,
                                    :code => '2011117202ANENoções de EventosA',
                                    :vancancies => '10', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 271
classe.save!

classe = DisciplineClass.new({:school_class_id => 57, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 29).first.id,
                                    :code => '2011117202AIBINFORMÁTICA BÁSICAA',
                                    :vancancies => '5', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 272
classe.save!

classe = DisciplineClass.new({:school_class_id => 65, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 303).first.id,
                                    :code => '2011157101AEDIFICAÇÕES_INFOBASInformática Básica - EdificaçõesA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 273
classe.save!

classe = DisciplineClass.new({:school_class_id => 66, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 304).first.id,
                                    :code => '2011157301AEDIFICAÇÕES_MECSOLMecânica dos Solos _EdificaçõesA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 274
classe.save!

classe = DisciplineClass.new({:school_class_id => 65, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 304).first.id,
                                    :code => '2011157101AEDIFICAÇÕES_MECSOLMecânica dos Solos _EdificaçõesA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 275
classe.save!

classe = DisciplineClass.new({:school_class_id => 66, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 304).first.id,
                                    :code => '2011157301AEDIFICAÇÕES_MECSOLMecânica dos Solos _EdificaçõesB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 276
classe.save!

classe = DisciplineClass.new({:school_class_id => 65, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 305).first.id,
                                    :code => '2011157101AEDIFICAÇÕES_DETECARQDesenho Técnico e ArquitetônicoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 277
classe.save!

classe = DisciplineClass.new({:school_class_id => 66, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 305).first.id,
                                    :code => '2011157301AEDIFICAÇÕES_DETECARQDesenho Técnico e ArquitetônicoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 278
classe.save!

classe = DisciplineClass.new({:school_class_id => 65, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 306).first.id,
                                    :code => '2011157101AEDIFICAÇÕES_MATAPLICMatemática AplicadaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 279
classe.save!

classe = DisciplineClass.new({:school_class_id => 66, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 306).first.id,
                                    :code => '2011157301AEDIFICAÇÕES_MATAPLICMatemática AplicadaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 280
classe.save!

classe = DisciplineClass.new({:school_class_id => 65, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 307).first.id,
                                    :code => '2011157101AEDIFICAÇÕES_PORTINSTPortuguês InstrumentalA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 281
classe.save!

classe = DisciplineClass.new({:school_class_id => 66, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 307).first.id,
                                    :code => '2011157301AEDIFICAÇÕES_PORTINSTPortuguês InstrumentalA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 282
classe.save!

classe = DisciplineClass.new({:school_class_id => 65, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 309).first.id,
                                    :code => '2011157101AEDIFICAÇÕES_RESMATResistência dos Materiais A',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 285
classe.save!

classe = DisciplineClass.new({:school_class_id => 67, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 22, :discipline_id => 206).first.id,
                                    :code => '2011120101AESPGAMAEspanhol BásicoA',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 287
classe.save!

classe = DisciplineClass.new({:school_class_id => 133, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 230).first.id,
                                    :code => '20112007301ATNEGTécnicas de NegociaçãoB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-14', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 717
classe.save!

classe = DisciplineClass.new({:school_class_id => 72, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 311).first.id,
                                    :code => '2011158301AMÓVEIS_INFORMÁTICAInformática BásicaB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 297
classe.save!

classe = DisciplineClass.new({:school_class_id => 72, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 314).first.id,
                                    :code => '2011158301AMÓVEIS_PROCESSOSProcessos AdministrativosB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 300
classe.save!

classe = DisciplineClass.new({:school_class_id => 66, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 308).first.id,
                                    :code => '2011157301AEDIFICAÇÕES_PROCCONSProcessos ConstrutivosB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 284
classe.save!

classe = DisciplineClass.new({:school_class_id => 72, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 315).first.id,
                                    :code => '2011158301AMÓVEIS_MATEMÁTICAMatemática AplicadaB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 301
classe.save!

classe = DisciplineClass.new({:school_class_id => 72, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 312).first.id,
                                    :code => '2011158301AMÓVEIS_PORTUGUÊSPortuguês InstrumentalB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 298
classe.save!

classe = DisciplineClass.new({:school_class_id => 72, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 316).first.id,
                                    :code => '2011158301AMÓVEIS_GESTÃOGestão de Recursos de MateriaisA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 302
classe.save!

classe = DisciplineClass.new({:school_class_id => 72, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 317).first.id,
                                    :code => '2011158301AMÓVEIS_TECNOLOGIATecnologia e Propriedades dos MateriaisA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 303
classe.save!

classe = DisciplineClass.new({:school_class_id => 72, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 318).first.id,
                                    :code => '2011158301AMÓVEIS_ÉTICAÉtica e Responsabilidade SocialA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 304
classe.save!

classe = DisciplineClass.new({:school_class_id => 72, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 313).first.id,
                                    :code => '2011158301AMÓVEIS_LIGAÇÕESLigações com MadeiraD',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 299
classe.save!

classe = DisciplineClass.new({:school_class_id => 65, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 308).first.id,
                                    :code => '2011157101AEDIFICAÇÕES_PROCCONSProcessos ConstrutivosB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 283
classe.save!

classe = DisciplineClass.new({:school_class_id => 66, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 309).first.id,
                                    :code => '2011157301AEDIFICAÇÕES_RESMATResistência dos Materiais B',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 286
classe.save!

classe = DisciplineClass.new({:school_class_id => 73, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 25, :discipline_id => 134).first.id,
                                    :code => '2011125302AORP-IIOrganização da ProduçãoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 305
classe.save!

classe = DisciplineClass.new({:school_class_id => 73, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 25, :discipline_id => 321).first.id,
                                    :code => '2011125302AGEP_RECIGestão de PessoasA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 307
classe.save!

classe = DisciplineClass.new({:school_class_id => 73, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 25, :discipline_id => 322).first.id,
                                    :code => '2011125302ALOG_RECILogisticaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 308
classe.save!

classe = DisciplineClass.new({:school_class_id => 73, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 25, :discipline_id => 323).first.id,
                                    :code => '2011125302ASQV_RECISaude e qualidade de vida do trabalhadorA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 309
classe.save!

classe = DisciplineClass.new({:school_class_id => 73, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 25, :discipline_id => 324).first.id,
                                    :code => '2011125302AMNPR_RECIMarketing e Negociação de Produtos ReciclaveisA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 310
classe.save!

classe = DisciplineClass.new({:school_class_id => 74, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 52, :discipline_id => 325).first.id,
                                    :code => '2011161201ALENB_IILíngua Espanhola_Nível Básico_Módulo IIA',
                                    :vancancies => '25', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 311
classe.save!

classe = DisciplineClass.new({:school_class_id => 75, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 52, :discipline_id => 325).first.id,
                                    :code => '2011161201BLENB_IILíngua Espanhola_Nível Básico_Módulo IIA',
                                    :vancancies => '25', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 312
classe.save!

classe = DisciplineClass.new({:school_class_id => 73, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 25, :discipline_id => 135).first.id,
                                    :code => '2011125302AACR-IIAdministração de Centros de ReciclagemA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 315
classe.save!

classe = DisciplineClass.new({:school_class_id => 73, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 25, :discipline_id => 319).first.id,
                                    :code => '2011125302AFAC_RECIFormação de Associações e CooperativasA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 316
classe.save!

classe = DisciplineClass.new({:school_class_id => 77, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 30, :discipline_id => 190).first.id,
                                    :code => '2011132101AESPANHOL_NBLíngua Espanhola Nível BásicoA',
                                    :vancancies => '25', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 317
classe.save!

classe = DisciplineClass.new({:school_class_id => 13, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 329).first.id,
                                    :code => '2010211aIMPROImprovisaçãoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 319
classe.save!

classe = DisciplineClass.new({:school_class_id => 80, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 54, :discipline_id => 328).first.id,
                                    :code => '2011359203AFRT1FerramentariaB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 321
classe.save!

classe = DisciplineClass.new({:school_class_id => 81, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 54, :discipline_id => 328).first.id,
                                    :code => '2011359203BFRT1FerramentariaB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 322
classe.save!

classe = DisciplineClass.new({:school_class_id => 90, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 57, :discipline_id => 363).first.id,
                                    :code => '2011163301AEPPROFEtiqueta e Postura profissionalA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 349
classe.save!

classe = DisciplineClass.new({:school_class_id => 90, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 57, :discipline_id => 364).first.id,
                                    :code => '2011163301ALINGLíngua InglesaB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 351
classe.save!

classe = DisciplineClass.new({:school_class_id => 72, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 347).first.id,
                                    :code => '2011158301AMÓVEIS_ERGONOMIAErgonomiaA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 354
classe.save!

classe = DisciplineClass.new({:school_class_id => 90, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 57, :discipline_id => 366).first.id,
                                    :code => '2011163301AMHMeios de HospedagemB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 352
classe.save!

classe = DisciplineClass.new({:school_class_id => 90, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 57, :discipline_id => 367).first.id,
                                    :code => '2011163301ATRHTécnicas de Recepção HoteleiraB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 353
classe.save!

classe = DisciplineClass.new({:school_class_id => 72, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 346).first.id,
                                    :code => '2011158301AMÓVEIS_MADEIRAMadeira e DerivadosA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 356
classe.save!

classe = DisciplineClass.new({:school_class_id => 72, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 362).first.id,
                                    :code => '2011158301AMÓVEIS_HIGIENEHigiene e Segurança do TrabalhoA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 360
classe.save!

classe = DisciplineClass.new({:school_class_id => 72, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 351).first.id,
                                    :code => '2011158301AMÓVEIS_ARTEArte e MóveisA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 361
classe.save!

classe = DisciplineClass.new({:school_class_id => 72, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 352).first.id,
                                    :code => '2011158301AMÓVEIS_PROJETOProjeto e Design de MóveisB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 359
classe.save!

classe = DisciplineClass.new({:school_class_id => 71, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 103).first.id,
                                    :code => '2011116301BCONTABContabilidadeA',
                                    :vancancies => '5', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 294
classe.save!

classe = DisciplineClass.new({:school_class_id => 134, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 232).first.id,
                                    :code => '20112007301BCNTGContabilidade GeralB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-17', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 729
classe.save!

classe = DisciplineClass.new({:school_class_id => 134, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 105).first.id,
                                    :code => '20112007301BESTAPLEstatística AplicadaB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-17', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 731
classe.save!

classe = DisciplineClass.new({:school_class_id => 90, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 57, :discipline_id => 368).first.id,
                                    :code => '2011163301ARORedação OficialB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 350
classe.save!

classe = DisciplineClass.new({:school_class_id => 90, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 57, :discipline_id => 370).first.id,
                                    :code => '2011163301AEAHEspanhol Aplicado a HotelariaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 368
classe.save!

classe = DisciplineClass.new({:school_class_id => 90, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 57, :discipline_id => 371).first.id,
                                    :code => '2011163301AEHEventos na HotelariaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 369
classe.save!

classe = DisciplineClass.new({:school_class_id => 58, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 361).first.id,
                                    :code => '2011151301ARELIMPRelações InterpessoaisB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 345
classe.save!

classe = DisciplineClass.new({:school_class_id => 90, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 57, :discipline_id => 379).first.id,
                                    :code => '2011163301ATURDFTurismo no DFA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 371
classe.save!

classe = DisciplineClass.new({:school_class_id => 90, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 57, :discipline_id => 365).first.id,
                                    :code => '2011163301ALHLegislação HoteleiraB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 367
classe.save!

classe = DisciplineClass.new({:school_class_id => 22, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 380).first.id,
                                    :code => '2010221bESPEspanholA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 372
classe.save!

classe = DisciplineClass.new({:school_class_id => 90, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 57, :discipline_id => 391).first.id,
                                    :code => '2011163301AINFOBInformática BásicaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 373
classe.save!

classe = DisciplineClass.new({:school_class_id => 200, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 72, :discipline_id => 566).first.id,
                                    :code => '20112045301AFIC/RF - PADEIRO BFic/RF - Padeiro BA',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 769
classe.save!

classe = DisciplineClass.new({:school_class_id => 133, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 228).first.id,
                                    :code => '20112007301AMATBMatemática BásicaB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-14', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 723
classe.save!

classe = DisciplineClass.new({:school_class_id => 242, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 119, :discipline_id => 640).first.id,
                                    :code => '20121078201APORTBRAPortuguês InstrumentalB',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-02-10', 
                                    :timetable_started_at => '2012-01-16' })
classe.id = 826
classe.save!

classe = DisciplineClass.new({:school_class_id => 247, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 125, :discipline_id => 675).first.id,
                                    :code => '20121083301ACTAGC - PORTINSTRUMPortuguês InstrumentalA',
                                    :vancancies => '43', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-16', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 839
classe.save!

classe = DisciplineClass.new({:school_class_id => 247, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 125, :discipline_id => 673).first.id,
                                    :code => '20121083301ACTAGC - NOCOESADMNoções de AdministraçãoA',
                                    :vancancies => '43', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-16', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 840
classe.save!

classe = DisciplineClass.new({:school_class_id => 247, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 125, :discipline_id => 661).first.id,
                                    :code => '20121083301ACTAGC - EMPREENDEDEmpreendedorismoA',
                                    :vancancies => '43', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-16', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 842
classe.save!

classe = DisciplineClass.new({:school_class_id => 195, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 96, :discipline_id => 562).first.id,
                                    :code => '20112048301AFIC/RF - PROC. COMUNProcesso de ComunicaçãoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 770
classe.save!

classe = DisciplineClass.new({:school_class_id => 195, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 96, :discipline_id => 561).first.id,
                                    :code => '20112048301AFIC/RF - EXCE. ATEN.Excelência no atendimentoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 772
classe.save!

classe = DisciplineClass.new({:school_class_id => 145, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 30, :discipline_id => 190).first.id,
                                    :code => '20112018101AESPANHOL_NBLíngua Espanhola Nível BásicoB',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-11', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 476
classe.save!

classe = DisciplineClass.new({:school_class_id => 195, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 96, :discipline_id => 560).first.id,
                                    :code => '20112048301AFIC/RF - PROFI. ATENProfissional do atendimentoB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 771
classe.save!

classe = DisciplineClass.new({:school_class_id => 76, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 53, :discipline_id => 326).first.id,
                                    :code => '2011162201AINGSAM012011Lingua InglesaB',
                                    :vancancies => '25', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 313
classe.save!

classe = DisciplineClass.new({:school_class_id => 216, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 104, :discipline_id => 571).first.id,
                                    :code => '20111063301ACSSB FIC ING BASICOInglês BásicoB',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-12-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 795
classe.save!

classe = DisciplineClass.new({:school_class_id => 217, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 105, :discipline_id => 580).first.id,
                                    :code => '20111061301ACSSB FIC REDAC COMRedação e comunicação ComercialB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-12-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 800
classe.save!

classe = DisciplineClass.new({:school_class_id => 217, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 105, :discipline_id => 582).first.id,
                                    :code => '20111061301ACSSB FIC MAT BASICMatemática BásicaB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-12-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 797
classe.save!

classe = DisciplineClass.new({:school_class_id => 168, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 435).first.id,
                                    :code => '20112008203AP.O.L.Planejamento, Organização e LogísticaB',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-16', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 560
classe.save!

classe = DisciplineClass.new({:school_class_id => 248, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 125, :discipline_id => 670).first.id,
                                    :code => '20121083302ACTAGC - LEGISTRIBEMPLegislação Tributária EmpresarialA',
                                    :vancancies => '27', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-16', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 850
classe.save!

classe = DisciplineClass.new({:school_class_id => 248, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 125, :discipline_id => 666).first.id,
                                    :code => '20121083302ACTAGC - GESTQUALIDGestão da QualidadeA',
                                    :vancancies => '27', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-16', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 852
classe.save!

classe = DisciplineClass.new({:school_class_id => 248, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 125, :discipline_id => 668).first.id,
                                    :code => '20121083302ACTAGC - INGLESTECNICInglês TécnicoA',
                                    :vancancies => '27', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-16', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 854
classe.save!

classe = DisciplineClass.new({:school_class_id => 251, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 127, :discipline_id => 684).first.id,
                                    :code => '20121043101ATESTEtesteB',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-02-10' })
classe.id = 856
classe.save!

classe = DisciplineClass.new({:school_class_id => 266, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 304).first.id,
                                    :code => '20121002301AEDIFICAÇÕES_MECSOLMecânica dos Solos _EdificaçõesA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 858
classe.save!

classe = DisciplineClass.new({:school_class_id => 253, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 130, :discipline_id => 746).first.id,
                                    :code => '20121041101ACONTROLE_HSST_IHigiene, Saúde e Segurança no TrabalhoA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 870
classe.save!

classe = DisciplineClass.new({:school_class_id => 253, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 130, :discipline_id => 741).first.id,
                                    :code => '20121041101ACONTROLE_MATAPL_IMatemática AplicadaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 871
classe.save!

classe = DisciplineClass.new({:school_class_id => 254, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 130, :discipline_id => 746).first.id,
                                    :code => '20121041101BCONTROLE_HSST_IHigiene, Saúde e Segurança no TrabalhoA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 876
classe.save!

classe = DisciplineClass.new({:school_class_id => 262, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 128, :discipline_id => 695).first.id,
                                    :code => '20121034301ARE2_PORTIN_IPortuguês InstrumentalA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 879
classe.save!

classe = DisciplineClass.new({:school_class_id => 263, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 128, :discipline_id => 703).first.id,
                                    :code => '20121034302ARE2_ACR_IIAdministração de Centros de ReciclagemA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 888
classe.save!

classe = DisciplineClass.new({:school_class_id => 78, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 53, :discipline_id => 326).first.id,
                                    :code => '2011162201BINGSAM012011Lingua InglesaB',
                                    :vancancies => '25', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 318
classe.save!

classe = DisciplineClass.new({:school_class_id => 73, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 25, :discipline_id => 320).first.id,
                                    :code => '2011125302AECS_RECIEconomia SolidáriaB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 306
classe.save!

classe = DisciplineClass.new({:school_class_id => 264, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 713).first.id,
                                    :code => '20121034303ARE1_MAKEMP_IIIMarketing e EmpreendedorismoA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 894
classe.save!

classe = DisciplineClass.new({:school_class_id => 264, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 712).first.id,
                                    :code => '20121034303ARE1_EMEQ_IIIEspecificação e Manutenção de EquipamentosA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 895
classe.save!

classe = DisciplineClass.new({:school_class_id => 259, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 129, :discipline_id => 717).first.id,
                                    :code => '20121036301AMÓVIES_PORT INS_IPortuguês InstrumentalA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 897
classe.save!

classe = DisciplineClass.new({:school_class_id => 259, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 129, :discipline_id => 718).first.id,
                                    :code => '20121036301AMÓVIES_LIGMAD_ILigações com madeiraA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 899
classe.save!

classe = DisciplineClass.new({:school_class_id => 268, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 306).first.id,
                                    :code => '20121002101AEDIFICAÇÕES_MATAPLICMatemática AplicadaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 919
classe.save!

classe = DisciplineClass.new({:school_class_id => 268, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 309).first.id,
                                    :code => '20121002101AEDIFICAÇÕES_RESMATResistência dos Materiais A',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 920
classe.save!

classe = DisciplineClass.new({:school_class_id => 269, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 306).first.id,
                                    :code => '20121002101BEDIFICAÇÕES_MATAPLICMatemática AplicadaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 931
classe.save!

classe = DisciplineClass.new({:school_class_id => 271, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 343).first.id,
                                    :code => '20121002102AESTCONCARM022011Estruturas de Concreto ArmadoA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 934
classe.save!

classe = DisciplineClass.new({:school_class_id => 272, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 338).first.id,
                                    :code => '20121002102BPROJARQ022011Projeto ArquitetônicoA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 943
classe.save!

classe = DisciplineClass.new({:school_class_id => 272, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 342).first.id,
                                    :code => '20121002102BDESAUXCOMP022011Desenho Auxiliado por ComputadorA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 947
classe.save!

classe = DisciplineClass.new({:school_class_id => 275, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 686).first.id,
                                    :code => '20121002303AEDIFICAÇÕES_INFA_IIInformática AplicadaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 957
classe.save!

classe = DisciplineClass.new({:school_class_id => 275, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 693).first.id,
                                    :code => '20121002303AEDIFICAÇÕES_GDR_IIIGestão de ResíduosA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 958
classe.save!

classe = DisciplineClass.new({:school_class_id => 275, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 692).first.id,
                                    :code => '20121002303AEDIFICAÇÕES_ERS_III Ética e Responsabilidade SocialA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 993
classe.save!

classe = DisciplineClass.new({:school_class_id => 253, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 130, :discipline_id => 745).first.id,
                                    :code => '20121041101ACONTROLE_QUIMGERAL_IQuimica GeralA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 967
classe.save!

classe = DisciplineClass.new({:school_class_id => 263, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 128, :discipline_id => 706).first.id,
                                    :code => '20121034302ARE2_GRS_IIGerenciamento de Resíduos SólidosA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 972
classe.save!

classe = DisciplineClass.new({:school_class_id => 253, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 130, :discipline_id => 742).first.id,
                                    :code => '20121041101ACONTROLE_ERS_IÉtica e Responsabilidade SocialA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 975
classe.save!

classe = DisciplineClass.new({:school_class_id => 254, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 130, :discipline_id => 742).first.id,
                                    :code => '20121041101BCONTROLE_ERS_IÉtica e Responsabilidade SocialA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 977
classe.save!

classe = DisciplineClass.new({:school_class_id => 252, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 59, :discipline_id => 749).first.id,
                                    :code => '20121041102ACONTROLE_QUIMGER_IIQuimica GeralA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 980
classe.save!

classe = DisciplineClass.new({:school_class_id => 270, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 307).first.id,
                                    :code => '20121002101CEDIFICAÇÕES_PORTINSTPortuguês InstrumentalA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 989
classe.save!

classe = DisciplineClass.new({:school_class_id => 270, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 306).first.id,
                                    :code => '20121002101CEDIFICAÇÕES_MATAPLICMatemática AplicadaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 990
classe.save!

classe = DisciplineClass.new({:school_class_id => 249, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 125, :discipline_id => 662).first.id,
                                    :code => '20121083303ACTAGC - ESPANTECNEspanhol TécnicoA',
                                    :vancancies => '19', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 1002
classe.save!

classe = DisciplineClass.new({:school_class_id => 276, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 131, :discipline_id => 754).first.id,
                                    :code => '20121085201AFUNDAMENT GEST PUBLIFundamentos da Gestão PúblicaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-26', 
                                    :timetable_started_at => '2012-03-02' })
classe.id = 1003
classe.save!

classe = DisciplineClass.new({:school_class_id => 278, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 132, :discipline_id => 763).first.id,
                                    :code => '20121086103AINGLÊS BÁSICO 3Inglês Básico 3A',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-29', 
                                    :timetable_started_at => '2012-02-28' })
classe.id = 1016
classe.save!

classe = DisciplineClass.new({:school_class_id => 113, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 293).first.id,
                                    :code => '2011253301AREC2011/1LEGISLAÇÃOLegislação AmbientalA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 425
classe.save!

classe = DisciplineClass.new({:school_class_id => 286, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 134, :discipline_id => 769).first.id,
                                    :code => '20112088102AQUÍMICA TESTEQuímica TESTEA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '2011-07-27' })
classe.id = 1026
classe.save!

classe = DisciplineClass.new({:school_class_id => 103, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 60, :discipline_id => 393).first.id,
                                    :code => '2011164101AOSMOrganização, Sistema e MétodosA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 375
classe.save!

classe = DisciplineClass.new({:school_class_id => 277, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 35).first.id,
                                    :code => '20121002201A8100101Fundamentos da DançaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-08-11' })
classe.id = 1009
classe.save!

classe = DisciplineClass.new({:school_class_id => 112, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 59, :discipline_id => 402).first.id,
                                    :code => '2011265101ATCA-LEGISLAÇÃOLegislação AmbientalA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 410
classe.save!

classe = DisciplineClass.new({:school_class_id => 134, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 243).first.id,
                                    :code => '20112007301BMATFMatemática FinanceiraB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-21', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 741
classe.save!

classe = DisciplineClass.new({:school_class_id => 127, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 52, :discipline_id => 417).first.id,
                                    :code => '20112039202ALENB_IIILíngua Espanhola_Nível Básico_Módulo IIIB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-07-20', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 468
classe.save!

classe = DisciplineClass.new({:school_class_id => 133, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 15).first.id,
                                    :code => '20112007301AFADMFundamentos da AdministraçãoB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-17', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 724
classe.save!

classe = DisciplineClass.new({:school_class_id => 128, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 52, :discipline_id => 417).first.id,
                                    :code => '20112039202BLENB_IIILíngua Espanhola_Nível Básico_Módulo IIIB',
                                    :vancancies => '25', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-07-20', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 471
classe.save!

classe = DisciplineClass.new({:school_class_id => 115, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 61, :discipline_id => 413).first.id,
                                    :code => '2011266101AMATPROCTEX201102Materiais e Processos TêxteisA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-07-18', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 456
classe.save!

classe = DisciplineClass.new({:school_class_id => 115, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 61, :discipline_id => 412).first.id,
                                    :code => '2011266101AHISTVEST201102História do VestuárioA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-07-18', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 455
classe.save!

classe = DisciplineClass.new({:school_class_id => 55, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 263).first.id,
                                    :code => '2011149301AI.R.CIntrodução às Redes de Computadores B',
                                    :vancancies => '90', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-30', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 493
classe.save!

classe = DisciplineClass.new({:school_class_id => 244, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 121, :discipline_id => 642).first.id,
                                    :code => '20121080201AITALIANOBRAItalianoA',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-02-13', 
                                    :timetable_started_at => '2012-01-16' })
classe.id = 834
classe.save!

classe = DisciplineClass.new({:school_class_id => 115, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 61, :discipline_id => 411).first.id,
                                    :code => '2011266101AMOD201102ModelagemA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-07-18', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 452
classe.save!

classe = DisciplineClass.new({:school_class_id => 124, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 30, :discipline_id => 190).first.id,
                                    :code => '20102018201AESPANHOL_NBLíngua Espanhola Nível BásicoB',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-07-19', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 464
classe.save!

classe = DisciplineClass.new({:school_class_id => 125, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 30, :discipline_id => 190).first.id,
                                    :code => '20112018201AESPANHOL_NBLíngua Espanhola Nível BásicoB',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-07-19', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 465
classe.save!

classe = DisciplineClass.new({:school_class_id => 118, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 53, :discipline_id => 416).first.id,
                                    :code => '2011262202BINGSAM022011Língua InglesaB',
                                    :vancancies => '25', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 458
classe.save!

classe = DisciplineClass.new({:school_class_id => 117, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 53, :discipline_id => 416).first.id,
                                    :code => '2011262202AINGSAM022011Língua InglesaB',
                                    :vancancies => '25', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 457
classe.save!

classe = DisciplineClass.new({:school_class_id => 247, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 125, :discipline_id => 674).first.id,
                                    :code => '20121083301ACTAGC - PLANEJORGANIPlanejamento OrganizacionalA',
                                    :vancancies => '43', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-16', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 841
classe.save!

classe = DisciplineClass.new({:school_class_id => 156, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 288).first.id,
                                    :code => '20112032101ASESustentabilidade em EventosB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-29', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 488
classe.save!

classe = DisciplineClass.new({:school_class_id => 248, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 125, :discipline_id => 676).first.id,
                                    :code => '20121083302ACTAGC - PROCECOMPRASProcesso de ComprasA',
                                    :vancancies => '27', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-16', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 851
classe.save!

classe = DisciplineClass.new({:school_class_id => 126, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 52, :discipline_id => 325).first.id,
                                    :code => '20112039101ALENB_IILíngua Espanhola_Nível Básico_Módulo IIA',
                                    :vancancies => '25', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-07-19', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 466
classe.save!

classe = DisciplineClass.new({:school_class_id => 156, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 289).first.id,
                                    :code => '20112032101AFEFundamentos de EventosB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-29', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 486
classe.save!

classe = DisciplineClass.new({:school_class_id => 157, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 433).first.id,
                                    :code => '20111032302AE.P.EElaboração de Projetos em EventosB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-29', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 479
classe.save!

classe = DisciplineClass.new({:school_class_id => 157, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 445).first.id,
                                    :code => '20111032302AR.T.Redação TécnicaB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-29', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 484
classe.save!

classe = DisciplineClass.new({:school_class_id => 157, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 446).first.id,
                                    :code => '20111032302AMA.E.Marketing em EventosB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-29', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 478
classe.save!

classe = DisciplineClass.new({:school_class_id => 157, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 447).first.id,
                                    :code => '20111032302AE.A.Espanhol AplicadoB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-29', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 485
classe.save!

classe = DisciplineClass.new({:school_class_id => 157, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 435).first.id,
                                    :code => '20111032302AP.O.L.Planejamento, Organização e LogísticaB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-29', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 480
classe.save!

classe = DisciplineClass.new({:school_class_id => 157, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 449).first.id,
                                    :code => '20111032302AG.F.O.E.Gestão Financeira e Orçamentaria em EventosB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-29', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 483
classe.save!

classe = DisciplineClass.new({:school_class_id => 52, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 249).first.id,
                                    :code => '2011146101AAGRFAgricultura Familiar e Desenvolvimento Regional SustentávelB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 218
classe.save!

classe = DisciplineClass.new({:school_class_id => 52, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 53).first.id,
                                    :code => '2011146101AAGROE 0401Silvicultura A',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 384
classe.save!

classe = DisciplineClass.new({:school_class_id => 157, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 438).first.id,
                                    :code => '20111032302AA.B.Alimentos e BebidasB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-29', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 482
classe.save!

classe = DisciplineClass.new({:school_class_id => 51, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 238).first.id,
                                    :code => '2011116302AARMMArmazenagem e Movimentação de MateriaisB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 220
classe.save!

classe = DisciplineClass.new({:school_class_id => 51, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 237).first.id,
                                    :code => '2011116302AOPTDOperações de Transportes e DistribuiçãoB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 169
classe.save!

classe = DisciplineClass.new({:school_class_id => 51, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 236).first.id,
                                    :code => '2011116302ACTESControle de EstoquesA',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 219
classe.save!

classe = DisciplineClass.new({:school_class_id => 157, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 451).first.id,
                                    :code => '20111032302AEM.E.Empreendedoriso em EventosB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-29', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 481
classe.save!

classe = DisciplineClass.new({:school_class_id => 71, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 100).first.id,
                                    :code => '2011116301BINFORMAPLInformática AplicadaA',
                                    :vancancies => '10', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 292
classe.save!

classe = DisciplineClass.new({:school_class_id => 71, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 102).first.id,
                                    :code => '2011116301BSOCIOLSociologia do TrabalhoA',
                                    :vancancies => '5', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 295
classe.save!

classe = DisciplineClass.new({:school_class_id => 71, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 310).first.id,
                                    :code => '2011116301BPORTDEPPortuguês Instrumental (Dependência)A',
                                    :vancancies => '6', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 296
classe.save!

classe = DisciplineClass.new({:school_class_id => 113, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 295).first.id,
                                    :code => '2011253301AREC2011/1AMBIENTEMeio Ambiente e SustentabilidadeA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 424
classe.save!

classe = DisciplineClass.new({:school_class_id => 252, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 59, :discipline_id => 750).first.id,
                                    :code => '20121041102ACONTROLE_SMA_IISaúde e Meio AmbienteA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 857
classe.save!

classe = DisciplineClass.new({:school_class_id => 113, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 294).first.id,
                                    :code => '2011253301AREC2011/1EDUCAÇÃOEducação AmbientalA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 427
classe.save!

classe = DisciplineClass.new({:school_class_id => 113, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 298).first.id,
                                    :code => '2011253301AREC2011/1PROGRAMAPrograma Interno de GerenciamentoB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 426
classe.save!

classe = DisciplineClass.new({:school_class_id => 113, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 300).first.id,
                                    :code => '2011253301AREC2011/1ÉTICAÉtica e Responsabilidade SocialA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 419
classe.save!

classe = DisciplineClass.new({:school_class_id => 113, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 132).first.id,
                                    :code => '2011253301AHST-IHigiene e Segurança no TrabalhoC',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 421
classe.save!

classe = DisciplineClass.new({:school_class_id => 113, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 132).first.id,
                                    :code => '2011253301AHST-IHigiene e Segurança no TrabalhoA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 420
classe.save!

classe = DisciplineClass.new({:school_class_id => 113, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 291).first.id,
                                    :code => '2011253301AREC2011/1INFORMÁTICAInformática BásicaA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 423
classe.save!

classe = DisciplineClass.new({:school_class_id => 113, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 292).first.id,
                                    :code => '2011253301AREC2011/1PORTUGUÊSPortuguês InstrumentalA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 422
classe.save!

classe = DisciplineClass.new({:school_class_id => 264, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 711).first.id,
                                    :code => '20121034303ARE1_FAFIN_IIIFundamentos da Administração FinanceiraA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 891
classe.save!

classe = DisciplineClass.new({:school_class_id => 260, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 129, :discipline_id => 725).first.id,
                                    :code => '20121036302AMÓVIES_ERGONOMIA_IIErgonomiaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 904
classe.save!

classe = DisciplineClass.new({:school_class_id => 260, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 129, :discipline_id => 729).first.id,
                                    :code => '20121036302AMÓVEIS_PROJDESMOV_IIProjeto e Design de MóveisA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 908
classe.save!

classe = DisciplineClass.new({:school_class_id => 270, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 304).first.id,
                                    :code => '20121002101CEDIFICAÇÕES_MECSOLMecânica dos Solos _EdificaçõesA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 922
classe.save!

classe = DisciplineClass.new({:school_class_id => 19, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 97).first.id,
                                    :code => '2010231bADMIN1Administração aplicada à LogísticaB',
                                    :vancancies => '41', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-16', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 56
classe.save!

classe = DisciplineClass.new({:school_class_id => 270, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 308).first.id,
                                    :code => '20121002101CEDIFICAÇÕES_PROCCONSProcessos ConstrutivosA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 924
classe.save!

classe = DisciplineClass.new({:school_class_id => 142, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 433).first.id,
                                    :code => '20102008201AE.P.EElaboração de Projetos em EventosA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-29', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 489
classe.save!

classe = DisciplineClass.new({:school_class_id => 269, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 308).first.id,
                                    :code => '20121002101BEDIFICAÇÕES_PROCCONSProcessos ConstrutivosA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 927
classe.save!

classe = DisciplineClass.new({:school_class_id => 142, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 435).first.id,
                                    :code => '20102008201AP.O.L.Planejamento, Organização e LogísticaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-31', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 494
classe.save!

classe = DisciplineClass.new({:school_class_id => 269, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 304).first.id,
                                    :code => '20121002101BEDIFICAÇÕES_MECSOLMecânica dos Solos _EdificaçõesA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 928
classe.save!

classe = DisciplineClass.new({:school_class_id => 271, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 342).first.id,
                                    :code => '20121002102ADESAUXCOMP022011Desenho Auxiliado por ComputadorA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 932
classe.save!

classe = DisciplineClass.new({:school_class_id => 271, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 345).first.id,
                                    :code => '20121002102AMATCONCIV022011Materiais de Construção CivilA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 936
classe.save!

classe = DisciplineClass.new({:school_class_id => 52, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 244).first.id,
                                    :code => '2011146101AIAGRIntrodução ao AgronegócioB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 180
classe.save!

classe = DisciplineClass.new({:school_class_id => 52, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 252).first.id,
                                    :code => '2011146101AMATAMatemática BásicaB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 181
classe.save!

classe = DisciplineClass.new({:school_class_id => 52, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 246).first.id,
                                    :code => '2011146101APTAGPortuguêsB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 182
classe.save!

classe = DisciplineClass.new({:school_class_id => 120, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 53, :discipline_id => 326).first.id,
                                    :code => '20112040101BINGSAM012011Lingua InglesaB',
                                    :vancancies => '35', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 474
classe.save!

classe = DisciplineClass.new({:school_class_id => 119, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 53, :discipline_id => 326).first.id,
                                    :code => '20112040101AINGSAM012011Lingua InglesaB',
                                    :vancancies => '35', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 473
classe.save!

classe = DisciplineClass.new({:school_class_id => 153, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 453).first.id,
                                    :code => '20112030201AE.D.S.Engenharia de SoftwareA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-30', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 491
classe.save!

classe = DisciplineClass.new({:school_class_id => 58, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 114).first.id,
                                    :code => '2011151301AACEAspectos Culturais em EventosA',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-29', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 487
classe.save!

classe = DisciplineClass.new({:school_class_id => 167, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 461).first.id,
                                    :code => '20112031302AP.O.Planejamento OrganizacionalB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-31', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 500
classe.save!

classe = DisciplineClass.new({:school_class_id => 153, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 453).first.id,
                                    :code => '20112030201AE.D.S.Engenharia de SoftwareC',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-30', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 492
classe.save!

classe = DisciplineClass.new({:school_class_id => 50, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 104).first.id,
                                    :code => '2011116301AFUNDLOGFundamentos de LogísticaB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 234
classe.save!

classe = DisciplineClass.new({:school_class_id => 51, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 230).first.id,
                                    :code => '2011116302ATNEGTécnicas de NegociaçãoB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 173
classe.save!

classe = DisciplineClass.new({:school_class_id => 50, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 229).first.id,
                                    :code => '2011116301AFUMTFundamentos do Mundo do TrabalhoB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 225
classe.save!

classe = DisciplineClass.new({:school_class_id => 50, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 15).first.id,
                                    :code => '2011116301AFADMFundamentos da AdministraçãoB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 224
classe.save!

classe = DisciplineClass.new({:school_class_id => 51, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 239).first.id,
                                    :code => '2011116302ALENILíngua Estrangeira para Negócios - InglêsB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 170
classe.save!

classe = DisciplineClass.new({:school_class_id => 51, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 240).first.id,
                                    :code => '2011116302ALENELíngua Estrangeira para Negócios – EspanholB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 171
classe.save!

classe = DisciplineClass.new({:school_class_id => 114, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 149).first.id,
                                    :code => '2011253304AREC-DPRODesenvolvimento de ProdutosA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 451
classe.save!

classe = DisciplineClass.new({:school_class_id => 114, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 406).first.id,
                                    :code => '2011253304AREC-RINETecnologia de Recursos InertesA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 450
classe.save!

classe = DisciplineClass.new({:school_class_id => 114, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 143).first.id,
                                    :code => '2011253304AGRS-IVGerenciamento de Resíduos SólidosA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 449
classe.save!

classe = DisciplineClass.new({:school_class_id => 133, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 229).first.id,
                                    :code => '20112007301AFUMTFundamentos do Mundo do TrabalhoB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-14', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 719
classe.save!

classe = DisciplineClass.new({:school_class_id => 146, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 456).first.id,
                                    :code => '20102002101ADIDDidática – DidA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-31', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 502
classe.save!

classe = DisciplineClass.new({:school_class_id => 52, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 264).first.id,
                                    :code => '2011146101AECOAEcologia AgrícolaB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 183
classe.save!

classe = DisciplineClass.new({:school_class_id => 52, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 250).first.id,
                                    :code => '2011146101AGEQAGestão da Qualidade no AgronegócioB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 254
classe.save!

classe = DisciplineClass.new({:school_class_id => 166, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 445).first.id,
                                    :code => '20112032302AR.T.Redação TécnicaB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-12', 
                                    :timetable_started_at => '2011-08-02' })
classe.id = 543
classe.save!

classe = DisciplineClass.new({:school_class_id => 210, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 317).first.id,
                                    :code => '20112036301AMÓVEIS_TECNOLOGIATecnologia e Propriedades dos MateriaisA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 773
classe.save!

classe = DisciplineClass.new({:school_class_id => 290, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 289).first.id,
                                    :code => '20121032301BFEFundamentos de EventosA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-04', 
                                    :timetable_started_at => '2012-08-11' })
classe.id = 1044
classe.save!

classe = DisciplineClass.new({:school_class_id => 247, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 125, :discipline_id => 665).first.id,
                                    :code => '20121083301ACTAGC - GESTPESSOASGestão de PessoasA',
                                    :vancancies => '43', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-16', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 843
classe.save!

classe = DisciplineClass.new({:school_class_id => 248, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 125, :discipline_id => 659).first.id,
                                    :code => '20121083302ACTAGC - CONT EMPREContabilidade EmpresarialA',
                                    :vancancies => '27', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-16', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 853
classe.save!

classe = DisciplineClass.new({:school_class_id => 266, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 304).first.id,
                                    :code => '20121002301AEDIFICAÇÕES_MECSOLMecânica dos Solos _EdificaçõesB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 859
classe.save!

classe = DisciplineClass.new({:school_class_id => 266, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 307).first.id,
                                    :code => '20121002301AEDIFICAÇÕES_PORTINSTPortuguês InstrumentalA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 862
classe.save!

classe = DisciplineClass.new({:school_class_id => 252, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 59, :discipline_id => 753).first.id,
                                    :code => '20121041102ACONTROLE_GESTAMB_IIGestão AmbientalA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 865
classe.save!

classe = DisciplineClass.new({:school_class_id => 262, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 128, :discipline_id => 694).first.id,
                                    :code => '20121034301ARE2_IB_IInformática BásicaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 880
classe.save!

classe = DisciplineClass.new({:school_class_id => 262, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 128, :discipline_id => 696).first.id,
                                    :code => '20121034301ARE2_LEGAMB_ILegislação AmbientalA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 882
classe.save!

classe = DisciplineClass.new({:school_class_id => 262, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 128, :discipline_id => 701).first.id,
                                    :code => '20121034301ARE2_ERS_IÉtica e Responsabilidade SocialA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 883
classe.save!

classe = DisciplineClass.new({:school_class_id => 259, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 129, :discipline_id => 716).first.id,
                                    :code => '20121036301AMÓVIES_INFB_IInformática BásicaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 901
classe.save!

classe = DisciplineClass.new({:school_class_id => 260, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 129, :discipline_id => 724).first.id,
                                    :code => '20121036302AMÓVIES_MADDER_IIMadeiras e DerivadosA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 905
classe.save!

classe = DisciplineClass.new({:school_class_id => 261, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 129, :discipline_id => 736).first.id,
                                    :code => '20121036303AMÓVEIS_GESTAMB_IIIGestão AmbientalA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 910
classe.save!

classe = DisciplineClass.new({:school_class_id => 161, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 67, :discipline_id => 475).first.id,
                                    :code => '20112050301AATCATC20112Atendimento ao ClienteA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 519
classe.save!

classe = DisciplineClass.new({:school_class_id => 161, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 67, :discipline_id => 474).first.id,
                                    :code => '20112050301AATCOM20112ComunicaçãoA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 520
classe.save!

classe = DisciplineClass.new({:school_class_id => 161, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 67, :discipline_id => 476).first.id,
                                    :code => '20112050301AATCETC20112Ética A',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 521
classe.save!

classe = DisciplineClass.new({:school_class_id => 270, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 309).first.id,
                                    :code => '20121002101CEDIFICAÇÕES_RESMATResistência dos Materiais A',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 923
classe.save!

classe = DisciplineClass.new({:school_class_id => 165, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 64, :discipline_id => 472).first.id,
                                    :code => '20112042201AESPCOPAFIC ESPANHOLA',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-06', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 523
classe.save!

classe = DisciplineClass.new({:school_class_id => 271, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 339).first.id,
                                    :code => '20121002102APROJINSTELET022011Projeto de Instalação ElétricaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 938
classe.save!

classe = DisciplineClass.new({:school_class_id => 272, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 343).first.id,
                                    :code => '20121002102BESTCONCARM022011Estruturas de Concreto ArmadoA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 940
classe.save!

classe = DisciplineClass.new({:school_class_id => 272, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 345).first.id,
                                    :code => '20121002102BMATCONCIV022011Materiais de Construção CivilA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 942
classe.save!

classe = DisciplineClass.new({:school_class_id => 273, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 686).first.id,
                                    :code => '20121002103AEDIFICAÇÕES_INFA_IIInformática AplicadaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 948
classe.save!

classe = DisciplineClass.new({:school_class_id => 273, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 693).first.id,
                                    :code => '20121002103AEDIFICAÇÕES_GDR_IIIGestão de ResíduosA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 950
classe.save!

classe = DisciplineClass.new({:school_class_id => 273, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 688).first.id,
                                    :code => '20121002103AEDIFICAÇÕES_EMPR_IIIEmpreendedorismoA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 951
classe.save!

classe = DisciplineClass.new({:school_class_id => 273, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 691).first.id,
                                    :code => '20121002103AEDIFICAÇÕES_CTEC_IIIControle TecnológicoA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 952
classe.save!

classe = DisciplineClass.new({:school_class_id => 273, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 685).first.id,
                                    :code => '20121002103AEDIFICAÇÕES_PCO_IIIPlanejamento e Controle de ObrasA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 953
classe.save!

classe = DisciplineClass.new({:school_class_id => 273, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 690).first.id,
                                    :code => '20121002103AEDIFICAÇÕES_LEC_IIILicitações e ContratosA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 954
classe.save!

classe = DisciplineClass.new({:school_class_id => 166, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 438).first.id,
                                    :code => '20112032302AA.B.Alimentos e BebidasA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-12', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 531
classe.save!

classe = DisciplineClass.new({:school_class_id => 159, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 462).first.id,
                                    :code => '20112002103ADC IDança Clássica I B',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-22', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 579
classe.save!

classe = DisciplineClass.new({:school_class_id => 275, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 688).first.id,
                                    :code => '20121002303AEDIFICAÇÕES_EMPR_IIIEmpreendedorismoA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 961
classe.save!

classe = DisciplineClass.new({:school_class_id => 166, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 433).first.id,
                                    :code => '20112032302AE.P.EElaboração de Projetos em EventosA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-12', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 534
classe.save!

classe = DisciplineClass.new({:school_class_id => 166, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 449).first.id,
                                    :code => '20112032302AG.F.O.E.Gestão Financeira e Orçamentaria em EventosA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-12', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 537
classe.save!

classe = DisciplineClass.new({:school_class_id => 263, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 128, :discipline_id => 708).first.id,
                                    :code => '20121034302ARE2_MPRIMAS_IIMatérias PrimasA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 965
classe.save!

classe = DisciplineClass.new({:school_class_id => 253, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 130, :discipline_id => 744).first.id,
                                    :code => '20121041101ACONTROLE_ICA_IIntrodução ao Controle AmbientalA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 973
classe.save!

classe = DisciplineClass.new({:school_class_id => 254, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 130, :discipline_id => 744).first.id,
                                    :code => '20121041101BCONTROLE_ICA_IIntrodução ao Controle AmbientalA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 976
classe.save!

classe = DisciplineClass.new({:school_class_id => 254, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 130, :discipline_id => 743).first.id,
                                    :code => '20121041101BCONTROLE_HIDBAS_IHidraulica BásicaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 979
classe.save!

classe = DisciplineClass.new({:school_class_id => 259, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 129, :discipline_id => 720).first.id,
                                    :code => '20121036301AMÓVIES_MATAPL_IMatemática AplicadaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 982
classe.save!

classe = DisciplineClass.new({:school_class_id => 166, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 438).first.id,
                                    :code => '20112032302AA.B.Alimentos e BebidasB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-12', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 544
classe.save!

classe = DisciplineClass.new({:school_class_id => 166, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 447).first.id,
                                    :code => '20112032302AE.A.Espanhol AplicadoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-12', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 545
classe.save!

classe = DisciplineClass.new({:school_class_id => 164, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 65, :discipline_id => 473).first.id,
                                    :code => '20112049101AFRANCESCOPAFIC FRANCÊSA',
                                    :vancancies => '35', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-14', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 546
classe.save!

classe = DisciplineClass.new({:school_class_id => 260, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 129, :discipline_id => 727).first.id,
                                    :code => '20121036302AMÓVIES_DESTEC_IIDesenho TécnicoA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 983
classe.save!

classe = DisciplineClass.new({:school_class_id => 268, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 305).first.id,
                                    :code => '20121002101AEDIFICAÇÕES_DETECARQDesenho Técnico e ArquitetônicoA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 984
classe.save!

classe = DisciplineClass.new({:school_class_id => 275, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 687).first.id,
                                    :code => '20121002303AEDIFICAÇÕES_LEGP_IIILegislação ProfissionalA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 995
classe.save!

classe = DisciplineClass.new({:school_class_id => 249, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 125, :discipline_id => 658).first.id,
                                    :code => '20121083303ACTAGC - COM ELETRComércio EletrônicoA',
                                    :vancancies => '19', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 1000
classe.save!

classe = DisciplineClass.new({:school_class_id => 276, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 131, :discipline_id => 755).first.id,
                                    :code => '20121085201AMETOD CIENT NORM TECMetodologia Científica e Normas TécnicasA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-26', 
                                    :timetable_started_at => '2012-03-02' })
classe.id = 1004
classe.save!

classe = DisciplineClass.new({:school_class_id => 279, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 132, :discipline_id => 764).first.id,
                                    :code => '20121086104AINGLÊS BÁSICO 4Inglês Básico 4A',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-29', 
                                    :timetable_started_at => '2012-02-28' })
classe.id = 1017
classe.save!

classe = DisciplineClass.new({:school_class_id => 166, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 446).first.id,
                                    :code => '20112032302AMA.E.Marketing em EventosA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-14', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 551
classe.save!

classe = DisciplineClass.new({:school_class_id => 166, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 451).first.id,
                                    :code => '20112032302AEM.E.Empreendedoriso em EventosA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-14', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 552
classe.save!

classe = DisciplineClass.new({:school_class_id => 289, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 287).first.id,
                                    :code => '20121032301AOEEOrganização de Empresas de EventosA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-04', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1036
classe.save!

classe = DisciplineClass.new({:school_class_id => 290, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 287).first.id,
                                    :code => '20121032301BOEEOrganização de Empresas de EventosA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-04', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1045
classe.save!

classe = DisciplineClass.new({:school_class_id => 290, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 99).first.id,
                                    :code => '20121032301BETICARESPÉtica e Responsabilidade SocialB',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-04', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1038
classe.save!

classe = DisciplineClass.new({:school_class_id => 291, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 435).first.id,
                                    :code => '20121032102AP.O.L.Planejamento, Organização e LogísticaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1048
classe.save!

classe = DisciplineClass.new({:school_class_id => 291, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 433).first.id,
                                    :code => '20121032102AE.P.EElaboração de Projetos em EventosA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1051
classe.save!

classe = DisciplineClass.new({:school_class_id => 292, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 271).first.id,
                                    :code => '20121031301AATENDPUBQualidade no Atendimento ao PúblicoA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1056
classe.save!

classe = DisciplineClass.new({:school_class_id => 292, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 268).first.id,
                                    :code => '20121031301APORTINSTPortuguês InstrumentalA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1061
classe.save!

classe = DisciplineClass.new({:school_class_id => 292, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 100).first.id,
                                    :code => '20121031301AINFORMAPLInformática AplicadaA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1062
classe.save!

classe = DisciplineClass.new({:school_class_id => 293, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 457).first.id,
                                    :code => '20121031301BM.A.Matemática aplicadaA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1068
classe.save!

classe = DisciplineClass.new({:school_class_id => 286, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 134, :discipline_id => 766).first.id,
                                    :code => '20112088102APORTUGUES TESTEPortugues TESTEA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '2011-07-27' })
classe.id = 1027
classe.save!

classe = DisciplineClass.new({:school_class_id => 277, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 36).first.id,
                                    :code => '20121002201A8100102Práticas Corporais IA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-08-11' })
classe.id = 1010
classe.save!

classe = DisciplineClass.new({:school_class_id => 289, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 114).first.id,
                                    :code => '20121032301AACEAspectos Culturais em EventosA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-04', 
                                    :timetable_started_at => '2012-08-01' })
classe.id = 1035
classe.save!

classe = DisciplineClass.new({:school_class_id => 245, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 122, :discipline_id => 643).first.id,
                                    :code => '20121081101AFRANCÊSBRAFIC Francês para iniciantes - Turma AA',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-02-14', 
                                    :timetable_started_at => '2012-03-14' })
classe.id = 835
classe.save!

classe = DisciplineClass.new({:school_class_id => 289, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 290).first.id,
                                    :code => '20121032301APAPortuguês AplicadoB',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-04', 
                                    :timetable_started_at => '2012-08-11' })
classe.id = 1030
classe.save!

classe = DisciplineClass.new({:school_class_id => 277, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 39).first.id,
                                    :code => '20121002201A8100105Anatomia HumanaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-08-11' })
classe.id = 1011
classe.save!

classe = DisciplineClass.new({:school_class_id => 156, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 489).first.id,
                                    :code => '20112032101AE.R.S 20Ética e Responsabilidade Social 20A',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-21', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 577
classe.save!

classe = DisciplineClass.new({:school_class_id => 156, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 488).first.id,
                                    :code => '20112032101AI.B.40Informática Básica 40B',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-21', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 576
classe.save!

classe = DisciplineClass.new({:school_class_id => 210, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 315).first.id,
                                    :code => '20112036301AMÓVEIS_MATEMÁTICAMatemática AplicadaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 774
classe.save!

classe = DisciplineClass.new({:school_class_id => 133, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 100).first.id,
                                    :code => '20112007301AINFORMAPLInformática AplicadaB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-14', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 720
classe.save!

classe = DisciplineClass.new({:school_class_id => 210, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 316).first.id,
                                    :code => '20112036301AMÓVEIS_GESTÃOGestão de Recursos de MateriaisA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 775
classe.save!

classe = DisciplineClass.new({:school_class_id => 211, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 352).first.id,
                                    :code => '20112036302AMÓVEIS_PROJETOProjeto e Design de MóveisA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 783
classe.save!

classe = DisciplineClass.new({:school_class_id => 198, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 68, :discipline_id => 477).first.id,
                                    :code => '20112044301ACRF/FIC PADEIRO CRFCRF - Padeiro A',
                                    :vancancies => '25', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-14', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 788
classe.save!

classe = DisciplineClass.new({:school_class_id => 166, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 435).first.id,
                                    :code => '20112032302AP.O.L.Planejamento, Organização e LogísticaB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-12', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 533
classe.save!

classe = DisciplineClass.new({:school_class_id => 214, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 102, :discipline_id => 574).first.id,
                                    :code => '20111046301ACSSB FIC INTCONTIntrodução à ContabilidadeB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-12-06', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 806
classe.save!

classe = DisciplineClass.new({:school_class_id => 214, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 102, :discipline_id => 573).first.id,
                                    :code => '20111046301ACSSB FIC CBADMConceitos Básicos de AdministraçãoB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-12-06', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 801
classe.save!

classe = DisciplineClass.new({:school_class_id => 217, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 105, :discipline_id => 583).first.id,
                                    :code => '20111061301ACSSB FIC E.C.M.A.Ética, Cidadania e Meio AmbienteB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-12-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 798
classe.save!

classe = DisciplineClass.new({:school_class_id => 217, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 105, :discipline_id => 581).first.id,
                                    :code => '20111061301ACSSB FIC GEST ESCGestão EscolarB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-12-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 799
classe.save!

classe = DisciplineClass.new({:school_class_id => 246, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 123, :discipline_id => 644).first.id,
                                    :code => '20121082101AFRANCÊSBFIC Francês para iniciantes - Turma BA',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-02-14', 
                                    :timetable_started_at => '2012-01-17' })
classe.id = 836
classe.save!

classe = DisciplineClass.new({:school_class_id => 148, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 36).first.id,
                                    :code => '20112002101A8100102Práticas Corporais IB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-26', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 595
classe.save!

classe = DisciplineClass.new({:school_class_id => 148, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 37).first.id,
                                    :code => '20112002101A8100103Leitura e Produção de Texto IB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-26', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 594
classe.save!

classe = DisciplineClass.new({:school_class_id => 171, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 285).first.id,
                                    :code => '20112002202AIEHAIntrodução à Estética e História da ArteB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-26', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 591
classe.save!

classe = DisciplineClass.new({:school_class_id => 171, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 284).first.id,
                                    :code => '20112002202API IIPráticas Integradoras IIB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-26', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 593
classe.save!

classe = DisciplineClass.new({:school_class_id => 290, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 111).first.id,
                                    :code => '20121032301BRIRelações InterpessoaisA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-04', 
                                    :timetable_started_at => '2012-08-01' })
classe.id = 1039
classe.save!

classe = DisciplineClass.new({:school_class_id => 149, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 459).first.id,
                                    :code => '20112031301AN.D.A.Noções de Direito AdministrativoB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-20', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 574
classe.save!

classe = DisciplineClass.new({:school_class_id => 247, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 125, :discipline_id => 664).first.id,
                                    :code => '20121083301ACTAGC - ETICRESPSOCIÉtica e Responsabilidade SocialA',
                                    :vancancies => '43', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-16', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 844
classe.save!

classe = DisciplineClass.new({:school_class_id => 251, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 127, :discipline_id => 684).first.id,
                                    :code => '20121043101ATESTEtesteA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-16', 
                                    :timetable_started_at => '2012-03-06' })
classe.id = 855
classe.save!

classe = DisciplineClass.new({:school_class_id => 266, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 305).first.id,
                                    :code => '20121002301AEDIFICAÇÕES_DETECARQDesenho Técnico e ArquitetônicoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 860
classe.save!

classe = DisciplineClass.new({:school_class_id => 266, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 309).first.id,
                                    :code => '20121002301AEDIFICAÇÕES_RESMATResistência dos Materiais A',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 864
classe.save!

classe = DisciplineClass.new({:school_class_id => 254, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 130, :discipline_id => 739).first.id,
                                    :code => '20121041101BCONTROLE_POTI_IPortuguês InstrumentalA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 877
classe.save!

classe = DisciplineClass.new({:school_class_id => 263, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 128, :discipline_id => 705).first.id,
                                    :code => '20121034302ARE2_LOG_IILogísticaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 889
classe.save!

classe = DisciplineClass.new({:school_class_id => 263, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 128, :discipline_id => 704).first.id,
                                    :code => '20121034302ARE2_GP_IIGestão de PessoasA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 890
classe.save!

classe = DisciplineClass.new({:school_class_id => 264, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 714).first.id,
                                    :code => '20121034303ARE1_TECRESPAPEL_IIITecnologias de Resíduos de PapelA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 893
classe.save!

classe = DisciplineClass.new({:school_class_id => 259, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 129, :discipline_id => 719).first.id,
                                    :code => '20121036301AMÓVIES_PROCADM_IProcessos AdministrativosA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 898
classe.save!

classe = DisciplineClass.new({:school_class_id => 259, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 129, :discipline_id => 722).first.id,
                                    :code => '20121036301AMÓVIES_TPM_ITecnologia e Propriedade dos MateriaisA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 902
classe.save!

classe = DisciplineClass.new({:school_class_id => 260, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 129, :discipline_id => 728).first.id,
                                    :code => '20121036302AMÓVIES_ARTEMOV_IIArte e MóveisA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 906
classe.save!

classe = DisciplineClass.new({:school_class_id => 261, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 129, :discipline_id => 730).first.id,
                                    :code => '20121036303AMÓVEIS_MME_IIIMáquinas Manuais e EstacionáriasA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 911
classe.save!

classe = DisciplineClass.new({:school_class_id => 268, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 303).first.id,
                                    :code => '20121002101AEDIFICAÇÕES_INFOBASInformática Básica - EdificaçõesA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 918
classe.save!

classe = DisciplineClass.new({:school_class_id => 268, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 308).first.id,
                                    :code => '20121002101AEDIFICAÇÕES_PROCCONSProcessos ConstrutivosA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 921
classe.save!

classe = DisciplineClass.new({:school_class_id => 270, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 303).first.id,
                                    :code => '20121002101CEDIFICAÇÕES_INFOBASInformática Básica - EdificaçõesA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 925
classe.save!

classe = DisciplineClass.new({:school_class_id => 271, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 344).first.id,
                                    :code => '20121002102AESTMETMAD022011Estruturas Metálicas e de MadeiraA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 935
classe.save!

classe = DisciplineClass.new({:school_class_id => 271, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 341).first.id,
                                    :code => '20121002102AFUND022011FundaçõesA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 939
classe.save!

classe = DisciplineClass.new({:school_class_id => 272, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 340).first.id,
                                    :code => '20121002102BPROJINSTHID022011Projeto de Instalação HidráulicaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 941
classe.save!

classe = DisciplineClass.new({:school_class_id => 272, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 341).first.id,
                                    :code => '20121002102BFUND022011FundaçõesA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 946
classe.save!

classe = DisciplineClass.new({:school_class_id => 275, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 689).first.id,
                                    :code => '20121002303AEDIFICAÇÕES_ODO_IIIOrçamento de ObrasA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 959
classe.save!

classe = DisciplineClass.new({:school_class_id => 275, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 690).first.id,
                                    :code => '20121002303AEDIFICAÇÕES_LEC_IIILicitações e ContratosA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 960
classe.save!

classe = DisciplineClass.new({:school_class_id => 262, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 128, :discipline_id => 697).first.id,
                                    :code => '20121034301ARE2_EDAMB_IEducação AmbientalA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 964
classe.save!

classe = DisciplineClass.new({:school_class_id => 253, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 130, :discipline_id => 743).first.id,
                                    :code => '20121041101ACONTROLE_HIDBAS_IHidraulica BásicaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 974
classe.save!

classe = DisciplineClass.new({:school_class_id => 252, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 59, :discipline_id => 748).first.id,
                                    :code => '20121041102ACONTROLE_HIDBAS_IIHidraulica BásicaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 981
classe.save!

classe = DisciplineClass.new({:school_class_id => 268, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 307).first.id,
                                    :code => '20121002101AEDIFICAÇÕES_PORTINSTPortuguês InstrumentalA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 985
classe.save!

classe = DisciplineClass.new({:school_class_id => 270, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 305).first.id,
                                    :code => '20121002101CEDIFICAÇÕES_DETECARQDesenho Técnico e ArquitetônicoA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 988
classe.save!

classe = DisciplineClass.new({:school_class_id => 269, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 307).first.id,
                                    :code => '20121002101BEDIFICAÇÕES_PORTINSTPortuguês InstrumentalA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 991
classe.save!

classe = DisciplineClass.new({:school_class_id => 249, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 125, :discipline_id => 678).first.id,
                                    :code => '20121083303ACTAGC - TECVENDASTécnicas de VendasA',
                                    :vancancies => '19', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 999
classe.save!

classe = DisciplineClass.new({:school_class_id => 249, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 125, :discipline_id => 663).first.id,
                                    :code => '20121083303ACTAGC - ESTAPLICVENDEstatística Aplicada às VendasA',
                                    :vancancies => '19', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 1001
classe.save!

classe = DisciplineClass.new({:school_class_id => 276, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 131, :discipline_id => 756).first.id,
                                    :code => '20121085201AMETOD QUANT APL GPUBMétodos Quantitativos aplicados à Gestão PúblicaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-26', 
                                    :timetable_started_at => '2012-03-02' })
classe.id = 1005
classe.save!

classe = DisciplineClass.new({:school_class_id => 276, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 131, :discipline_id => 758).first.id,
                                    :code => '20121085201ALICITAC CONTR CONVENLicitação, Contratos e ConvêniosA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-26', 
                                    :timetable_started_at => '2012-03-02' })
classe.id = 1007
classe.save!

classe = DisciplineClass.new({:school_class_id => 282, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 133, :discipline_id => 765).first.id,
                                    :code => '20121087101AESPANHOL PRA COPAFIC EspanholB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-02', 
                                    :timetable_started_at => '2012-08-11' })
classe.id = 1018
classe.save!

classe = DisciplineClass.new({:school_class_id => 287, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 135, :discipline_id => 770).first.id,
                                    :code => '20121089101AFRANCÊS COPAFIC FrancêsA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-03', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1028
classe.save!

classe = DisciplineClass.new({:school_class_id => 289, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 286).first.id,
                                    :code => '20121032301AINGAPLInglês AplicadoA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-04', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1031
classe.save!

classe = DisciplineClass.new({:school_class_id => 289, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 289).first.id,
                                    :code => '20121032301AFEFundamentos de EventosA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-04', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1037
classe.save!

classe = DisciplineClass.new({:school_class_id => 290, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 288).first.id,
                                    :code => '20121032301BSESustentabilidade em EventosA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-04', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1041
classe.save!

classe = DisciplineClass.new({:school_class_id => 290, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 286).first.id,
                                    :code => '20121032301BINGAPLInglês AplicadoA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-04', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1042
classe.save!

classe = DisciplineClass.new({:school_class_id => 289, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 113).first.id,
                                    :code => '20121032301AINFOBÁSICAInformática básicaA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-04', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1046
classe.save!

classe = DisciplineClass.new({:school_class_id => 291, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 449).first.id,
                                    :code => '20121032102AG.F.O.E.Gestão Financeira e Orçamentaria em EventosA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-08-11' })
classe.id = 1053
classe.save!

classe = DisciplineClass.new({:school_class_id => 291, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 451).first.id,
                                    :code => '20121032102AEM.E.Empreendedoriso em EventosA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1049
classe.save!

classe = DisciplineClass.new({:school_class_id => 291, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 446).first.id,
                                    :code => '20121032102AMA.E.Marketing em EventosA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1055
classe.save!

classe = DisciplineClass.new({:school_class_id => 292, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 272).first.id,
                                    :code => '20121031301AECMAÉtica, Cidadania e Meio AmbienteA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1057
classe.save!

classe = DisciplineClass.new({:school_class_id => 293, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 269).first.id,
                                    :code => '20121031301BINTROCONTIntrodução à ContabilidadeA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-08-11' })
classe.id = 1064
classe.save!

classe = DisciplineClass.new({:school_class_id => 292, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 459).first.id,
                                    :code => '20121031301AN.D.A.Noções de Direito AdministrativoA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1060
classe.save!

classe = DisciplineClass.new({:school_class_id => 292, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 455).first.id,
                                    :code => '20121031301AINTRODADMIntrodução à AdministraçãoA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1063
classe.save!

classe = DisciplineClass.new({:school_class_id => 293, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 272).first.id,
                                    :code => '20121031301BECMAÉtica, Cidadania e Meio AmbienteA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1065
classe.save!

classe = DisciplineClass.new({:school_class_id => 293, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 271).first.id,
                                    :code => '20121031301BATENDPUBQualidade no Atendimento ao PúblicoA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1066
classe.save!

classe = DisciplineClass.new({:school_class_id => 286, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 134, :discipline_id => 767).first.id,
                                    :code => '20112088102ABIOLOGIA TESTEBiologia TESTEA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '2011-07-27' })
classe.id = 1024
classe.save!

classe = DisciplineClass.new({:school_class_id => 296, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 136, :discipline_id => 779).first.id,
                                    :code => '20121090201ATURCOPATurismo na CopaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-10', 
                                    :timetable_started_at => '2012-06-09' })
classe.id = 1080
classe.save!

classe = DisciplineClass.new({:school_class_id => 149, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 100).first.id,
                                    :code => '20112031301AINFORMAPLInformática AplicadaB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-12', 
                                    :timetable_started_at => '2012-03-15' })
classe.id = 532
classe.save!

classe = DisciplineClass.new({:school_class_id => 289, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 111).first.id,
                                    :code => '20121032301ARIRelações InterpessoaisA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-04', 
                                    :timetable_started_at => '2012-08-01' })
classe.id = 1033
classe.save!

classe = DisciplineClass.new({:school_class_id => 290, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 290).first.id,
                                    :code => '20121032301BPAPortuguês AplicadoB',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-04', 
                                    :timetable_started_at => '2012-08-11' })
classe.id = 1040
classe.save!

classe = DisciplineClass.new({:school_class_id => 292, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 269).first.id,
                                    :code => '20121031301AINTROCONTIntrodução à ContabilidadeB',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-08-11' })
classe.id = 1058
classe.save!

classe = DisciplineClass.new({:school_class_id => 172, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 77, :discipline_id => 90).first.id,
                                    :code => '20112005201AIRCIntrodução a Redes de ComputadoresA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-28', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 598
classe.save!

classe = DisciplineClass.new({:school_class_id => 210, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 314).first.id,
                                    :code => '20112036301AMÓVEIS_PROCESSOSProcessos AdministrativosB',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 776
classe.save!

classe = DisciplineClass.new({:school_class_id => 210, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 318).first.id,
                                    :code => '20112036301AMÓVEIS_ÉTICAÉtica e Responsabilidade SocialA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 780
classe.save!

classe = DisciplineClass.new({:school_class_id => 211, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 350).first.id,
                                    :code => '20112036302AMÓVEIS_DESENHODesenho TécnicoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 785
classe.save!

classe = DisciplineClass.new({:school_class_id => 49, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 39).first.id,
                                    :code => '201118201A8100105Anatomia HumanaB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-14', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 789
classe.save!

classe = DisciplineClass.new({:school_class_id => 49, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 284).first.id,
                                    :code => '201118201API IIPráticas Integradoras IIA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-14', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 790
classe.save!

classe = DisciplineClass.new({:school_class_id => 133, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 98).first.id,
                                    :code => '20112007301APORTINSPortuguês Instrumental B',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-14', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 722
classe.save!

classe = DisciplineClass.new({:school_class_id => 243, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 120, :discipline_id => 641).first.id,
                                    :code => '20121079301AESPANHOLBRAEspanholA',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-02-14', 
                                    :timetable_started_at => '2012-01-17' })
classe.id = 837
classe.save!

classe = DisciplineClass.new({:school_class_id => 173, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 79, :discipline_id => 495).first.id,
                                    :code => '20112054101ATMTECNOLOGIA DOS MATERIAISA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-29', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 609
classe.save!

classe = DisciplineClass.new({:school_class_id => 172, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 77, :discipline_id => 88).first.id,
                                    :code => '20112005201AIPDIntrodução a Processamento de DadosA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-03', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 610
classe.save!

classe = DisciplineClass.new({:school_class_id => 172, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 77, :discipline_id => 95).first.id,
                                    :code => '20112005201APORTPortuguês InstrumentalA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-03', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 611
classe.save!

classe = DisciplineClass.new({:school_class_id => 115, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 61, :discipline_id => 407).first.id,
                                    :code => '2011266101ADTEC201102Desenho TécnicoB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-03', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 612
classe.save!

classe = DisciplineClass.new({:school_class_id => 247, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 125, :discipline_id => 667).first.id,
                                    :code => '20121083301ACTAGC - INFOATIVCOMEInformática Aplicada às Atividades ComerciaisA',
                                    :vancancies => '43', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-16', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 845
classe.save!

classe = DisciplineClass.new({:school_class_id => 177, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 85, :discipline_id => 517).first.id,
                                    :code => '20112037101AFIC FERFERRAMENTARIAA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 667
classe.save!

classe = DisciplineClass.new({:school_class_id => 214, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 102, :discipline_id => 576).first.id,
                                    :code => '20111046301ACSSB FIC MAT BASICAMatemática BásicaB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-12-06', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 791
classe.save!

classe = DisciplineClass.new({:school_class_id => 214, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 102, :discipline_id => 577).first.id,
                                    :code => '20111046301ACSSB FIC INFO BASICAInformática BásicaB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-12-06', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 792
classe.save!

classe = DisciplineClass.new({:school_class_id => 266, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 306).first.id,
                                    :code => '20121002301AEDIFICAÇÕES_MATAPLICMatemática AplicadaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 861
classe.save!

classe = DisciplineClass.new({:school_class_id => 148, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 41).first.id,
                                    :code => '20112002101A8100107Práticas Integradoras IB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-29', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 600
classe.save!

classe = DisciplineClass.new({:school_class_id => 252, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 59, :discipline_id => 747).first.id,
                                    :code => '20121041102ACONTROLE_ESTAPLI_IIEstatística AplicadaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 866
classe.save!

classe = DisciplineClass.new({:school_class_id => 253, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 130, :discipline_id => 739).first.id,
                                    :code => '20121041101ACONTROLE_POTI_IPortuguês InstrumentalA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 872
classe.save!

classe = DisciplineClass.new({:school_class_id => 148, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 39).first.id,
                                    :code => '20112002101A8100105Anatomia HumanaB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-26', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 597
classe.save!

classe = DisciplineClass.new({:school_class_id => 148, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 38).first.id,
                                    :code => '20112002101A8100104Fundamentos da Música IB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-26', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 596
classe.save!

classe = DisciplineClass.new({:school_class_id => 153, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 258).first.id,
                                    :code => '20112030201AP.O.TPortuguês Instrumental B',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 641
classe.save!

classe = DisciplineClass.new({:school_class_id => 254, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 130, :discipline_id => 740).first.id,
                                    :code => '20121041101BCONTROLE_ECOLOGIA_IEcologiaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 874
classe.save!

classe = DisciplineClass.new({:school_class_id => 262, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 128, :discipline_id => 699).first.id,
                                    :code => '20121034301ARE2_PIG_IPrograma Interno de GerenciamentoA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 881
classe.save!

classe = DisciplineClass.new({:school_class_id => 263, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 128, :discipline_id => 707).first.id,
                                    :code => '20121034302ARE2_TRP_IITecnologias de Resíduos de PapelA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 887
classe.save!

classe = DisciplineClass.new({:school_class_id => 177, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 85, :discipline_id => 518).first.id,
                                    :code => '20112037101AFIC EBELETRICIDADE BÁSICAA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-03', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 626
classe.save!

classe = DisciplineClass.new({:school_class_id => 259, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 129, :discipline_id => 721).first.id,
                                    :code => '20121036301AMÓVIES_METROLOGIA_IMetrologiaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 903
classe.save!

classe = DisciplineClass.new({:school_class_id => 260, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 129, :discipline_id => 726).first.id,
                                    :code => '20121036302AMÓVIES_METROLOGIA_IIMetrologiaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 907
classe.save!

classe = DisciplineClass.new({:school_class_id => 179, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 87, :discipline_id => 420).first.id,
                                    :code => '20112012302AMATFINAN TCMatemática FinanceiraA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 637
classe.save!

classe = DisciplineClass.new({:school_class_id => 179, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 87, :discipline_id => 423).first.id,
                                    :code => '20112012302AGESTAOQ TCGestão de QualidadeA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 638
classe.save!

classe = DisciplineClass.new({:school_class_id => 179, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 87, :discipline_id => 424).first.id,
                                    :code => '20112012302ACONTEMP TCContabilidade EmpresarialA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 639
classe.save!

classe = DisciplineClass.new({:school_class_id => 179, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 87, :discipline_id => 425).first.id,
                                    :code => '20112012302AINGLESTEC TCInglês TécnicoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 640
classe.save!

classe = DisciplineClass.new({:school_class_id => 260, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 129, :discipline_id => 737).first.id,
                                    :code => '20121036302AMÓVEIS_HST_IIIHigiene e segurança do trabalhoA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 909
classe.save!

classe = DisciplineClass.new({:school_class_id => 261, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 129, :discipline_id => 735).first.id,
                                    :code => '20121036303AMÓVEIS_TAM_IIITécnicas de acabamento em móveisA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 912
classe.save!

classe = DisciplineClass.new({:school_class_id => 261, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 129, :discipline_id => 731).first.id,
                                    :code => '20121036303AMÓVEIS_PPM_IIIProcesso Produtivo MoveleiroA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 913
classe.save!

classe = DisciplineClass.new({:school_class_id => 261, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 129, :discipline_id => 732).first.id,
                                    :code => '20121036303AMÓVEIS_TECMOV_IIITecnologia MoveleiraA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 914
classe.save!

classe = DisciplineClass.new({:school_class_id => 268, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 304).first.id,
                                    :code => '20121002101AEDIFICAÇÕES_MECSOLMecânica dos Solos _EdificaçõesA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 917
classe.save!

classe = DisciplineClass.new({:school_class_id => 179, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 87, :discipline_id => 419).first.id,
                                    :code => '20112012302ALOGISTICA TCLogísticaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 647
classe.save!

classe = DisciplineClass.new({:school_class_id => 179, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 87, :discipline_id => 418).first.id,
                                    :code => '20112012302ARECMATPAT TCRecursos Materiais e PatrimoniaisB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 636
classe.save!

classe = DisciplineClass.new({:school_class_id => 179, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 87, :discipline_id => 422).first.id,
                                    :code => '20112012302APROCOMPRAS TCProcesso de ComprasA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 648
classe.save!

classe = DisciplineClass.new({:school_class_id => 269, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 305).first.id,
                                    :code => '20121002101BEDIFICAÇÕES_DETECARQDesenho Técnico e ArquitetônicoA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 926
classe.save!

classe = DisciplineClass.new({:school_class_id => 272, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 344).first.id,
                                    :code => '20121002102BESTMETMAD022011Estruturas Metálicas e de MadeiraA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 944
classe.save!

classe = DisciplineClass.new({:school_class_id => 272, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 339).first.id,
                                    :code => '20121002102BPROJINSTELET022011Projeto de Instalação ElétricaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 945
classe.save!

classe = DisciplineClass.new({:school_class_id => 273, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 689).first.id,
                                    :code => '20121002103AEDIFICAÇÕES_ODO_IIIOrçamento de ObrasA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 949
classe.save!

classe = DisciplineClass.new({:school_class_id => 275, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 691).first.id,
                                    :code => '20121002303AEDIFICAÇÕES_CTEC_IIIControle TecnológicoA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 955
classe.save!

classe = DisciplineClass.new({:school_class_id => 275, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 685).first.id,
                                    :code => '20121002303AEDIFICAÇÕES_PCO_IIIPlanejamento e Controle de ObrasA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 956
classe.save!

classe = DisciplineClass.new({:school_class_id => 177, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 85, :discipline_id => 510).first.id,
                                    :code => '20112037101AFIC EMElementos de MáquinasA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 661
classe.save!

classe = DisciplineClass.new({:school_class_id => 177, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 85, :discipline_id => 512).first.id,
                                    :code => '20112037101AFIC LOLÓGICAA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 662
classe.save!

classe = DisciplineClass.new({:school_class_id => 177, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 85, :discipline_id => 513).first.id,
                                    :code => '20112037101AFIC LITLeitura e Interpretação de TextosA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 663
classe.save!

classe = DisciplineClass.new({:school_class_id => 177, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 85, :discipline_id => 514).first.id,
                                    :code => '20112037101AFIC PMPráticas de ManutençãoA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 664
classe.save!

classe = DisciplineClass.new({:school_class_id => 177, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 85, :discipline_id => 515).first.id,
                                    :code => '20112037101AFIC HSTHIGIENE E SEGURANÇA DO TRABALHOA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 665
classe.save!

classe = DisciplineClass.new({:school_class_id => 177, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 85, :discipline_id => 516).first.id,
                                    :code => '20112037101AFIC DTDESENHO TÉCNICOA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 666
classe.save!

classe = DisciplineClass.new({:school_class_id => 184, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 85, :discipline_id => 511).first.id,
                                    :code => '20112037201AFIC MAMatemática AplicadaA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-06', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 679
classe.save!

classe = DisciplineClass.new({:school_class_id => 184, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 85, :discipline_id => 512).first.id,
                                    :code => '20112037201AFIC LOLÓGICAA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-06', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 680
classe.save!

classe = DisciplineClass.new({:school_class_id => 184, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 85, :discipline_id => 514).first.id,
                                    :code => '20112037201AFIC PMPráticas de ManutençãoA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-06', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 681
classe.save!

classe = DisciplineClass.new({:school_class_id => 184, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 85, :discipline_id => 517).first.id,
                                    :code => '20112037201AFIC FERFERRAMENTARIAA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-06', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 682
classe.save!

classe = DisciplineClass.new({:school_class_id => 184, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 85, :discipline_id => 510).first.id,
                                    :code => '20112037201AFIC EMElementos de MáquinasA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-06', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 683
classe.save!

classe = DisciplineClass.new({:school_class_id => 184, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 85, :discipline_id => 513).first.id,
                                    :code => '20112037201AFIC LITLeitura e Interpretação de TextosA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-06', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 684
classe.save!

classe = DisciplineClass.new({:school_class_id => 184, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 85, :discipline_id => 516).first.id,
                                    :code => '20112037201AFIC DTDESENHO TÉCNICOA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-06', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 685
classe.save!

classe = DisciplineClass.new({:school_class_id => 178, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 87, :discipline_id => 503).first.id,
                                    :code => '20112012303ACOMÉRCIO-AMAdministração MercadológicaB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-04', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 630
classe.save!

classe = DisciplineClass.new({:school_class_id => 178, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 87, :discipline_id => 506).first.id,
                                    :code => '20112012303ACOMÉRCIO-CEComércio EletrônicoB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-04', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 633
classe.save!

classe = DisciplineClass.new({:school_class_id => 178, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 87, :discipline_id => 502).first.id,
                                    :code => '20112012303ACOMÉRCIO-CFPCustos e Formação de PreçosB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-04', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 629
classe.save!

classe = DisciplineClass.new({:school_class_id => 178, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 87, :discipline_id => 507).first.id,
                                    :code => '20112012303ACOMÉRCIO-EAVEstatística Aplicada às VendasB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-04', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 634
classe.save!

classe = DisciplineClass.new({:school_class_id => 178, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 87, :discipline_id => 508).first.id,
                                    :code => '20112012303ACOMÉRCIO-ETEspanhol TécnicoB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-04', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 628
classe.save!

classe = DisciplineClass.new({:school_class_id => 178, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 87, :discipline_id => 504).first.id,
                                    :code => '20112012303ACOMÉRCIO-PVProcesso de VendasB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-04', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 631
classe.save!

classe = DisciplineClass.new({:school_class_id => 178, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 87, :discipline_id => 505).first.id,
                                    :code => '20112012303ACOMÉRCIO-TVTécnicas de VendasB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-04', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 632
classe.save!

classe = DisciplineClass.new({:school_class_id => 185, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 89, :discipline_id => 529).first.id,
                                    :code => '20112005302AMOD. II ADM SOADMINISTRAÇÃO DE SISTEMAS OPERACIONAISA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-07', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 686
classe.save!

classe = DisciplineClass.new({:school_class_id => 189, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 92, :discipline_id => 540).first.id,
                                    :code => '20112005301AMOD. III COM REDESCOMUNICAÇÃO EM REDES DE COMPUTADORESA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 691
classe.save!

classe = DisciplineClass.new({:school_class_id => 189, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 92, :discipline_id => 544).first.id,
                                    :code => '20112005301AMOD III CONF SER REDCONFIGURAÇÃO DE SISTEMAS DE REDESA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 692
classe.save!

classe = DisciplineClass.new({:school_class_id => 189, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 92, :discipline_id => 543).first.id,
                                    :code => '20112005301AMOD III  SIST. OP. RSISTEMAS OPERACIONAIS APLICADOS A REDEA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 693
classe.save!

classe = DisciplineClass.new({:school_class_id => 189, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 92, :discipline_id => 540).first.id,
                                    :code => '20112005301AMOD. III COM REDESCOMUNICAÇÃO EM REDES DE COMPUTADORESB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 694
classe.save!

classe = DisciplineClass.new({:school_class_id => 189, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 92, :discipline_id => 544).first.id,
                                    :code => '20112005301AMOD III CONF SER REDCONFIGURAÇÃO DE SISTEMAS DE REDESB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 695
classe.save!

classe = DisciplineClass.new({:school_class_id => 182, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 87, :discipline_id => 118).first.id,
                                    :code => '20112012301APLANORGPlanejamento OrganizacionalB',
                                    :vancancies => '41', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 669
classe.save!

classe = DisciplineClass.new({:school_class_id => 189, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 92, :discipline_id => 542).first.id,
                                    :code => '20112005301A MOD III SEG. DADOSSEGURANÇA DE DADOSA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 696
classe.save!

classe = DisciplineClass.new({:school_class_id => 131, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 41, :discipline_id => 229).first.id,
                                    :code => '20112029301BFUMTFundamentos do Mundo do TrabalhoA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-13', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 697
classe.save!

classe = DisciplineClass.new({:school_class_id => 190, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 93, :discipline_id => 549).first.id,
                                    :code => '20112057201AG.TES. SIST. F. NAC.Sistema Financeiro NacionalA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-13', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 698
classe.save!

classe = DisciplineClass.new({:school_class_id => 190, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 93, :discipline_id => 551).first.id,
                                    :code => '20112057201AG.TES. MAT. FINANC.Matemática FinanceiraA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-13', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 700
classe.save!

classe = DisciplineClass.new({:school_class_id => 131, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 41, :discipline_id => 255).first.id,
                                    :code => '20112029301BERSCÉtica e Responsabilidade SocialA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-13', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 701
classe.save!

classe = DisciplineClass.new({:school_class_id => 191, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 94, :discipline_id => 553).first.id,
                                    :code => '20112058201AG.COMERCIAL EST.C.VEEstratégias de Compra e VendaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-13', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 702
classe.save!

classe = DisciplineClass.new({:school_class_id => 191, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 94, :discipline_id => 552).first.id,
                                    :code => '20112058201AG.COMERCIAL AT. CLIEAtendimento ao ClienteA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-13', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 704
classe.save!

classe = DisciplineClass.new({:school_class_id => 191, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 94, :discipline_id => 557).first.id,
                                    :code => '20112058201AG.COMERCIAL INFOInformáticaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-13', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 705
classe.save!

classe = DisciplineClass.new({:school_class_id => 191, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 94, :discipline_id => 555).first.id,
                                    :code => '20112058201AG.COMERCIAL G.VENDASGestão de VendasA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-13', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 706
classe.save!

classe = DisciplineClass.new({:school_class_id => 130, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 41, :discipline_id => 375).first.id,
                                    :code => '20112029301AADEMCOOP-COOPERATIAdministração de Empresas CooperativasB',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-14', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 708
classe.save!

classe = DisciplineClass.new({:school_class_id => 210, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 312).first.id,
                                    :code => '20112036301AMÓVEIS_PORTUGUÊSPortuguês InstrumentalA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 777
classe.save!

classe = DisciplineClass.new({:school_class_id => 147, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 280).first.id,
                                    :code => '20111002201ACINCinesiologia     B',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-31', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 503
classe.save!

classe = DisciplineClass.new({:school_class_id => 51, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 234).first.id,
                                    :code => '2011116302ASSTRSaude e Segurança do TrabalhoB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 172
classe.save!

classe = DisciplineClass.new({:school_class_id => 130, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 41, :discipline_id => 376).first.id,
                                    :code => '20112029301ALEGSCOOP-COOPERATILegislação CooperativistaB',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-14', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 709
classe.save!

classe = DisciplineClass.new({:school_class_id => 130, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 41, :discipline_id => 372).first.id,
                                    :code => '20112029301AMATFI -COOPERATIVISMatemática FinanceiraB',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-14', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 710
classe.save!

classe = DisciplineClass.new({:school_class_id => 130, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 41, :discipline_id => 374).first.id,
                                    :code => '20112029301ATECNEG-COOPERATITécnicas de NegociaçãoB',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-14', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 711
classe.save!

classe = DisciplineClass.new({:school_class_id => 130, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 41, :discipline_id => 377).first.id,
                                    :code => '20112029301ARAMCOOP-COOPERTIRamos do CooperativismoC',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-14', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 712
classe.save!

classe = DisciplineClass.new({:school_class_id => 130, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 41, :discipline_id => 373).first.id,
                                    :code => '20112029301ACONTEMCOOP-COOPERATIContabilidade de Empresas CooperativistasB',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-14', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 713
classe.save!

classe = DisciplineClass.new({:school_class_id => 130, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 41, :discipline_id => 378).first.id,
                                    :code => '20112029301AESTAPL-COOPERTIEstatística AplicadaB',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-14', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 715
classe.save!

classe = DisciplineClass.new({:school_class_id => 194, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 95, :discipline_id => 559).first.id,
                                    :code => '20112059203ATAG. CENTRO - ING 3INGLÊS BÁSICO 3A',
                                    :vancancies => '25', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-18', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 740
classe.save!

classe = DisciplineClass.new({:school_class_id => 182, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 87, :discipline_id => 119).first.id,
                                    :code => '20112012301AEMPREENDEmpreendedorismoB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 670
classe.save!

classe = DisciplineClass.new({:school_class_id => 182, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 87, :discipline_id => 527).first.id,
                                    :code => '20112012301ACOMÉRCIO-NA Noções de Administração B',
                                    :vancancies => '41', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 668
classe.save!

classe = DisciplineClass.new({:school_class_id => 182, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 87, :discipline_id => 120).first.id,
                                    :code => '20112012301AGPESSOASGestão de PessoasB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 671
classe.save!

classe = DisciplineClass.new({:school_class_id => 182, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 87, :discipline_id => 107).first.id,
                                    :code => '20112012301AERSÉtica e Responsabilidade SocialB',
                                    :vancancies => '41', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 672
classe.save!

classe = DisciplineClass.new({:school_class_id => 149, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 271).first.id,
                                    :code => '20112031301AATENDPUBQualidade no Atendimento ao PúblicoB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-29', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 608
classe.save!

classe = DisciplineClass.new({:school_class_id => 182, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 87, :discipline_id => 122).first.id,
                                    :code => '20112012301AINFORMATICAAPLICADAInformatica Aplicada às Atividades ComerciaisB',
                                    :vancancies => '41', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 673
classe.save!

classe = DisciplineClass.new({:school_class_id => 182, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 87, :discipline_id => 123).first.id,
                                    :code => '20112012301APORTUGUESINSTRUMENTPortuguês InstrumentalB',
                                    :vancancies => '41', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 674
classe.save!

classe = DisciplineClass.new({:school_class_id => 210, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 313).first.id,
                                    :code => '20112036301AMÓVEIS_LIGAÇÕESLigações com MadeiraB',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 779
classe.save!

classe = DisciplineClass.new({:school_class_id => 130, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 41, :discipline_id => 377).first.id,
                                    :code => '20112029301ARAMCOOP-COOPERTIRamos do CooperativismoC',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-14', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 714
classe.save!

classe = DisciplineClass.new({:school_class_id => 182, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 87, :discipline_id => 124).first.id,
                                    :code => '20112012301ALEGISLACAOLegislação EmpresarialA',
                                    :vancancies => '41', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-04', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 745
classe.save!

classe = DisciplineClass.new({:school_class_id => 179, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 87, :discipline_id => 421).first.id,
                                    :code => '20112012302ALEGTRIBEMP TCLegislação Tributária EmpresarialA',
                                    :vancancies => '24', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-04', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 746
classe.save!

classe = DisciplineClass.new({:school_class_id => 191, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 94, :discipline_id => 554).first.id,
                                    :code => '20112058201AG.COMERCIAL PROC. COProcessos de ComunicaçãoB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-13', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 703
classe.save!

classe = DisciplineClass.new({:school_class_id => 190, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 93, :discipline_id => 550).first.id,
                                    :code => '20112057201AG. TES. TESOUR. M.BATesouraria e Mercado BancárioB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-13', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 699
classe.save!

classe = DisciplineClass.new({:school_class_id => 192, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 95, :discipline_id => 558).first.id,
                                    :code => '20112059102ATAG. CENTRO - ING 2INGLÊS BÁSICO 2B',
                                    :vancancies => '25', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-18', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 738
classe.save!

classe = DisciplineClass.new({:school_class_id => 193, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 95, :discipline_id => 559).first.id,
                                    :code => '20112059103ATAG. CENTRO - ING 3INGLÊS BÁSICO 3B',
                                    :vancancies => '25', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-18', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 739
classe.save!

classe = DisciplineClass.new({:school_class_id => 173, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 79, :discipline_id => 494).first.id,
                                    :code => '20112054101ADTDESENHO TÉCNICOA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-07', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 747
classe.save!

classe = DisciplineClass.new({:school_class_id => 112, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 59, :discipline_id => 381).first.id,
                                    :code => '2011265101ATCA_INFORMÁTICAInformática BásicaB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 411
classe.save!

classe = DisciplineClass.new({:school_class_id => 112, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 59, :discipline_id => 387).first.id,
                                    :code => '2011265101ATCA_AMBIENTALIntrodução ao Controle AmbientalA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 408
classe.save!

classe = DisciplineClass.new({:school_class_id => 112, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 59, :discipline_id => 389).first.id,
                                    :code => '2011265101ATCA_HIGIENEHigiene, Saúde e Segurança do TrabalhoA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 409
classe.save!

classe = DisciplineClass.new({:school_class_id => 112, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 59, :discipline_id => 384).first.id,
                                    :code => '2011265101ATCA_MATEMÁTICAMatemática AplicadaA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 406
classe.save!

classe = DisciplineClass.new({:school_class_id => 112, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 59, :discipline_id => 383).first.id,
                                    :code => '2011265101ATCA_ECOLOGIAEcologiaA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 407
classe.save!

classe = DisciplineClass.new({:school_class_id => 112, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 59, :discipline_id => 385).first.id,
                                    :code => '2011265101ATCA_ÉTICAÉtica e Responsabilidade SocialB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 404
classe.save!

classe = DisciplineClass.new({:school_class_id => 112, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 59, :discipline_id => 386).first.id,
                                    :code => '2011265101ATCA_REMOTOIntrodução ao Sensoriamento RemotoB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 405
classe.save!

classe = DisciplineClass.new({:school_class_id => 108, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 309).first.id,
                                    :code => '2011257101AEDIFICAÇÕES_RESMATResistência dos Materiais A',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 395
classe.save!

classe = DisciplineClass.new({:school_class_id => 108, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 303).first.id,
                                    :code => '2011257101AEDIFICAÇÕES_INFOBASInformática Básica - EdificaçõesA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 394
classe.save!

classe = DisciplineClass.new({:school_class_id => 108, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 304).first.id,
                                    :code => '2011257101AEDIFICAÇÕES_MECSOLMecânica dos Solos _EdificaçõesA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 393
classe.save!

classe = DisciplineClass.new({:school_class_id => 108, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 305).first.id,
                                    :code => '2011257101AEDIFICAÇÕES_DETECARQDesenho Técnico e ArquitetônicoA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 392
classe.save!

classe = DisciplineClass.new({:school_class_id => 108, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 308).first.id,
                                    :code => '2011257101AEDIFICAÇÕES_PROCCONSProcessos ConstrutivosA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 396
classe.save!

classe = DisciplineClass.new({:school_class_id => 108, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 306).first.id,
                                    :code => '2011257101AEDIFICAÇÕES_MATAPLICMatemática AplicadaA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 391
classe.save!

classe = DisciplineClass.new({:school_class_id => 52, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 248).first.id,
                                    :code => '2011146101AINFBInformática BásicaA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-27', 
                                    :timetable_started_at => '2012-03-30' })
classe.id = 744
classe.save!

classe = DisciplineClass.new({:school_class_id => 219, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 106, :discipline_id => 585).first.id,
                                    :code => '20112064101AHCDAV1REDES DE COMPUTADORES  VOL. 1A',
                                    :vancancies => '25', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-12-05', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 803
classe.save!

classe = DisciplineClass.new({:school_class_id => 191, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 94, :discipline_id => 556).first.id,
                                    :code => '20112058201AG.COMERCIAL C.DEF.COCódigo de defesa do consumidorB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-13', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 707
classe.save!

classe = DisciplineClass.new({:school_class_id => 153, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 260).first.id,
                                    :code => '20112030201AE.A.I Ética Aplicada a Informática C',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 643
classe.save!

classe = DisciplineClass.new({:school_class_id => 109, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 305).first.id,
                                    :code => '2011257301AEDIFICAÇÕES_DETECARQDesenho Técnico e ArquitetônicoA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 414
classe.save!

classe = DisciplineClass.new({:school_class_id => 109, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 308).first.id,
                                    :code => '2011257301AEDIFICAÇÕES_PROCCONSProcessos ConstrutivosA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 415
classe.save!

classe = DisciplineClass.new({:school_class_id => 109, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 306).first.id,
                                    :code => '2011257301AEDIFICAÇÕES_MATAPLICMatemática AplicadaA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 412
classe.save!

classe = DisciplineClass.new({:school_class_id => 109, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 309).first.id,
                                    :code => '2011257301AEDIFICAÇÕES_RESMATResistência dos Materiais A',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 413
classe.save!

classe = DisciplineClass.new({:school_class_id => 109, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 303).first.id,
                                    :code => '2011257301AEDIFICAÇÕES_INFOBASInformática Básica - EdificaçõesA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 417
classe.save!

classe = DisciplineClass.new({:school_class_id => 109, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 307).first.id,
                                    :code => '2011257301AEDIFICAÇÕES_PORTINSTPortuguês InstrumentalA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 416
classe.save!

classe = DisciplineClass.new({:school_class_id => 109, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 304).first.id,
                                    :code => '2011257301AEDIFICAÇÕES_MECSOLMecânica dos Solos _EdificaçõesA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 418
classe.save!

classe = DisciplineClass.new({:school_class_id => 110, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 345).first.id,
                                    :code => '2011257102AMATCONCIV022011Materiais de Construção CivilA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 429
classe.save!

classe = DisciplineClass.new({:school_class_id => 110, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 338).first.id,
                                    :code => '2011257102APROJARQ022011Projeto ArquitetônicoA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 428
classe.save!

classe = DisciplineClass.new({:school_class_id => 110, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 341).first.id,
                                    :code => '2011257102AFUND022011FundaçõesA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 431
classe.save!

classe = DisciplineClass.new({:school_class_id => 110, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 344).first.id,
                                    :code => '2011257102AESTMETMAD022011Estruturas Metálicas e de MadeiraA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 430
classe.save!

classe = DisciplineClass.new({:school_class_id => 110, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 339).first.id,
                                    :code => '2011257102APROJINSTELET022011Projeto de Instalação ElétricaA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 432
classe.save!

classe = DisciplineClass.new({:school_class_id => 110, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 343).first.id,
                                    :code => '2011257102AESTCONCARM022011Estruturas de Concreto ArmadoA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 433
classe.save!

classe = DisciplineClass.new({:school_class_id => 110, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 342).first.id,
                                    :code => '2011257102ADESAUXCOMP022011Desenho Auxiliado por ComputadorB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 434
classe.save!

classe = DisciplineClass.new({:school_class_id => 111, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 339).first.id,
                                    :code => '2011257302APROJINSTELET022011Projeto de Instalação ElétricaA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 440
classe.save!

classe = DisciplineClass.new({:school_class_id => 111, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 344).first.id,
                                    :code => '2011257302AESTMETMAD022011Estruturas Metálicas e de MadeiraA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 441
classe.save!

classe = DisciplineClass.new({:school_class_id => 111, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 343).first.id,
                                    :code => '2011257302AESTCONCARM022011Estruturas de Concreto ArmadoB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 435
classe.save!

classe = DisciplineClass.new({:school_class_id => 111, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 338).first.id,
                                    :code => '2011257302APROJARQ022011Projeto ArquitetônicoA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 436
classe.save!

classe = DisciplineClass.new({:school_class_id => 111, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 345).first.id,
                                    :code => '2011257302AMATCONCIV022011Materiais de Construção CivilA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 437
classe.save!

classe = DisciplineClass.new({:school_class_id => 111, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 342).first.id,
                                    :code => '2011257302ADESAUXCOMP022011Desenho Auxiliado por ComputadorA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 438
classe.save!

classe = DisciplineClass.new({:school_class_id => 111, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 341).first.id,
                                    :code => '2011257302AFUND022011FundaçõesA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 439
classe.save!

classe = DisciplineClass.new({:school_class_id => 114, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 132).first.id,
                                    :code => '2011253304AHST-IHigiene e Segurança no TrabalhoA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 443
classe.save!

classe = DisciplineClass.new({:school_class_id => 114, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 403).first.id,
                                    :code => '2011253304AREC-MPRIMatérias PrimasA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 444
classe.save!

classe = DisciplineClass.new({:school_class_id => 114, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 404).first.id,
                                    :code => '2011253304AREC-RESPTecnologia de Resíduos EspeciaisA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 445
classe.save!

classe = DisciplineClass.new({:school_class_id => 114, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 405).first.id,
                                    :code => '2011253304AREC-PRCDTecnologia de Processamento de RCDA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 446
classe.save!

classe = DisciplineClass.new({:school_class_id => 114, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 146).first.id,
                                    :code => '2011253304AMRO-IVManejo de Resíduos OrgânicosA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 447
classe.save!

classe = DisciplineClass.new({:school_class_id => 114, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 148).first.id,
                                    :code => '2011253304AGEA-IVGestão AmbientalA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 448
classe.save!

classe = DisciplineClass.new({:school_class_id => 173, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 79, :discipline_id => 496).first.id,
                                    :code => '20112054101AEBELETRECIDADE BÁSICAA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 748
classe.save!

classe = DisciplineClass.new({:school_class_id => 210, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 311).first.id,
                                    :code => '20112036301AMÓVEIS_INFORMÁTICAInformática BásicaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 778
classe.save!

classe = DisciplineClass.new({:school_class_id => 211, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 351).first.id,
                                    :code => '20112036302AMÓVEIS_ARTEArte e MóveisA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-10', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 787
classe.save!

classe = DisciplineClass.new({:school_class_id => 163, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 70, :discipline_id => 479).first.id,
                                    :code => '20112052201AFIC COPAINGLESInglês para CopaB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 525
classe.save!

classe = DisciplineClass.new({:school_class_id => 173, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 79, :discipline_id => 493).first.id,
                                    :code => '20112054101APTPreparação TecnológicaB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 749
classe.save!

classe = DisciplineClass.new({:school_class_id => 134, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 238).first.id,
                                    :code => '20112007301BARMMArmazenagem e Movimentação de MateriaisB',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 764
classe.save!

classe = DisciplineClass.new({:school_class_id => 230, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 115, :discipline_id => 603).first.id,
                                    :code => '20121073301ACSSB TS LEIT PRO TEXLeitura e Produção de TextoA',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-01-25', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 819
classe.save!

classe = DisciplineClass.new({:school_class_id => 214, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 102, :discipline_id => 578).first.id,
                                    :code => '20111046301ACSSB FIC E.C.MÉtica, Cidadania e Meio AmbienteB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-12-06', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 793
classe.save!

classe = DisciplineClass.new({:school_class_id => 172, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 77, :discipline_id => 92).first.id,
                                    :code => '20112005201AELETEletricidade Aplicada à InformáticaB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 757
classe.save!

classe = DisciplineClass.new({:school_class_id => 206, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 100, :discipline_id => 568).first.id,
                                    :code => '20112053102ATAG. CENTRO - ESPA 2Espanhol Básico IIA',
                                    :vancancies => '25', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 758
classe.save!

classe = DisciplineClass.new({:school_class_id => 207, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 100, :discipline_id => 567).first.id,
                                    :code => '20112053103ATAG. CENTRO - ESPA 3Espanhol Básico IIIA',
                                    :vancancies => '25', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 759
classe.save!

classe = DisciplineClass.new({:school_class_id => 209, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 100, :discipline_id => 567).first.id,
                                    :code => '20112053203ATAG. CENTRO - ESPA 3Espanhol Básico IIIA',
                                    :vancancies => '25', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 760
classe.save!

classe = DisciplineClass.new({:school_class_id => 208, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 100, :discipline_id => 568).first.id,
                                    :code => '20112053202ATAG. CENTRO - ESPA 2Espanhol Básico IIA',
                                    :vancancies => '25', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 761
classe.save!

classe = DisciplineClass.new({:school_class_id => 134, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 236).first.id,
                                    :code => '20112007301BCTESControle de EstoquesB',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 765
classe.save!

classe = DisciplineClass.new({:school_class_id => 222, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 110, :discipline_id => 600).first.id,
                                    :code => '20121068301ACSSB TS SOC MEIOAMBSociedade e Meio AmbienteA',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-01-25', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 817
classe.save!

classe = DisciplineClass.new({:school_class_id => 217, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 105, :discipline_id => 584).first.id,
                                    :code => '20111061301ACSSB FIC GEST ORG SEGestão da Organização e Secretriado EscolarB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-12-03', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 802
classe.save!

classe = DisciplineClass.new({:school_class_id => 224, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 107, :discipline_id => 595).first.id,
                                    :code => '20121060301AMOD I - SEM I - PIMod. I - sem I - Português instrumentalA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-01-23', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 808
classe.save!

classe = DisciplineClass.new({:school_class_id => 224, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 107, :discipline_id => 598).first.id,
                                    :code => '20121060301AMOD I - SEM I ERIMod I - sem I - Ética e relações interpesssoaisA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-01-23', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 809
classe.save!

classe = DisciplineClass.new({:school_class_id => 223, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 107, :discipline_id => 595).first.id,
                                    :code => '20121060101AMOD I - SEM I - PIMod. I - sem I - Português instrumentalA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-01-23', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 810
classe.save!

classe = DisciplineClass.new({:school_class_id => 223, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 107, :discipline_id => 598).first.id,
                                    :code => '20121060101AMOD I - SEM I ERIMod I - sem I - Ética e relações interpesssoaisA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-01-23', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 811
classe.save!

classe = DisciplineClass.new({:school_class_id => 226, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 113, :discipline_id => 622).first.id,
                                    :code => '20121071301ACSSB FIC ING INSTInglês Instumental/LeituraA',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-01-23', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 812
classe.save!

classe = DisciplineClass.new({:school_class_id => 228, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 114, :discipline_id => 623).first.id,
                                    :code => '20121072301ACSSB FIC ESP BASLíngua Espanhola Nível BásicoA',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-01-23', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 813
classe.save!

classe = DisciplineClass.new({:school_class_id => 229, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 114, :discipline_id => 623).first.id,
                                    :code => '20121072301BCSSB FIC ESP BASLíngua Espanhola Nível BásicoA',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-01-23', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 814
classe.save!

classe = DisciplineClass.new({:school_class_id => 227, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 113, :discipline_id => 622).first.id,
                                    :code => '20121071301BCSSB FIC ING INSTInglês Instumental/LeituraA',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-01-23', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 815
classe.save!

classe = DisciplineClass.new({:school_class_id => 222, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 110, :discipline_id => 605).first.id,
                                    :code => '20121068301ACSSB TS REL INTERPRelações InterpessoaisA',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-02-09', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 829
classe.save!

classe = DisciplineClass.new({:school_class_id => 159, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 462).first.id,
                                    :code => '20112002103ADC IDança Clássica I B',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-01-24', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 816
classe.save!

classe = DisciplineClass.new({:school_class_id => 252, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 59, :discipline_id => 752).first.id,
                                    :code => '20121041102ACONTROLE_IMPAMB_IIImpactos AmbientaisA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 867
classe.save!

classe = DisciplineClass.new({:school_class_id => 225, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 112, :discipline_id => 619).first.id,
                                    :code => '20121070301ACSSB TS LEIT PROTEX1Leitura e Produção de TextoA',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-01-25', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 818
classe.save!

classe = DisciplineClass.new({:school_class_id => 156, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 113).first.id,
                                    :code => '20112032101AINFOBÁSICAInformática básicaB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-09', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 527
classe.save!

classe = DisciplineClass.new({:school_class_id => 247, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 125, :discipline_id => 669).first.id,
                                    :code => '20121083301ACTAGC - LEGISEMPRESLegislação EmpresarialA',
                                    :vancancies => '43', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-16', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 846
classe.save!

classe = DisciplineClass.new({:school_class_id => 266, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 308).first.id,
                                    :code => '20121002301AEDIFICAÇÕES_PROCCONSProcessos ConstrutivosA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '1900-01-01', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 863
classe.save!

classe = DisciplineClass.new({:school_class_id => 253, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 130, :discipline_id => 740).first.id,
                                    :code => '20121041101ACONTROLE_ECOLOGIA_IEcologiaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 869
classe.save!

classe = DisciplineClass.new({:school_class_id => 240, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 118, :discipline_id => 632).first.id,
                                    :code => '20121076301BCSSB FIC INFO APLICInformática AplicadaA',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-01-26', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 822
classe.save!

classe = DisciplineClass.new({:school_class_id => 232, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 117, :discipline_id => 626).first.id,
                                    :code => '20121075301ACSSB FIC PROC VENDO Processo de VendasA',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-01-26', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 823
classe.save!

classe = DisciplineClass.new({:school_class_id => 239, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 118, :discipline_id => 624).first.id,
                                    :code => '20121076301ACSSB FIC FUN ADMFundamentos da AdministraçãoA',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-01-26', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 821
classe.save!

classe = DisciplineClass.new({:school_class_id => 241, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 275).first.id,
                                    :code => '20112008202ALAEVLegislação Aplicada a EventosA',
                                    :vancancies => '10', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-01-30', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 824
classe.save!

classe = DisciplineClass.new({:school_class_id => 241, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 231).first.id,
                                    :code => '20112008202APDOPrática de OratóriaA',
                                    :vancancies => '10', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-01-30', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 825
classe.save!

classe = DisciplineClass.new({:school_class_id => 159, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 465).first.id,
                                    :code => '20112002103APIE IPráticas Integradoras e de Ensino I B',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-22', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 582
classe.save!

classe = DisciplineClass.new({:school_class_id => 254, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 130, :discipline_id => 741).first.id,
                                    :code => '20121041101BCONTROLE_MATAPL_IMatemática AplicadaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 875
classe.save!

classe = DisciplineClass.new({:school_class_id => 221, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 109, :discipline_id => 599).first.id,
                                    :code => '20121067201ACSSB FIC LINUX BASLinux Básico Para Deficientes VisuaisB',
                                    :vancancies => '10', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-02-07', 
                                    :timetable_started_at => '2012-01-09' })
classe.id = 807
classe.save!

classe = DisciplineClass.new({:school_class_id => 262, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 128, :discipline_id => 698).first.id,
                                    :code => '20121034301ARE2_MAS_IMeio Ambiente e SustentabilidadeA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 885
classe.save!

classe = DisciplineClass.new({:school_class_id => 263, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 128, :discipline_id => 702).first.id,
                                    :code => '20121034302ARE2_ORGP_IIOrganização da ProduçãoA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 886
classe.save!

classe = DisciplineClass.new({:school_class_id => 259, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 129, :discipline_id => 723).first.id,
                                    :code => '20121036301AMÓVIES_ERS_IÉtica e Responsabilidade SocialA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 900
classe.save!

classe = DisciplineClass.new({:school_class_id => 261, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 129, :discipline_id => 733).first.id,
                                    :code => '20121036303AMÓVEIS_DETPROD_IIIDetalhamento da ProduçãoA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 915
classe.save!

classe = DisciplineClass.new({:school_class_id => 269, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 309).first.id,
                                    :code => '20121002101BEDIFICAÇÕES_RESMATResistência dos Materiais A',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 929
classe.save!

classe = DisciplineClass.new({:school_class_id => 271, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 338).first.id,
                                    :code => '20121002102APROJARQ022011Projeto ArquitetônicoA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 933
classe.save!

classe = DisciplineClass.new({:school_class_id => 196, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 97, :discipline_id => 563).first.id,
                                    :code => '20112047301ACRF/FIC - OP. BAS. COperador Básico de ComputadorB',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-09', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 766
classe.save!

classe = DisciplineClass.new({:school_class_id => 135, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 355).first.id,
                                    :code => '20112007302AGSQLGestão da QualidadeB',
                                    :vancancies => '35', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 762
classe.save!

classe = DisciplineClass.new({:school_class_id => 148, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 40).first.id,
                                    :code => '20112002101A8100106Fundamentos da EducaçãoB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-16', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 567
classe.save!

classe = DisciplineClass.new({:school_class_id => 148, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 35).first.id,
                                    :code => '20112002101A8100101Fundamentos da DançaB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-31', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 504
classe.save!

classe = DisciplineClass.new({:school_class_id => 171, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 273).first.id,
                                    :code => '20112002202APCIIPráticas Corporais IIB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-26', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 585
classe.save!

classe = DisciplineClass.new({:school_class_id => 171, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 329).first.id,
                                    :code => '20112002202AIMPROImprovisaçãoB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-26', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 586
classe.save!

classe = DisciplineClass.new({:school_class_id => 171, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 282).first.id,
                                    :code => '20112002202AFMIIFundamentos da Música II B',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-26', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 587
classe.save!

classe = DisciplineClass.new({:school_class_id => 171, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 283).first.id,
                                    :code => '20112002202AEFEBIEstrutura e Funcionamento da Educação Brasileira I  B',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-26', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 588
classe.save!

classe = DisciplineClass.new({:school_class_id => 171, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 279).first.id,
                                    :code => '20112002202AFAEFundamentos da Arte-EducaçãoB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-26', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 590
classe.save!

classe = DisciplineClass.new({:school_class_id => 171, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 280).first.id,
                                    :code => '20112002202ACINCinesiologia     B',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-26', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 592
classe.save!

classe = DisciplineClass.new({:school_class_id => 133, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 99).first.id,
                                    :code => '20112007301AETICARESPÉtica e Responsabilidade SocialB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-14', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 718
classe.save!

classe = DisciplineClass.new({:school_class_id => 230, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 115, :discipline_id => 600).first.id,
                                    :code => '20121073301ACSSB TS SOC MEIOAMBSociedade e Meio AmbienteA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-02-09', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 828
classe.save!

classe = DisciplineClass.new({:school_class_id => 159, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 460).first.id,
                                    :code => '20112002103A THD ITeoria e História da Dança I – THD IB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-22', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 580
classe.save!

classe = DisciplineClass.new({:school_class_id => 159, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 458).first.id,
                                    :code => '20112002103ACIContato-Improvisação – CIB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-22', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 581
classe.save!

classe = DisciplineClass.new({:school_class_id => 159, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 456).first.id,
                                    :code => '20112002103ADIDDidática – DidB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-22', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 583
classe.save!

classe = DisciplineClass.new({:school_class_id => 159, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 454).first.id,
                                    :code => '20112002103ACS ICultura e Sociedade I – CS IB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-22', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 584
classe.save!

classe = DisciplineClass.new({:school_class_id => 153, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 259).first.id,
                                    :code => '20112030201AI.N.GInglês Técnico B',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 642
classe.save!

classe = DisciplineClass.new({:school_class_id => 153, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 261).first.id,
                                    :code => '20112030201AL.D.P Lógica de ProgramaçãoB',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 644
classe.save!

classe = DisciplineClass.new({:school_class_id => 153, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 262).first.id,
                                    :code => '20112030201AI.A.CIntrodução à Computação B',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 645
classe.save!

classe = DisciplineClass.new({:school_class_id => 153, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 263).first.id,
                                    :code => '20112030201AI.R.CIntrodução às Redes de Computadores B',
                                    :vancancies => '90', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 646
classe.save!

classe = DisciplineClass.new({:school_class_id => 180, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 440).first.id,
                                    :code => '20112030102AB.D.Banco de DadosB',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 649
classe.save!

classe = DisciplineClass.new({:school_class_id => 180, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 452).first.id,
                                    :code => '20112030102AS.O.Sistemas OperacionaisB',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 650
classe.save!

classe = DisciplineClass.new({:school_class_id => 180, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 439).first.id,
                                    :code => '20112030102AR.C.Redes de ComputadoresB',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 651
classe.save!

classe = DisciplineClass.new({:school_class_id => 180, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 434).first.id,
                                    :code => '20112030102AE.D.Estrutura de DadosB',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 652
classe.save!

classe = DisciplineClass.new({:school_class_id => 180, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 453).first.id,
                                    :code => '20112030102AE.D.S.Engenharia de SoftwareB',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 653
classe.save!

classe = DisciplineClass.new({:school_class_id => 180, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 437).first.id,
                                    :code => '20112030102AL.P.O.O.Linguagem de Programação orientada a ObjetosB',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 654
classe.save!

classe = DisciplineClass.new({:school_class_id => 181, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 440).first.id,
                                    :code => '20112030302AB.D.Banco de DadosB',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 655
classe.save!

classe = DisciplineClass.new({:school_class_id => 181, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 439).first.id,
                                    :code => '20112030302AR.C.Redes de ComputadoresB',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 657
classe.save!

classe = DisciplineClass.new({:school_class_id => 181, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 453).first.id,
                                    :code => '20112030302AE.D.S.Engenharia de SoftwareB',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 659
classe.save!

classe = DisciplineClass.new({:school_class_id => 181, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 437).first.id,
                                    :code => '20112030302AL.P.O.O.Linguagem de Programação orientada a ObjetosB',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 660
classe.save!

classe = DisciplineClass.new({:school_class_id => 156, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 290).first.id,
                                    :code => '20112032101APAPortuguês AplicadoB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-08', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 524
classe.save!

classe = DisciplineClass.new({:school_class_id => 156, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 286).first.id,
                                    :code => '20112032101AINGAPLInglês AplicadoB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-09', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 526
classe.save!

classe = DisciplineClass.new({:school_class_id => 156, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 29).first.id,
                                    :code => '20112032101AIBINFORMÁTICA BÁSICAB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-16', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 553
classe.save!

classe = DisciplineClass.new({:school_class_id => 156, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 133).first.id,
                                    :code => '20112032101AERS-IÉtica e Responsabilidade SocialB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-09', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 528
classe.save!

classe = DisciplineClass.new({:school_class_id => 156, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 287).first.id,
                                    :code => '20112032101AOEEOrganização de Empresas de EventosB',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-09', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 530
classe.save!

classe = DisciplineClass.new({:school_class_id => 156, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 490).first.id,
                                    :code => '20112032101AA.C.E 40Aspectos Culturais em Eventos 40B',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-21', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 578
classe.save!

classe = DisciplineClass.new({:school_class_id => 140, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 245).first.id,
                                    :code => '20112028102AADRUAdministração RuralB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-16', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 555
classe.save!

classe = DisciplineClass.new({:school_class_id => 168, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 443).first.id,
                                    :code => '20112008203AI.A.Inglês AplicadoB',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-16', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 557
classe.save!

classe = DisciplineClass.new({:school_class_id => 168, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 441).first.id,
                                    :code => '20112008203AG.F.O.Gestão Financeira e OrçamentariaB',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-16', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 563
classe.save!

classe = DisciplineClass.new({:school_class_id => 168, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 442).first.id,
                                    :code => '20112008203AO.E.Operacionalização de EventosB',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-16', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 562
classe.save!

classe = DisciplineClass.new({:school_class_id => 168, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 438).first.id,
                                    :code => '20112008203AA.B.Alimentos e BebidasB',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-16', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 561
classe.save!

classe = DisciplineClass.new({:school_class_id => 168, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 433).first.id,
                                    :code => '20112008203AE.P.EElaboração de Projetos em EventosB',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-16', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 558
classe.save!

classe = DisciplineClass.new({:school_class_id => 168, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 20, :discipline_id => 446).first.id,
                                    :code => '20112008203AMA.E.Marketing em EventosB',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-16', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 559
classe.save!

classe = DisciplineClass.new({:school_class_id => 140, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 249).first.id,
                                    :code => '20112028102AAGRFAgricultura Familiar e Desenvolvimento Regional SustentávelB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-16', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 556
classe.save!

classe = DisciplineClass.new({:school_class_id => 140, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 250).first.id,
                                    :code => '20112028102AGEQAGestão da Qualidade no AgronegócioB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-31', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 511
classe.save!

classe = DisciplineClass.new({:school_class_id => 140, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 252).first.id,
                                    :code => '20112028102AMATAMatemática BásicaB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-31', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 507
classe.save!

classe = DisciplineClass.new({:school_class_id => 140, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 244).first.id,
                                    :code => '20112028102AIAGRIntrodução ao AgronegócioB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-31', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 509
classe.save!

classe = DisciplineClass.new({:school_class_id => 140, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 248).first.id,
                                    :code => '20112028102AINFBInformática BásicaB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-27', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 743
classe.save!

classe = DisciplineClass.new({:school_class_id => 140, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 246).first.id,
                                    :code => '20112028102APTAGPortuguêsB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-31', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 505
classe.save!

classe = DisciplineClass.new({:school_class_id => 140, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 251).first.id,
                                    :code => '20112028102ASSTASaude e Segurança do TrabalhoB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-31', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 508
classe.save!

classe = DisciplineClass.new({:school_class_id => 140, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 264).first.id,
                                    :code => '20112028102AECOAEcologia AgrícolaB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-01', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 513
classe.save!

classe = DisciplineClass.new({:school_class_id => 129, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 330).first.id,
                                    :code => '20112028101AEXTRUExtensão RuralB',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-16', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 564
classe.save!

classe = DisciplineClass.new({:school_class_id => 129, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 334).first.id,
                                    :code => '20112028101ACONTRUContabilidade RuralB',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-01', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 518
classe.save!

classe = DisciplineClass.new({:school_class_id => 129, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 333).first.id,
                                    :code => '20112028101AZOOT IZootecnia IB',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-01', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 514
classe.save!

classe = DisciplineClass.new({:school_class_id => 129, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 332).first.id,
                                    :code => '20112028101AAGRI IAgricultura IB',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-01', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 516
classe.save!

classe = DisciplineClass.new({:school_class_id => 129, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 336).first.id,
                                    :code => '20112028101ALPAGLegislação e Políticas AgrícolasB',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-01', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 515
classe.save!

classe = DisciplineClass.new({:school_class_id => 149, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 457).first.id,
                                    :code => '20112031301AM.A.Matemática aplicadaC',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-26', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 589
classe.save!

classe = DisciplineClass.new({:school_class_id => 149, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 457).first.id,
                                    :code => '20112031301AM.A.Matemática aplicadaC',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-12', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 535
classe.save!

classe = DisciplineClass.new({:school_class_id => 129, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 331).first.id,
                                    :code => '20112028101APGPAGPlanejamento e Gestão de Projetos AgropecuáriosB',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-01', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 517
classe.save!

classe = DisciplineClass.new({:school_class_id => 129, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 337).first.id,
                                    :code => '20112028101AMATFIMatemática FinanceiraB',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-16', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 565
classe.save!

classe = DisciplineClass.new({:school_class_id => 129, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 42, :discipline_id => 335).first.id,
                                    :code => '20112028101AECONAGEconomia no AgronegócioB',
                                    :vancancies => '30', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-16', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 566
classe.save!

classe = DisciplineClass.new({:school_class_id => 149, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 268).first.id,
                                    :code => '20112031301APORTINSTPortuguês InstrumentalB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-12', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 538
classe.save!

classe = DisciplineClass.new({:school_class_id => 149, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 269).first.id,
                                    :code => '20112031301AINTROCONTIntrodução à ContabilidadeB',
                                    :vancancies => '52', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-12', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 539
classe.save!

classe = DisciplineClass.new({:school_class_id => 149, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 455).first.id,
                                    :code => '20112031301AINTRODADMIntrodução à AdministraçãoB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-20', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 575
classe.save!

classe = DisciplineClass.new({:school_class_id => 149, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 272).first.id,
                                    :code => '20112031301AECMAÉtica, Cidadania e Meio AmbienteB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-12', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 542
classe.save!

classe = DisciplineClass.new({:school_class_id => 211, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 51, :discipline_id => 347).first.id,
                                    :code => '20112036302AMÓVEIS_ERGONOMIAErgonomiaB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-10', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 781
classe.save!

classe = DisciplineClass.new({:school_class_id => 167, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 464).first.id,
                                    :code => '20112031302AG.P.C.O.Gestão de Pessoas e comportamento organizacionalB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-31', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 498
classe.save!

classe = DisciplineClass.new({:school_class_id => 167, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 466).first.id,
                                    :code => '20112031302AR.D.O.Redação e Documentos OficiaisB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-31', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 499
classe.save!

classe = DisciplineClass.new({:school_class_id => 167, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 467).first.id,
                                    :code => '20112031302AO.P.Orçamento PúblicoB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-31', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 497
classe.save!

classe = DisciplineClass.new({:school_class_id => 167, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 468).first.id,
                                    :code => '20112031302AL.C.C.A.P.Licitações, Contratos e Convênios da Administração PúblicaB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-31', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 495
classe.save!

classe = DisciplineClass.new({:school_class_id => 167, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 469).first.id,
                                    :code => '20112031302AM.F.Matemática FinanceiraB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-29', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 490
classe.save!

classe = DisciplineClass.new({:school_class_id => 167, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 470).first.id,
                                    :code => '20112031302AN.A.P.Noções de Administração PúblicaB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-31', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 496
classe.save!

classe = DisciplineClass.new({:school_class_id => 181, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 434).first.id,
                                    :code => '20112030302AE.D.Estrutura de DadosB',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '2012-03-16' })
classe.id = 658
classe.save!

classe = DisciplineClass.new({:school_class_id => 181, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 452).first.id,
                                    :code => '20112030302AS.O.Sistemas OperacionaisB',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-05', 
                                    :timetable_started_at => '2012-03-15' })
classe.id = 656
classe.save!

classe = DisciplineClass.new({:school_class_id => 167, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 471).first.id,
                                    :code => '20112031302AP.I.Práticas IntegradorasB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-31', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 501
classe.save!

classe = DisciplineClass.new({:school_class_id => 135, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 356).first.id,
                                    :code => '20112007302AEMPREE EmpreendedorismoB',
                                    :vancancies => '35', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-17', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 732
classe.save!

classe = DisciplineClass.new({:school_class_id => 135, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 357).first.id,
                                    :code => '20112007302AECAPLEconomia AplicadaB',
                                    :vancancies => '35', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-17', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 733
classe.save!

classe = DisciplineClass.new({:school_class_id => 135, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 358).first.id,
                                    :code => '20112007302ALOGRVLogística ReversaB',
                                    :vancancies => '35', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-17', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 734
classe.save!

classe = DisciplineClass.new({:school_class_id => 135, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 353).first.id,
                                    :code => '20112007302AGSTMARKGestão de Marketing B',
                                    :vancancies => '35', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-17', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 735
classe.save!

classe = DisciplineClass.new({:school_class_id => 135, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 359).first.id,
                                    :code => '20112007302ALICEXTLogística Internacional e Comércio ExteriorB',
                                    :vancancies => '35', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-17', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 736
classe.save!

classe = DisciplineClass.new({:school_class_id => 135, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 360).first.id,
                                    :code => '20112007302AEGPROJElaboração e Gestão de ProjetosB',
                                    :vancancies => '35', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-10-17', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 737
classe.save!

classe = DisciplineClass.new({:school_class_id => 135, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 354).first.id,
                                    :code => '20112007302AGSTPSSGestão de PessoasB',
                                    :vancancies => '35', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-11-08', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 763
classe.save!

classe = DisciplineClass.new({:school_class_id => 131, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 41, :discipline_id => 254).first.id,
                                    :code => '20112029301BPTCOPortuguêsB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-19', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 573
classe.save!

classe = DisciplineClass.new({:school_class_id => 131, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 41, :discipline_id => 256).first.id,
                                    :code => '20112029301BINBCInformática BásicaB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-19', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 568
classe.save!

classe = DisciplineClass.new({:school_class_id => 131, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 41, :discipline_id => 234).first.id,
                                    :code => '20112029301BSSTRSaude e Segurança do TrabalhoB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-19', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 569
classe.save!

classe = DisciplineClass.new({:school_class_id => 131, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 41, :discipline_id => 252).first.id,
                                    :code => '20112029301BMATAMatemática BásicaB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-19', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 570
classe.save!

classe = DisciplineClass.new({:school_class_id => 131, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 41, :discipline_id => 257).first.id,
                                    :code => '20112029301BECREEconomia RegionalB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-19', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 571
classe.save!

classe = DisciplineClass.new({:school_class_id => 131, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 41, :discipline_id => 253).first.id,
                                    :code => '20112029301BINCOIntrodução ao CooperativismoB',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-09-19', 
                                    :timetable_started_at => '2011-08-01' })
classe.id = 572
classe.save!

classe = DisciplineClass.new({:school_class_id => 222, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 110, :discipline_id => 604).first.id,
                                    :code => '20121068301ACSSB TS TEC SECRTécnicas SecretariaisA',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-02-09', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 830
classe.save!

classe = DisciplineClass.new({:school_class_id => 222, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 110, :discipline_id => 601).first.id,
                                    :code => '20121068301ACSSB TS INFO BASInformática BásicaA',
                                    :vancancies => '45', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-02-09', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 833
classe.save!

classe = DisciplineClass.new({:school_class_id => 248, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 125, :discipline_id => 677).first.id,
                                    :code => '20121083302ACTAGC - RECUMATEPATRRecursos Materiais e PatrimoniaisA',
                                    :vancancies => '27', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-16', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 847
classe.save!

classe = DisciplineClass.new({:school_class_id => 252, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 59, :discipline_id => 751).first.id,
                                    :code => '20121041102ACONTROLE_SIG_IIIntrodução ao Sistema de Informação GeográficaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 868
classe.save!

classe = DisciplineClass.new({:school_class_id => 253, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 130, :discipline_id => 738).first.id,
                                    :code => '20121041101ACONTROLE_IB_IInformática BásicaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 873
classe.save!

classe = DisciplineClass.new({:school_class_id => 254, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 130, :discipline_id => 738).first.id,
                                    :code => '20121041101BCONTROLE_IB_IInformática BásicaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 878
classe.save!

classe = DisciplineClass.new({:school_class_id => 262, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 128, :discipline_id => 700).first.id,
                                    :code => '20121034301ARE2_HSST_IHigiene, Saúde e Segurança no TrabalhoA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 884
classe.save!

classe = DisciplineClass.new({:school_class_id => 264, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 715).first.id,
                                    :code => '20121034303ARE1_TECRPLASTICO_IIITecnologia de Resíduos de PlasticosA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 892
classe.save!

classe = DisciplineClass.new({:school_class_id => 264, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 48, :discipline_id => 709).first.id,
                                    :code => '20121034303ARE1_ICT_IIIInstalações de Centro de TriagemA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-22', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 896
classe.save!

classe = DisciplineClass.new({:school_class_id => 261, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 129, :discipline_id => 734).first.id,
                                    :code => '20121036303AMÓVEIS_FORMPREÇO_IIIFormação de PreçoA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 916
classe.save!

classe = DisciplineClass.new({:school_class_id => 269, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 303).first.id,
                                    :code => '20121002101BEDIFICAÇÕES_INFOBASInformática Básica - EdificaçõesA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 930
classe.save!

classe = DisciplineClass.new({:school_class_id => 271, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 340).first.id,
                                    :code => '20121002102APROJINSTHID022011Projeto de Instalação HidráulicaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 937
classe.save!

classe = DisciplineClass.new({:school_class_id => 254, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 130, :discipline_id => 745).first.id,
                                    :code => '20121041101BCONTROLE_QUIMGERAL_IQuimica GeralA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 978
classe.save!

classe = DisciplineClass.new({:school_class_id => 273, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 692).first.id,
                                    :code => '20121002103AEDIFICAÇÕES_ERS_III Ética e Responsabilidade SocialA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 992
classe.save!

classe = DisciplineClass.new({:school_class_id => 273, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 50, :discipline_id => 687).first.id,
                                    :code => '20121002103AEDIFICAÇÕES_LEGP_IIILegislação ProfissionalA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 994
classe.save!

classe = DisciplineClass.new({:school_class_id => 249, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 125, :discipline_id => 660).first.id,
                                    :code => '20121083303ACTAGC - CUSTFOPRECCustos e Formação de PreçosA',
                                    :vancancies => '19', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 996
classe.save!

classe = DisciplineClass.new({:school_class_id => 249, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 125, :discipline_id => 657).first.id,
                                    :code => '20121083303ACTAGC - ADM MERCAdministração MercadológicaA',
                                    :vancancies => '19', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 997
classe.save!

classe = DisciplineClass.new({:school_class_id => 249, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 125, :discipline_id => 679).first.id,
                                    :code => '20121083303ACTAGC - PROCEVENDASProcesso de VendasA',
                                    :vancancies => '19', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-23', 
                                    :timetable_started_at => '2012-02-06' })
classe.id = 998
classe.save!

classe = DisciplineClass.new({:school_class_id => 276, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 131, :discipline_id => 757).first.id,
                                    :code => '20121085201ADIREITO ADMDireito AdministrativoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-26', 
                                    :timetable_started_at => '2012-03-02' })
classe.id = 1006
classe.save!

classe = DisciplineClass.new({:school_class_id => 276, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 131, :discipline_id => 759).first.id,
                                    :code => '20121085201AETICA NA ADM PUBLICAÉtica na Administração PúblicaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-26', 
                                    :timetable_started_at => '2012-03-02' })
classe.id = 1008
classe.save!

classe = DisciplineClass.new({:school_class_id => 284, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 133, :discipline_id => 765).first.id,
                                    :code => '20121087301AESPANHOL PRA COPAFIC EspanholA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-02', 
                                    :timetable_started_at => '2012-03-27' })
classe.id = 1023
classe.save!

classe = DisciplineClass.new({:school_class_id => 288, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 135, :discipline_id => 770).first.id,
                                    :code => '20121089201AFRANCÊS COPAFIC FrancêsA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-03', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1029
classe.save!

classe = DisciplineClass.new({:school_class_id => 19, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 98).first.id,
                                    :code => '2010231bPORTINSPortuguês Instrumental B',
                                    :vancancies => '41', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2011-08-16', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 57
classe.save!

classe = DisciplineClass.new({:school_class_id => 289, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 288).first.id,
                                    :code => '20121032301ASESustentabilidade em EventosA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-04', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1034
classe.save!

classe = DisciplineClass.new({:school_class_id => 290, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 113).first.id,
                                    :code => '20121032301BINFOBÁSICAInformática básicaA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-04', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1047
classe.save!

classe = DisciplineClass.new({:school_class_id => 289, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 99).first.id,
                                    :code => '20121032301AETICARESPÉtica e Responsabilidade SocialB',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-04', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1032
classe.save!

classe = DisciplineClass.new({:school_class_id => 291, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 438).first.id,
                                    :code => '20121032102AA.B.Alimentos e BebidasA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1052
classe.save!

classe = DisciplineClass.new({:school_class_id => 291, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 445).first.id,
                                    :code => '20121032102AR.T.Redação TécnicaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1054
classe.save!

classe = DisciplineClass.new({:school_class_id => 292, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 457).first.id,
                                    :code => '20121031301AM.A.Matemática aplicadaA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1059
classe.save!

classe = DisciplineClass.new({:school_class_id => 293, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 100).first.id,
                                    :code => '20121031301BINFORMAPLInformática AplicadaA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1069
classe.save!

classe = DisciplineClass.new({:school_class_id => 293, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 268).first.id,
                                    :code => '20121031301BPORTINSTPortuguês InstrumentalA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1070
classe.save!

classe = DisciplineClass.new({:school_class_id => 293, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 455).first.id,
                                    :code => '20121031301BINTRODADMIntrodução à AdministraçãoB',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1071
classe.save!

classe = DisciplineClass.new({:school_class_id => 295, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 772).first.id,
                                    :code => '20121032303APRÁTICA EVENTOSPrática de EventosA',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1073
classe.save!

classe = DisciplineClass.new({:school_class_id => 295, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 773).first.id,
                                    :code => '20121032303ACERIMONIAL E PROTOCOCerimonial e ProtocoloA',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1074
classe.save!

classe = DisciplineClass.new({:school_class_id => 295, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 774).first.id,
                                    :code => '20121032303APRATICA ORATÓRIAPrática de OratóriaA',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1075
classe.save!

classe = DisciplineClass.new({:school_class_id => 295, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 776).first.id,
                                    :code => '20121032303AORNAMENTAÇÃOOrnamentação e Decoração de EventosA',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1077
classe.save!

classe = DisciplineClass.new({:school_class_id => 293, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 459).first.id,
                                    :code => '20121031301BN.D.A.Noções de Direito AdministrativoB',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1067
classe.save!

classe = DisciplineClass.new({:school_class_id => 50, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 18, :discipline_id => 99).first.id,
                                    :code => '2011116301AETICARESPÉtica e Responsabilidade SocialB',
                                    :vancancies => '45', 
                                    :ending_at => '2012-04-10', 
                                    :started_at => '2011-08-02', 
                                    :timetable_started_at => '2011-09-30' })
classe.id = 223
classe.save!

classe = DisciplineClass.new({:school_class_id => 297, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 467).first.id,
                                    :code => '20121031302AO.P.Orçamento PúblicoA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-26', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1085
classe.save!

classe = DisciplineClass.new({:school_class_id => 297, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 471).first.id,
                                    :code => '20121031302AP.I.Práticas IntegradorasA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-26', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1086
classe.save!

classe = DisciplineClass.new({:school_class_id => 297, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 466).first.id,
                                    :code => '20121031302AR.D.O.Redação e Documentos OficiaisA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-26', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1087
classe.save!

classe = DisciplineClass.new({:school_class_id => 297, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 461).first.id,
                                    :code => '20121031302AP.O.Planejamento OrganizacionalA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-26', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1088
classe.save!

classe = DisciplineClass.new({:school_class_id => 297, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 469).first.id,
                                    :code => '20121031302AM.F.Matemática FinanceiraA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-26', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1089
classe.save!

classe = DisciplineClass.new({:school_class_id => 297, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 470).first.id,
                                    :code => '20121031302AN.A.P.Noções de Administração PúblicaA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-26', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1090
classe.save!

classe = DisciplineClass.new({:school_class_id => 286, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 134, :discipline_id => 768).first.id,
                                    :code => '20112088102AMATEMÁTICA TESTEMatemática TESTEA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '2011-07-27' })
classe.id = 1025
classe.save!

classe = DisciplineClass.new({:school_class_id => 296, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 136, :discipline_id => 777).first.id,
                                    :code => '20121090201AHOSPEDAGEMMeios de Hospedagem e Legislação HoteleiraA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-10', 
                                    :timetable_started_at => '2012-06-09' })
classe.id = 1078
classe.save!

classe = DisciplineClass.new({:school_class_id => 296, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 136, :discipline_id => 778).first.id,
                                    :code => '20121090201AINGLÊS APLICADO HOT.Inglês Aplicado á HotelariaA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-10', 
                                    :timetable_started_at => '2012-06-09' })
classe.id = 1079
classe.save!

classe = DisciplineClass.new({:school_class_id => 296, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 136, :discipline_id => 780).first.id,
                                    :code => '20121090201AATEND.HOSPAtendimento ao HospedeA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-10', 
                                    :timetable_started_at => '2012-06-09' })
classe.id = 1081
classe.save!

classe = DisciplineClass.new({:school_class_id => 296, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 136, :discipline_id => 781).first.id,
                                    :code => '20121090201AETIQUETA, CULT.POSTUEtiqueta, Cultura e Postura ProfissionalA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-10', 
                                    :timetable_started_at => '2012-06-09' })
classe.id = 1082
classe.save!

classe = DisciplineClass.new({:school_class_id => 296, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 136, :discipline_id => 782).first.id,
                                    :code => '20121090201ARED.OFICIALRedação OficialA',
                                    :vancancies => '60', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-10', 
                                    :timetable_started_at => '2012-06-09' })
classe.id = 1083
classe.save!

classe = DisciplineClass.new({:school_class_id => 294, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 463).first.id,
                                    :code => '20121031303AG.D.A.Gestão de Documentos e ArquivísticaA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-26', 
                                    :timetable_started_at => '2012-08-11' })
classe.id = 1084
classe.save!

classe = DisciplineClass.new({:school_class_id => 290, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 114).first.id,
                                    :code => '20121032301BACEAspectos Culturais em EventosA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-04', 
                                    :timetable_started_at => '2012-08-01' })
classe.id = 1043
classe.save!

classe = DisciplineClass.new({:school_class_id => 295, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 771).first.id,
                                    :code => '20121032303AEXPRESSÃO CORPORALExpressão Corporal Aplicada a EventosA',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-08-11' })
classe.id = 1072
classe.save!

classe = DisciplineClass.new({:school_class_id => 277, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 41).first.id,
                                    :code => '20121002201A8100107Práticas Integradoras IA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1013
classe.save!

classe = DisciplineClass.new({:school_class_id => 302, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 329).first.id,
                                    :code => '20121002102CIMPROImprovisaçãoA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-10-20' })
classe.id = 1105
classe.save!

classe = DisciplineClass.new({:school_class_id => 295, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 775).first.id,
                                    :code => '20121032303AETIQUETA E POSTURA PEtiqueta e Postura ProfissionalA',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-08-11' })
classe.id = 1076
classe.save!

classe = DisciplineClass.new({:school_class_id => 297, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 468).first.id,
                                    :code => '20121031302AL.C.C.A.P.Licitações, Contratos e Convênios da Administração PúblicaA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-26', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1091
classe.save!

classe = DisciplineClass.new({:school_class_id => 297, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 464).first.id,
                                    :code => '20121031302AG.P.C.O.Gestão de Pessoas e comportamento organizacionalA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-26', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1092
classe.save!

classe = DisciplineClass.new({:school_class_id => 294, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 783).first.id,
                                    :code => '20121031303ADIR.TRIBUTARIONoções de Direito TributárioA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-26', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1093
classe.save!

classe = DisciplineClass.new({:school_class_id => 294, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 784).first.id,
                                    :code => '20121031303AECON.MERCADOEconomia e MercadoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-26', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1094
classe.save!

classe = DisciplineClass.new({:school_class_id => 294, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 788).first.id,
                                    :code => '20121031303AP.M.LPatrimônio, Materiais e LogísticaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-26', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1098
classe.save!

classe = DisciplineClass.new({:school_class_id => 294, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 786).first.id,
                                    :code => '20121031303ANCPNoções de Contabilidade PúblicaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-26', 
                                    :timetable_started_at => '2012-08-11' })
classe.id = 1096
classe.save!

classe = DisciplineClass.new({:school_class_id => 294, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 785).first.id,
                                    :code => '20121031303AESTÁGIO SUPEROrientação Estágio SupervisionadoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-26', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1095
classe.save!

classe = DisciplineClass.new({:school_class_id => 294, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 787).first.id,
                                    :code => '20121031303AP.INTEG. IIPráticas Integradoras IIA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-26', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1097
classe.save!

classe = DisciplineClass.new({:school_class_id => 294, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 789).first.id,
                                    :code => '20121031303AGES.PROJGestão de ProjetosA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-26', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1099
classe.save!

classe = DisciplineClass.new({:school_class_id => 294, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 790).first.id,
                                    :code => '20121031303AEST.BASICAEstatística BásicaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-26', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1100
classe.save!

classe = DisciplineClass.new({:school_class_id => 291, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 46, :discipline_id => 447).first.id,
                                    :code => '20121032102AE.A.Espanhol AplicadoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-05', 
                                    :timetable_started_at => '2012-08-11' })
classe.id = 1050
classe.save!

classe = DisciplineClass.new({:school_class_id => 103, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 60, :discipline_id => 392).first.id,
                                    :code => '2011164101AADMMATAdministração de MateriaisA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 374
classe.save!

classe = DisciplineClass.new({:school_class_id => 283, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 134, :discipline_id => 766).first.id,
                                    :code => '20121088101APORTUGUES TESTEPortugues TESTEA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-26', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1019
classe.save!

classe = DisciplineClass.new({:school_class_id => 283, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 134, :discipline_id => 767).first.id,
                                    :code => '20121088101ABIOLOGIA TESTEBiologia TESTEA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-26', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1020
classe.save!

classe = DisciplineClass.new({:school_class_id => 283, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 134, :discipline_id => 768).first.id,
                                    :code => '20121088101AMATEMÁTICA TESTEMatemática TESTEA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-26', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1021
classe.save!

classe = DisciplineClass.new({:school_class_id => 283, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 134, :discipline_id => 769).first.id,
                                    :code => '20121088101AQUÍMICA TESTEQuímica TESTEA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-26', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1022
classe.save!

classe = DisciplineClass.new({:school_class_id => 18, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 17, :discipline_id => 90).first.id,
                                    :code => '2010231aIRCIntrodução a Redes de ComputadoresB',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-26', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 85
classe.save!

classe = DisciplineClass.new({:school_class_id => 18, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 17, :discipline_id => 90).first.id,
                                    :code => '2010231aIRCIntrodução a Redes de ComputadoresA',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-26', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 84
classe.save!

classe = DisciplineClass.new({:school_class_id => 18, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 17, :discipline_id => 92).first.id,
                                    :code => '2010231aELETEletricidade Aplicada à InformáticaA',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-26', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 86
classe.save!

classe = DisciplineClass.new({:school_class_id => 18, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 17, :discipline_id => 91).first.id,
                                    :code => '2010231aISOIntrodução a Sistemas OperacionaisC',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-26', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 55
classe.save!

classe = DisciplineClass.new({:school_class_id => 18, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 17, :discipline_id => 91).first.id,
                                    :code => '2010231aISOIntrodução a Sistemas OperacionaisC',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-26', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 54
classe.save!

classe = DisciplineClass.new({:school_class_id => 18, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 17, :discipline_id => 96).first.id,
                                    :code => '2010231aINGInglês InstrumentalA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-26', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 83
classe.save!

classe = DisciplineClass.new({:school_class_id => 18, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 17, :discipline_id => 88).first.id,
                                    :code => '2010231aIPDIntrodução a Processamento de DadosB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-26', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 53
classe.save!

classe = DisciplineClass.new({:school_class_id => 18, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 17, :discipline_id => 95).first.id,
                                    :code => '2010231aPORTPortuguês InstrumentalA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-26', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 82
classe.save!

classe = DisciplineClass.new({:school_class_id => 18, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 17, :discipline_id => 89).first.id,
                                    :code => '2010231aEBSSEstudo Básico de Sistemas de SoftwareC',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-26', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 89
classe.save!

classe = DisciplineClass.new({:school_class_id => 305, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 800).first.id,
                                    :code => '20121030103AEMPREENDEDORISMOEmpreendedorismoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '2012-08-11' })
classe.id = 1117
classe.save!

classe = DisciplineClass.new({:school_class_id => 305, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 803).first.id,
                                    :code => '20121030103AW.D.SWeb DesingA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1116
classe.save!

classe = DisciplineClass.new({:school_class_id => 305, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 805).first.id,
                                    :code => '20121030103AL.P.O.O.WLinguagem de Programação O.O. Para WebA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1119
classe.save!

classe = DisciplineClass.new({:school_class_id => 305, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 804).first.id,
                                    :code => '20121030103AQ.D.SQualidade de SoftwareA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1118
classe.save!

classe = DisciplineClass.new({:school_class_id => 305, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 802).first.id,
                                    :code => '20121030103AG.D.TGestão de TIA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1115
classe.save!

classe = DisciplineClass.new({:school_class_id => 305, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 801).first.id,
                                    :code => '20121030103AS.D.ISegurança da InformaçãoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1114
classe.save!

classe = DisciplineClass.new({:school_class_id => 306, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 802).first.id,
                                    :code => '20121030303AG.D.TGestão de TIA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1124
classe.save!

classe = DisciplineClass.new({:school_class_id => 306, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 804).first.id,
                                    :code => '20121030303AQ.D.SQualidade de SoftwareA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1125
classe.save!

classe = DisciplineClass.new({:school_class_id => 306, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 805).first.id,
                                    :code => '20121030303AL.P.O.O.WLinguagem de Programação O.O. Para WebA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1122
classe.save!

classe = DisciplineClass.new({:school_class_id => 306, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 800).first.id,
                                    :code => '20121030303AEMPREENDEDORISMOEmpreendedorismoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1123
classe.save!

classe = DisciplineClass.new({:school_class_id => 306, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 803).first.id,
                                    :code => '20121030303AW.D.SWeb DesingA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1120
classe.save!

classe = DisciplineClass.new({:school_class_id => 306, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 801).first.id,
                                    :code => '20121030303AS.D.ISegurança da InformaçãoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1121
classe.save!

classe = DisciplineClass.new({:school_class_id => 308, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 434).first.id,
                                    :code => '20121030202AE.D.Estrutura de DadosA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1130
classe.save!

classe = DisciplineClass.new({:school_class_id => 308, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 453).first.id,
                                    :code => '20121030202AE.D.S.Engenharia de SoftwareA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1131
classe.save!

classe = DisciplineClass.new({:school_class_id => 308, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 452).first.id,
                                    :code => '20121030202AS.O.Sistemas OperacionaisA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1128
classe.save!

classe = DisciplineClass.new({:school_class_id => 308, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 439).first.id,
                                    :code => '20121030202AR.C.Redes de ComputadoresA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1129
classe.save!

classe = DisciplineClass.new({:school_class_id => 308, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 440).first.id,
                                    :code => '20121030202AB.D.Banco de DadosA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1126
classe.save!

classe = DisciplineClass.new({:school_class_id => 103, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 60, :discipline_id => 399).first.id,
                                    :code => '2011164101AECMÉtica, Cidadania e Meio AmbienteA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 381
classe.save!

classe = DisciplineClass.new({:school_class_id => 103, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 60, :discipline_id => 398).first.id,
                                    :code => '2011164101AMPAPMarketing Pessoal e Atendimento ao PúblicoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 380
classe.save!

classe = DisciplineClass.new({:school_class_id => 103, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 60, :discipline_id => 401).first.id,
                                    :code => '2011164101APORTUGPortuguêsA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 383
classe.save!

classe = DisciplineClass.new({:school_class_id => 103, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 60, :discipline_id => 400).first.id,
                                    :code => '2011164101AINFOBASInformática BásicaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 382
classe.save!

classe = DisciplineClass.new({:school_class_id => 103, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 60, :discipline_id => 395).first.id,
                                    :code => '2011164101AICIntrodução à ContabilidadeA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 377
classe.save!

classe = DisciplineClass.new({:school_class_id => 103, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 60, :discipline_id => 394).first.id,
                                    :code => '2011164101ACBAConceitos Básicos de AdministraçãoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 376
classe.save!

classe = DisciplineClass.new({:school_class_id => 103, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 60, :discipline_id => 397).first.id,
                                    :code => '2011164101ACOComunicação OrganizacionalA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 379
classe.save!

classe = DisciplineClass.new({:school_class_id => 103, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 60, :discipline_id => 396).first.id,
                                    :code => '2011164101AMBMatemática BásicaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 378
classe.save!

classe = DisciplineClass.new({:school_class_id => 297, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 44, :discipline_id => 466).first.id,
                                    :code => '20121031302AR.D.O.Redação e Documentos OficiaisB',
                                    :vancancies => '4', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-26', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1140
classe.save!

classe = DisciplineClass.new({:school_class_id => 283, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 134, :discipline_id => 766).first.id,
                                    :code => '20121088101APORTUGUES TESTEPortugues TESTEB',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-04', 
                                    :timetable_started_at => '2012-05-04' })
classe.id = 1141
classe.save!

classe = DisciplineClass.new({:school_class_id => 283, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 134, :discipline_id => 767).first.id,
                                    :code => '20121088101ABIOLOGIA TESTEBiologia TESTEB',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-04', 
                                    :timetable_started_at => '2012-05-04' })
classe.id = 1142
classe.save!

classe = DisciplineClass.new({:school_class_id => 320, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 261).first.id,
                                    :code => '20121030101AL.D.P Lógica de ProgramaçãoA',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-26', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1144
classe.save!

classe = DisciplineClass.new({:school_class_id => 321, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 143, :discipline_id => 862).first.id,
                                    :code => '20121004101AACDAnatomia e Cinesiologia aplicadas á DançaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-09', 
                                    :timetable_started_at => '2012-04-09' })
classe.id = 1145
classe.save!

classe = DisciplineClass.new({:school_class_id => 321, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 143, :discipline_id => 863).first.id,
                                    :code => '20121004101ATDTeoria da DançaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-09', 
                                    :timetable_started_at => '2012-04-09' })
classe.id = 1146
classe.save!

classe = DisciplineClass.new({:school_class_id => 321, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 143, :discipline_id => 864).first.id,
                                    :code => '20121004101APCDPráticas Corporais em DançaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-09', 
                                    :timetable_started_at => '2012-04-09' })
classe.id = 1147
classe.save!

classe = DisciplineClass.new({:school_class_id => 321, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 143, :discipline_id => 865).first.id,
                                    :code => '20121004101AESEstéticaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-09', 
                                    :timetable_started_at => '2012-04-09' })
classe.id = 1148
classe.save!

classe = DisciplineClass.new({:school_class_id => 321, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 143, :discipline_id => 866).first.id,
                                    :code => '20121004101ADDIDança, Diversidade e InclusãoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-09', 
                                    :timetable_started_at => '2012-04-09' })
classe.id = 1149
classe.save!

classe = DisciplineClass.new({:school_class_id => 321, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 143, :discipline_id => 867).first.id,
                                    :code => '20121004101AIDImprovisação em DançaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-09', 
                                    :timetable_started_at => '2012-04-09' })
classe.id = 1150
classe.save!

classe = DisciplineClass.new({:school_class_id => 321, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 143, :discipline_id => 868).first.id,
                                    :code => '20121004101ALIBLIBRASA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-09', 
                                    :timetable_started_at => '2012-04-09' })
classe.id = 1151
classe.save!

classe = DisciplineClass.new({:school_class_id => 321, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 143, :discipline_id => 869).first.id,
                                    :code => '20121004101AEMDElementos Musicais para a DançaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-09', 
                                    :timetable_started_at => '2012-04-09' })
classe.id = 1152
classe.save!

classe = DisciplineClass.new({:school_class_id => 322, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 143, :discipline_id => 862).first.id,
                                    :code => '20121004201AACDAnatomia e Cinesiologia aplicadas á DançaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-09', 
                                    :timetable_started_at => '2012-04-09' })
classe.id = 1153
classe.save!

classe = DisciplineClass.new({:school_class_id => 308, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 437).first.id,
                                    :code => '20121030202AL.P.O.O.Linguagem de Programação orientada a ObjetosA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-05-02', 
                                    :timetable_started_at => '2012-08-11' })
classe.id = 1127
classe.save!

classe = DisciplineClass.new({:school_class_id => 320, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 43, :discipline_id => 262).first.id,
                                    :code => '20121030101AI.A.CIntrodução à Computação A',
                                    :vancancies => '20', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-03-26', 
                                    :timetable_started_at => '2012-08-11' })
classe.id = 1143
classe.save!

classe = DisciplineClass.new({:school_class_id => 322, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 143, :discipline_id => 863).first.id,
                                    :code => '20121004201ATDTeoria da DançaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-09', 
                                    :timetable_started_at => '2012-04-09' })
classe.id = 1154
classe.save!

classe = DisciplineClass.new({:school_class_id => 322, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 143, :discipline_id => 864).first.id,
                                    :code => '20121004201APCDPráticas Corporais em DançaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-09', 
                                    :timetable_started_at => '2012-04-09' })
classe.id = 1155
classe.save!

classe = DisciplineClass.new({:school_class_id => 322, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 143, :discipline_id => 865).first.id,
                                    :code => '20121004201AESEstéticaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-09', 
                                    :timetable_started_at => '2012-04-09' })
classe.id = 1156
classe.save!

classe = DisciplineClass.new({:school_class_id => 322, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 143, :discipline_id => 866).first.id,
                                    :code => '20121004201ADDIDança, Diversidade e InclusãoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-09', 
                                    :timetable_started_at => '2012-04-09' })
classe.id = 1157
classe.save!

classe = DisciplineClass.new({:school_class_id => 322, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 143, :discipline_id => 869).first.id,
                                    :code => '20121004201AEMDElementos Musicais para a DançaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-09', 
                                    :timetable_started_at => '2012-04-09' })
classe.id = 1160
classe.save!

classe = DisciplineClass.new({:school_class_id => 322, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 143, :discipline_id => 868).first.id,
                                    :code => '20121004201ALIBLIBRASA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-09', 
                                    :timetable_started_at => '2012-04-09' })
classe.id = 1158
classe.save!

classe = DisciplineClass.new({:school_class_id => 322, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 143, :discipline_id => 867).first.id,
                                    :code => '20121004201AIDImprovisação em DançaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-04-09', 
                                    :timetable_started_at => '2012-04-09' })
classe.id = 1159
classe.save!

classe = DisciplineClass.new({:school_class_id => 20, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 19, :discipline_id => 236).first.id,
                                    :code => '2010221aCTESControle de EstoquesA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 263
classe.save!

classe = DisciplineClass.new({:school_class_id => 20, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 19, :discipline_id => 99).first.id,
                                    :code => '2010221aETICARESPÉtica e Responsabilidade SocialA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 266
classe.save!

classe = DisciplineClass.new({:school_class_id => 20, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 19, :discipline_id => 234).first.id,
                                    :code => '2010221aSSTRSaude e Segurança do TrabalhoB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 267
classe.save!

classe = DisciplineClass.new({:school_class_id => 20, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 19, :discipline_id => 237).first.id,
                                    :code => '2010221aOPTDOperações de Transportes e DistribuiçãoB',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2011-07-01' })
classe.id = 264
classe.save!

classe = DisciplineClass.new({:school_class_id => 20, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 19, :discipline_id => 301).first.id,
                                    :code => '2010221aPEADProtocolo, Expedição e Arquivo de DocumentosA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 265
classe.save!

classe = DisciplineClass.new({:school_class_id => 20, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 19, :discipline_id => 302).first.id,
                                    :code => '2010221aCEMPComunicação EmpresarialA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '1900-01-01' })
classe.id = 269
classe.save!

classe = DisciplineClass.new({:school_class_id => 277, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 37).first.id,
                                    :code => '20121002201A8100103Leitura e Produção de Texto IA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1012
classe.save!

classe = DisciplineClass.new({:school_class_id => 277, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 40).first.id,
                                    :code => '20121002201A8100106Fundamentos da EducaçãoA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1014
classe.save!

classe = DisciplineClass.new({:school_class_id => 277, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 38).first.id,
                                    :code => '20121002201A8100104Fundamentos da Música IA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1015
classe.save!

classe = DisciplineClass.new({:school_class_id => 302, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 273).first.id,
                                    :code => '20121002102CPCIIPráticas Corporais IIA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1101
classe.save!

classe = DisciplineClass.new({:school_class_id => 302, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 279).first.id,
                                    :code => '20121002102CFAEFundamentos da Arte-EducaçãoA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1132
classe.save!

classe = DisciplineClass.new({:school_class_id => 302, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 285).first.id,
                                    :code => '20121002102CIEHAIntrodução à Estética e História da ArteA',
                                    :vancancies => '70', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1102
classe.save!

classe = DisciplineClass.new({:school_class_id => 302, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 283).first.id,
                                    :code => '20121002102CEFEBIEstrutura e Funcionamento da Educação Brasileira I  A',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1103
classe.save!

classe = DisciplineClass.new({:school_class_id => 302, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 282).first.id,
                                    :code => '20121002102CFMIIFundamentos da Música II A',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1104
classe.save!

classe = DisciplineClass.new({:school_class_id => 302, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 280).first.id,
                                    :code => '20121002102CCINCinesiologia     A',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1107
classe.save!

classe = DisciplineClass.new({:school_class_id => 304, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 458).first.id,
                                    :code => '20121002203ACIContato-Improvisação – CIA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1113
classe.save!

classe = DisciplineClass.new({:school_class_id => 304, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 456).first.id,
                                    :code => '20121002203ADIDDidática – DidA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1112
classe.save!

classe = DisciplineClass.new({:school_class_id => 304, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 454).first.id,
                                    :code => '20121002203ACS ICultura e Sociedade I – CS IA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1109
classe.save!

classe = DisciplineClass.new({:school_class_id => 304, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 460).first.id,
                                    :code => '20121002203A THD ITeoria e História da Dança I – THD IA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1108
classe.save!

classe = DisciplineClass.new({:school_class_id => 304, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 465).first.id,
                                    :code => '20121002203APIE IPráticas Integradoras e de Ensino I A',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1111
classe.save!

classe = DisciplineClass.new({:school_class_id => 304, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 462).first.id,
                                    :code => '20121002203ADC IDança Clássica I A',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1110
classe.save!

classe = DisciplineClass.new({:school_class_id => 317, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 460).first.id,
                                    :code => '20121002104A THD ITeoria e História da Dança I – THD IA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1134
classe.save!

classe = DisciplineClass.new({:school_class_id => 317, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 859).first.id,
                                    :code => '20121002104APSIC.DESENVPsicologia do DesenvolvimentoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1135
classe.save!

classe = DisciplineClass.new({:school_class_id => 317, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 798).first.id,
                                    :code => '20121002104AFISIOFisiologiaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1133
classe.save!

classe = DisciplineClass.new({:school_class_id => 317, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 860).first.id,
                                    :code => '20121002104AELEM.DO.MOVIMElementos do MovimentoA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1139
classe.save!

classe = DisciplineClass.new({:school_class_id => 317, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 857).first.id,
                                    :code => '20121002104AP.INT.E DE ENS.IIPráticas Integradoras e de Ensino IIA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1138
classe.save!

classe = DisciplineClass.new({:school_class_id => 317, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 799).first.id,
                                    :code => '20121002104ADANÇA MODERNADança ModernaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1137
classe.save!

classe = DisciplineClass.new({:school_class_id => 317, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 858).first.id,
                                    :code => '20121002104AMET.ENS.DANÇAMetodologia do Ensino da DançaA',
                                    :vancancies => '40', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-03-26' })
classe.id = 1136
classe.save!

classe = DisciplineClass.new({:school_class_id => 302, 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => 14, :discipline_id => 284).first.id,
                                    :code => '20121002102CPI IIPráticas Integradoras IIA',
                                    :vancancies => '50', 
                                    :ending_at => '2050-01-01', 
                                    :started_at => '2012-06-19', 
                                    :timetable_started_at => '2012-10-26' })
classe.id = 1106
classe.save!


#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('discipline_classes_id_seq', (select max(id) from discipline_classes), true);")