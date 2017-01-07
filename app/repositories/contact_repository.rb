class ContactRepository < ROM::Repository[:contacts]
  def [](id)
    contacts.relation.by_id(id).one!
  end
end
