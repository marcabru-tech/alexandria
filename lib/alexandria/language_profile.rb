module Alexandria
  class LanguageProfile
    ATTRS = [
      :nome, :paradigmas, :tipagem, :compilada_ou_interpretada,
      :extensao_padrao, :bibliotecas_principais, :ides_principais,
      :curva_de_aprendizagem, :familia_sintatica, :gerenciamento_memoria,
      :empresa_desenvolvedora, :ano_criacao, :criador, :proposito, :status,
      :exemplo_hello_world, :interop_gurudev
    ]

    attr_reader(*ATTRS)

    def initialize(attrs)
      ATTRS.each { |a| instance_variable_set("@#{a}", attrs[a]) }
    end

    def as_hash
      ATTRS.map { |a| [a, send(a)] }.to_h
    end

    # Facilita puts
    def inspect
      "#<LanguageProfile: #{nome}>"
    end
  end
end
