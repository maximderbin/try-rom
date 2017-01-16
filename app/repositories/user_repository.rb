class UserRepository < ROM::Repository[:users]
  relations :contacts

  def [](id)
    users.by_id(id).combine_parents(one: contacts.for_user).one!
  end

  def create(tuple)
    command = ROM.env.command([
      { contact: :contacts }, [:create, [{ user: :users }, [:create]]]
    ])
    command.call(contact: tuple.merge(user: {}))
  end
end
