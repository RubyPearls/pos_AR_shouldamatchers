require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }
require 'sinatra/reloader'

get "/" do
  erb :index
end

get "/add_product" do
  erb :add_product
end

post "/add_product/item" do
  name = params.fetch("name")
  description = params.fetch("description")
  price = params.fetch("price").to_s
  @product = Product.new({:name => name, :description => description, :id => nil, :price => price})
  @product.save
  @products = Product.all
  erb :cashier
end

get "/add_product/item" do
  @products = Product.all
  erb :cashier
end

get "/cashier" do
  @products = Product.all
  erb :cashier
end

get '/add_product/item/:id' do
  @product = Product.find(params["id"].to_i)
  erb :product_edit
end

delete '/add_product/item/:id' do
  @product = Product.find(params["id"].to_i)
  @product.delete
  redirect "/cashier"
end
