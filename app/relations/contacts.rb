class Contacts < ROM::Relation[:http]
  def by_id(id)
    with_path("/services/data/v20.0/sobjects/Contact/#{id}")
  end
end
