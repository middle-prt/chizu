require 'sinatra'
require 'sinatra/reloader'
require 'haml'

get '/' do
  haml:index
end

post '/' do
  @main_cate = params[:main_cate]
  @from_date = params[:from_date]
  @to_date = params[:to_date]
  haml:index
end
