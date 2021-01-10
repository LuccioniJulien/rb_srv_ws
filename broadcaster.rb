require "faye/websocket"

def handle_websocket(env)
  ws = Faye::WebSocket.new(env)
  
  ws.on :message do |event|
    puts event.data
    ws.send(event.data)
  end

  ws.on :close do |event|
    p [:close, event.code, event.reason]
    ws = nil
  end

  # Return async Rack response
  ws.rack_response
end
