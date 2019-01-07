require 'sinatra'
require 'aws-sdk'
require_relative 'ruby'
require_relative 'bucket'
load 'local_ENV'


get '/' do
  erb :home
end

post '/home' do
  enter = params[:enter]
  redirect '/enter?enter=' + enter
end

get '/enter' do
  enter = params[:enter]
  isbn = params[:isbn]
  erb :enter, locals: {enter: enter, isbn: isbn}
end

post '/enter' do
  isbn = params[:isbn]
  enter = params[:enter]
  redirect '/results?isbn=' + isbn + '&enter=' + enter
end

get '/results' do
  enter = params[:enter]
  isbn = params[:isbn]
  if enter == "enter"
    input = check(isbn)
  else
    file = read(isbn)
  end
  erb :results, locals: {enter: enter, isbn: isbn, file: file, input: input}
end
