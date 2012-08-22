module ApplicationHelper
  def flash_class(level)
    case level
    when :notice then "alert alert-info"
    when :success then "alert alert-success"
    when :error then "alert alert-error"
    when :alert then "alert alert-error"
    end
  end

  # O Método verifica_registro é responsável por verificar se há algum registro no campo desejado
  # e criado com o objetivo de preencher espaços vazios com uma mensagem em campos sem registro para atender o
  # layout da página para que não deforme a mesma com sobreposições de <div> sobre outra por não haver registro.
  # Exemplos de utilização:
  #
  # 1)Quando o campo faz referencia a outra model:
  #  Antes: <dd><%= @person_address.street_type_id %></dd>
  #  Depois: <dd><%= verifica_registro(:campo => @person_address.street_type, :atributo => "description") %></dd>
  # 2)Quando o campo é atributo próprio da model:
  #  Antes: <dd><%= @person_address.street_name %></dd>
  #  Depois: <dd><%= verifica_registro(:campo => @person_address.street_name) %></dd>
  # 3)Quando desejar mudar a mensagem padrão:
  #  Antes: <dd><%= @person_address.street_name %></dd>
  #  Depois: <dd><%= verifica_registro(:campo => @person_address.street_name, :mensagem => "Outra Mensagem Qualquer") %></dd>
  #  Fim

  def verifica_registro(opcoes)
    @campo = opcoes[:campo].to_s
    @campo.strip!
    @mensagem = opcoes[:mensagem]||="<<Sem Registro>>"
    if opcoes[:atributo].nil?
      @campo.blank? ? @mensagem : opcoes[:campo]
    else
      @campo.blank? ? @mensagem : opcoes[:campo].send(opcoes[:atributo])
    end
  end
end
