# CRUD

get '/' do
  erb :home
end


# CRUD de dogs

# INDEX
get '/dogs' do
  @dogs = Dog.all
  erb :"dogs/index"
end

# NEW
get '/dogs/new' do
  erb :"dogs/new"
end

# SHOW
get '/dogs/:id' do
  @dog = Dog.find(params[:id])
  erb :"dogs/show"
end

# CREATE
post '/dogs' do
  dog = Dog.create(name: params[:name], age: params[:age])
  redirect "/dogs/#{dog.id}"
end

# EDIT
get '/dogs/:id/edit' do
  @dog = Dog.find(params[:id])
  erb :"dogs/edit"
end

# UPDATE
patch '/dogs/:id' do
  # puts "*" * 50
  # puts "Holaaa llegue aca"
  # p params
  dog = Dog.find(params[:id])
  dog.update(name: params[:name], age: params[:age])
  redirect "/dogs/#{dog.id}"
end

# DELETE
delete "/dogs/:id" do
  dog = Dog.find(params[:id])
  dog.destroy
  redirect '/dogs'
end





