class UserRepository < ROM::Repository[:users]
  commands :create
  relations :contacts

  def [](id)
    users.by_id(id).combine_parents(one: contacts.for_user).one!
  end
end
