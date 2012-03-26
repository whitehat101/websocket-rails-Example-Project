# WebSocket-Rails Example Application

This is an example implementation of the [websocket-rails](https://github.com/DanKnox/websocket-rails) gem. 

## Event Routing

Check out `app/config/initializers/events.rb` for the example event routing.

## Controller Implementation

Check out `app/controllers/chat_controller.rb` for the example websocket controller.

## Installation/Usage

1. Clone the git repo
2. Run the `bundle` command inside the directory
3. Fire up the web server on port 3000 `thin-websocket -p 3000 start`
4. Browse to `http://localhost:3000` in a browser that supports WebSockets

*You must start the app on port 3000 or the javascript client will not be able to connect*