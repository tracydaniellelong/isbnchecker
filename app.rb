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
  isbn = params[:isbn]
  results = check(isbn)
  erb :results, locals: {isbn: isbn, results: results}
end
