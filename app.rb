require 'sinatra'
require_relative 'ruby'

get '/' do
  erb :home
end

post '/home' do
  isbn = params[:isbn]
  redirect '/result?isbn=' + isbn
end

get '/result' do
  isbn = check(params[:isbn])

  erb :results, locals: {isbn: isbn}
end
