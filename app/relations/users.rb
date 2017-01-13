class Users < ROM::Relation[:sql]
  schema(:users, infer: true) do
    associations do
      belongs_to :contact
    end
  end

  def by_id(id)
    where(id: id)
  end
end
