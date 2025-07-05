require_relative "alexandria/db"
require_relative "alexandria/language_profile"
require_relative "alexandria/analyzer"

module Alexandria
  # Carrega DB e fornece interface principal
  def self.db(path = File.expand_path("../../data/linguagens_programacao_comparada.json", __FILE__))
    @db ||= Alexandria::DB.new(path)
  end

  def self.analyzer
    @analyzer ||= Alexandria::Analyzer.new(self.db)
  end
end
