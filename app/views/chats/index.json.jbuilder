json.array!(@chats) do |chat|
  json.extract! chat, :id, :messages, :user_id
  json.url chat_url(chat, format: :json)
end
