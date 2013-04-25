var io = require('socket.io').listen(5001),
    redis = require('redis').createClient();

redis.subscribe('audio-source-change');

io.sockets.on('connection', function(socket, client){                      //origonally io.on
  redis.on('message', function(channel, message){
    socket.emit('audio-source-change', JSON.parse(message));
  });
});
