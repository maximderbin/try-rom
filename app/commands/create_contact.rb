class CreateContact < ROM::Commands::Create[:http]
  relation :contacts
  register_as :create
  result :one
end
