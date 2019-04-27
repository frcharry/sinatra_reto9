require 'sinatra'


get '/' do
  req = request.env
  if req["HTTP_PERMISO"] == "soy-un-token-secreto"
    "Si lo logramos!"
  else
    "Sin Permiso"
  end
end
