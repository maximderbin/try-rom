class Users < ROM::Relation[:sql]
  schema(:users) do
    attribute :id, ROM::Types::Strict::Int
    attribute :contact_id, ROM::Types::Strict::Int
  end

  def by_id(id)
    where(id: id)
  end
end
