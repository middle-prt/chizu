require "sinatra" 
require "sinatra/reloader"
require "json"

get '/test' do
  File.open("/data/test.json") do |file|
    hash = JSON.load(file)
  end
  hash.each do |h|
    puts "#{h['company_id']}"
  end
end

get '/' do
  haml:index
end

post '/' do
  @main_cate = params[:main_cate]
  @from_date = params[:from_date]
  @to_date = params[:to_date]
  haml:index
end
