class UserRepository < ROM::Repository[:users]
  commands :create

  def [](id)
    users.by_id(id).one!
  end
end
