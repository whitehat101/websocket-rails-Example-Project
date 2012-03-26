class ChatController < WebsocketRails::BaseController
  
  def initialize_session
    @users = []
    puts "Session Initialized\n"
  end
  
  def client_connected
    # do something when a client connects
  end
  
  def new_message
    puts "Message from UID: #{client_id}\n"
    broadcast_message :new_message, message
  end
  
  def new_user
    puts "storing user in data store\n"
    data_store[:user] = message
    broadcast_user_list
  end
  
  def change_username
    data_store[:user] = message
    broadcast_user_list
  end
  
  def delete_user
    data_store.remove_client
    braodcast_user_list
  end
  
  def broadcast_user_list
    users = data_store.each_user
    puts "broadcasting user list: #{users}\n"
    broadcast_message :user_list, users
  end
  
end
