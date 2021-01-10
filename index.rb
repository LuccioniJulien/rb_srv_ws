require "sinatra"
require "./broadcaster.rb"

get "/" do
  if Faye::WebSocket.websocket?(env)
    handle_websocket(env)
  else
    erb :index
  end
end
