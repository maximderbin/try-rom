class ContactRepository < ROM::Repository[:contacts]
  def [](id)
    Contact.build.call(contacts.relation.by_id(id)).first
  end
end
