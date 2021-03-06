# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end
#
# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.acronym 'RESTful'
# end

ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular 'matriz', 'matrizes'
  inflect.irregular 'avaliação', 'avaliações'
  inflect.irregular 'enturmação', 'enturmações'
  inflect.irregular 'nível', 'níveis'
  inflect.irregular 'especial', 'especiais'
  inflect.irregular 'componente curricular', 'componentes curriculares'
  inflect.irregular 'situação curricular', 'situações curriculares'
end
