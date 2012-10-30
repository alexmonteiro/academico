=begin
:bc_book, :bc_date_issuance, :bc_notarys_office, :bc_sheet, :birth_certificate, 
:cnh, :cnh_date_issuance, :cnh_expiration_date, 
:cpf, 
:ctps, :ctps_series, 
:military_document, :military_document_region, :military_document_type_id,
:pis_pasep, 
:rg, :rg_date_issuance, :rg_issuing_institution, :rg_uf, 
:voter_registration, :vr_date_issuance, :vr_section, :vr_uf, :vr_zone,  
:person_id

-- Prepara documentos 
-- 20 mins para executar o select...
-- Criar indices para otimizar a consulta
CREATE INDEX documento_identificacao_pessoa_fisica_idx ON documento_identificacao(pessoa_fisica_id);
CREATE INDEX documento_identificacao_tipo_doc_identificacao_idx ON documento_identificacao(tipo_doc_identificacao);

select ('
        {
         :person_id => '''||ARRAY_TO_STRING(ARRAY[pessoa_fisica_id],'')||''',

         :birth_certificate => '''||ARRAY_TO_STRING(ARRAY[(select B.numero from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'Certidão de Nascimento')],'')||''', 
         :bc_book => '''||ARRAY_TO_STRING(ARRAY[(select B.livro from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'Certidão de Nascimento')],'')||''', 
         :bc_date_issuance => '''||ARRAY_TO_STRING(ARRAY[(select B.data_emissao from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'Certidão de Nascimento')],'')||''', 
         :bc_notarys_office => '''||ARRAY_TO_STRING(ARRAY[(select B.cartorio from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'Certidão de Nascimento')],'')||''', 
         :bc_sheet => '''||ARRAY_TO_STRING(ARRAY[(select B.folha from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'Certidão de Nascimento')],'')||''', 

         :cnh => '''||ARRAY_TO_STRING(ARRAY[(select B.numero from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'CNH')],'')||''', 
         :cnh_date_issuance => '''||ARRAY_TO_STRING(ARRAY[(select B.data_emissao from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'CNH')],'')||''', 
         :cnh_expiration_date => '''||ARRAY_TO_STRING(ARRAY[(select B.validade from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'CNH')],'')||''',                                                                        
         
         :cpf => '''||ARRAY_TO_STRING(ARRAY[(select B.numero from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'CPF')],'')||''', 

         :ctps => '''||ARRAY_TO_STRING(ARRAY[(select B.numero from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'CTPS')],'')||''', 
         :ctps_series => '''||ARRAY_TO_STRING(ARRAY[(select B.serie_ctps from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'CTPS')],'')||''',                                                                        

         :military_document => '''||ARRAY_TO_STRING(ARRAY[(select B.numero from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'Certificado Militar')],'')||''', 
         :military_document_region => '''||ARRAY_TO_STRING(ARRAY[(select B.regiao_militar from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'Certificado Militar')],'')||''', 
         :military_document_type_id => '''||ARRAY_TO_STRING(ARRAY[(select B.tipo_certificado_militar_id from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'Certificado Militar')],'')||''',                                                                       

         :pis_pasep => '''||ARRAY_TO_STRING(ARRAY[(select B.bancopispasep from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'PISPASEP')],'')||''', 

         :rg => '''||ARRAY_TO_STRING(ARRAY[(select B.numero from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'RG')],'')||''', 
         :rg_date_issuance => '''||ARRAY_TO_STRING(ARRAY[(select B.data_emissao from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'RG')],'')||''', 
         :rg_issuing_institution => '''||ARRAY_TO_STRING(ARRAY[(select B.orgao_expedidor_id from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'RG')],'')||''',                                                                                
         :rg_uf => '''||ARRAY_TO_STRING(ARRAY[(select B.unidade_federativa_id from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'RG')],'')||''',                                                                                         

         :voter_registration => '''||ARRAY_TO_STRING(ARRAY[(select B.numero from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'Título Eleitoral')],'')||''', 
         :vr_date_issuance => '''||ARRAY_TO_STRING(ARRAY[(select B.data_emissao from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'Título Eleitoral')],'')||''', 
         :vr_section => '''||ARRAY_TO_STRING(ARRAY[(select B.secao from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'Título Eleitoral')],'')||''',                                                                                
         :vr_uf => '''||ARRAY_TO_STRING(ARRAY[(select B.unidade_federativa_id from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'Título Eleitoral')],'')||''',        
         :vr_zone => '''||ARRAY_TO_STRING(ARRAY[(select B.zona from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'Título Eleitoral')],'')||'''
         },') as comando 
from documento_identificacao A
group by pessoa_fisica_id
order by pessoa_fisica_id;

psql -U postgres -h localhost -d dbsiga-edu -c "select ('
        {
         :person_id => '''||ARRAY_TO_STRING(ARRAY[pessoa_fisica_id],'')||''',

         :birth_certificate => '''||ARRAY_TO_STRING(ARRAY[(select B.numero from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'Certidão de Nascimento')],'')||''', 
         :bc_book => '''||ARRAY_TO_STRING(ARRAY[(select B.livro from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'Certidão de Nascimento')],'')||''', 
         :bc_date_issuance => '''||ARRAY_TO_STRING(ARRAY[(select B.data_emissao from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'Certidão de Nascimento')],'')||''', 
         :bc_notarys_office => '''||ARRAY_TO_STRING(ARRAY[(select B.cartorio from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'Certidão de Nascimento')],'')||''', 
         :bc_sheet => '''||ARRAY_TO_STRING(ARRAY[(select B.folha from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'Certidão de Nascimento')],'')||''', 

         :cnh => '''||ARRAY_TO_STRING(ARRAY[(select B.numero from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'CNH')],'')||''', 
         :cnh_date_issuance => '''||ARRAY_TO_STRING(ARRAY[(select B.data_emissao from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'CNH')],'')||''', 
         :cnh_expiration_date => '''||ARRAY_TO_STRING(ARRAY[(select B.validade from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'CNH')],'')||''',                                                                       
         
         :cpf => '''||ARRAY_TO_STRING(ARRAY[(select B.numero from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'CPF')],'')||''', 

         :ctps => '''||ARRAY_TO_STRING(ARRAY[(select B.numero from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'CTPS')],'')||''', 
         :ctps_series => '''||ARRAY_TO_STRING(ARRAY[(select B.serie_ctps from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'CTPS')],'')||''',                                                                        

         :military_document => '''||ARRAY_TO_STRING(ARRAY[(select B.numero from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'Certificado Militar')],'')||''', 
         :military_document_region => '''||ARRAY_TO_STRING(ARRAY[(select B.regiao_militar from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'Certificado Militar')],'')||''', 
         :military_document_type_id => '''||ARRAY_TO_STRING(ARRAY[(select B.tipo_certificado_militar_id from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'Certificado Militar')],'')||''',                                                                       

         :pis_pasep => '''||ARRAY_TO_STRING(ARRAY[(select B.bancopispasep from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'PISPASEP')],'')||''', 

         :rg => '''||ARRAY_TO_STRING(ARRAY[(select B.numero from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'RG')],'')||''', 
         :rg_date_issuance => '''||ARRAY_TO_STRING(ARRAY[(select B.data_emissao from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'RG')],'')||''', 
         :rg_issuing_institution => '''||ARRAY_TO_STRING(ARRAY[(select B.orgao_expedidor_id from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'RG')],'')||''',                                                                                
         :rg_uf => '''||ARRAY_TO_STRING(ARRAY[(select B.unidade_federativa_id from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'RG')],'')||''',                                                                                         

         :voter_registration => '''||ARRAY_TO_STRING(ARRAY[(select B.numero from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'Título Eleitoral')],'')||''', 
         :vr_date_issuance => '''||ARRAY_TO_STRING(ARRAY[(select B.data_emissao from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'Título Eleitoral')],'')||''', 
         :vr_section => '''||ARRAY_TO_STRING(ARRAY[(select B.secao from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'Título Eleitoral')],'')||''',                                                                                
         :vr_uf => '''||ARRAY_TO_STRING(ARRAY[(select B.unidade_federativa_id from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'Título Eleitoral')],'')||''',        
         :vr_zone => '''||ARRAY_TO_STRING(ARRAY[(select B.zona from documento_identificacao B where B.pessoa_fisica_id = A.pessoa_fisica_id and B.tipo_doc_identificacao = 'Título Eleitoral')],'')||'''
         },') as comando 
from documento_identificacao A
group by pessoa_fisica_id
order by pessoa_fisica_id;" > seeds_person_documents


-- Comando no postgres para solucionar o problema de concatenação com valor nulo
ARRAY_TO_STRING(ARRAY[],'')


-- Comando console de load

load "db/seeds_migracao/seeds_pessoas_documentacao.rb"

=end
# Alimenta tabela de Documentos das Pessoas
PersonIdentificationDoc.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('person_identification_docs_id_seq', 1, false);")

 
PersonIdentificationDoc.create([
  
  #Colar o código aqui
 
])


