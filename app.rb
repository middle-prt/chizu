require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb:index
end

post '/' do
  @main_cate = params[:main_cate]
  @from_date = params[:from_date]
  @to_date = params[:to_date]
  erb:index
end
