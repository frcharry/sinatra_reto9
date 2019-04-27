require 'sinatra'


get '/' do
  req = request.env
  if req["HTTP_PERMISO"] == "soy-un-token-secreto"
    puts "Si lo logramos!"
  else
    puts "Sin permiso"
  end
end
