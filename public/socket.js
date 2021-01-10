var url = window.location.host
// Create WebSocket connection.
const socket = new WebSocket('ws://' + url);

// Connection opened
socket.addEventListener('open', function (event) {
    socket.send('Hello Server!');
});

// Listen for messages
socket.addEventListener('message', function (event) {
    console.log('Message from server ', event.data);
});