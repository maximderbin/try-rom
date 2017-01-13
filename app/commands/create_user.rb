class CreateUser < ROM::Commands::Create[:sql]
  relation :users
  register_as :create
  result :one

  associates :contact, key: [:contact_id, :id]
end
