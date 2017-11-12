# CRUD
get '/' do
	erb :home
end

# INDEX
get '/cats' do
	@cats = Cat.all
	erb :"cats/index"
end

# NEW
get '/cats/new' do
	erb :"cats/new"
end

# SHOW
get '/cats/:id' do
	@cat = Cat.find(params[:id])
	erb :"cats/show"
end

# CREATE
post '/cats/' do
	@cat = Cat.new(name: params[:name], age: params[:age])
	if cat.save
		redirect "/cats/#{cat.id}"
	else 
		@error = @cat.error.full_messages
		erb :"cats/new"
	end
end

# EDIT
get '/cats/:id/edit' do
	@cat = Cat.find(params[:id])
	erb :"cats/edit"
end

# UPDATE
patch '/cats/:id' do
	@cat = Cat.find(params[:id])
	if @cat.update(name: params[:name], age: params[:age])
	else
		@errors = @cat.errors.full_messages
		erb :"cats/edit"
	end
end	

# DELETE
delete "/cats/:id" do
	cat = Cat.find(params[:id])
	cat.destroy
	redirect '/cats'
end



























