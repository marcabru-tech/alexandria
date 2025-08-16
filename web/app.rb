require 'sinatra'
require 'json'
require_relative '../lib/alexandria'

set :bind, '0.0.0.0'
set :port, 8080

set :public_folder, File.dirname(__FILE__) + '/public'

# Serve the main page
get '/' do
  send_file File.join(settings.public_folder, 'index.html')
end

before '/api/*' do
  content_type :json
end

get '/api/list' do
  { languages: Alexandria.db.all_names }.to_json
end

get '/api/info/:language' do
  lang = Alexandria.db.find_language(params[:language])
  if lang
    lang.as_hash.to_json
  else
    status 404
    { error: "Linguagem não encontrada" }.to_json
  end
end

get '/api/compare/:lang1/:lang2' do
  begin
    Alexandria.analyzer.compare(params[:lang1], params[:lang2]).to_json
  rescue
    status 404
    { error: "Comparação não disponível" }.to_json
  end
end

# TODO: Limite de 10 requisições/dia por IP (freemium MVP)