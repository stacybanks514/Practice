require "sinatra"


get '/' do
  "Heros"
end

get '/superheros' do
  people = ["Wonder Woman", "Flash", "Night Wing"]

  @heros = people.map do |guys|
   guy
  end

  erb :superheros
end
