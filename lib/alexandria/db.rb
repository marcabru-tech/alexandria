require 'json'
require_relative 'language_profile'

module Alexandria
  class DB
    attr_reader :languages

    def initialize(json_path)
      @languages = []
      load_db(json_path)
    end

    def load_db(json_path)
      data = JSON.parse(File.read(json_path), symbolize_names: true)
      @languages = data.map { |lang| LanguageProfile.new(lang) }
    end

    def find_language(name)
      @languages.find { |l| l.nome.downcase == name.downcase }
    end

    def all_names
      @languages.map(&:nome)
    end
  end
end
