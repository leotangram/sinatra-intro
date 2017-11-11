# Index

get '/' do
  @figthers = Figther.all
  erb :index
end

# get '/figthers/new' do
# 	erb :new
# end


# get '/:nombre' do
# 	"Hola #{params[:nombre]}!"
# 	erb
# end