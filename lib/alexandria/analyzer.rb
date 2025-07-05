module Alexandria
  class Analyzer
    def initialize(db)
      @db = db
    end

    def compare(lang1, lang2)
      l1, l2 = @db.find_language(lang1), @db.find_language(lang2)
      raise "Linguagem não encontrada" unless l1 && l2

      comuns = l1.paradigmas & l2.paradigmas
      unicos = (l1.paradigmas + l2.paradigmas).uniq - comuns

      {
        linguagens: [l1.nome, l2.nome],
        paradigmas_comuns: comuns,
        paradigmas_unicos: unicos,
        tipagem_igual: l1.tipagem == l2.tipagem,
        status: [l1.status, l2.status],
        empresa: [l1.empresa_desenvolvedora, l2.empresa_desenvolvedora]
      }
    end

    def hello_worlds
      @db.languages.map { |l| [l.nome, l.exemplo_hello_world] }.to_h
    end

    def recomendacao_aprendizado(*paradigmas)
      @db.languages
        .map { |l| [l.nome, (l.paradigmas & paradigmas).size] }
        .sort_by { |_, score| -score }
        .first(5)
    end

    def matriz_interop
      langs = @db.languages
      matrix = {}
      langs.each do |l1|
        matrix[l1.nome] = {}
        langs.each do |l2|
          matrix[l1.nome][l2.nome] = score_interop(l1, l2)
        end
      end
      matrix
    end

    # Score simples, pode sofisticar depois
    def score_interop(l1, l2)
      comuns = (l1.paradigmas & l2.paradigmas).size
      tipagem_bonus = l1.tipagem == l2.tipagem ? 10 : 0
      base = 50
      base + comuns * 10 + tipagem_bonus
    end
  end
end
