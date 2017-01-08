class Contacts < ROM::Relation[:http]
  gateway :http

  schema do
    attribute :Id, ROM::Types::Strict::String.meta(primary_key: true, alias: :id)
    attribute :IsDeleted, ROM::Types::Strict::Bool.meta(alias: :is_deleted)
    attribute :FirstName, ROM::Types::Strict::String.meta(alias: :first_name)
    attribute :ints__Middle_Name__c, ROM::Types::Strict::String.optional.meta(alias: :middle_name)
    attribute :LastName, ROM::Types::Strict::String.meta(alias: :last_name)
    attribute :Email, ROM::Types::Strict::String.meta(alias: :email)
    attribute :Birthdate, ROM::Types::Json::Date.meta(alias: :dob)
    attribute :Age__c, ROM::Types::Form::Int.meta(alias: :age)
    attribute :genesis__SSN__c, ROM::Types::Strict::String.meta(alias: :ssn)
    attribute :HomePhone, ROM::Types::Strict::String.meta(alias: :phone_number_home)
    attribute :MobilePhone, ROM::Types::Strict::String.meta(alias: :phone_number_mobile)
    attribute :MailingStreet, ROM::Types::Strict::String.meta(alias: :address_street)
    attribute :MailingCity, ROM::Types::Strict::String.meta(alias: :address_city)
    attribute :MailingState, ROM::Types::Strict::String.meta(alias: :address_state)
    attribute :MailingPostalCode, ROM::Types::Strict::String.meta(alias: :address_postal_code)
    attribute :MailingCountry, ROM::Types::Strict::String.meta(alias: :address_country)
    attribute :CreatedDate, ROM::Types::Json::DateTime.meta(alias: :created_timestamp)
    attribute :LastModifiedDate, ROM::Types::Json::DateTime.meta(alias: :modified_timestamp)
    attribute :SystemModstamp, ROM::Types::Json::DateTime.meta(alias: :system_modified_timestamp)
    attribute :Microbilt_Reference_Token__c, ROM::Types::Strict::String.optional.meta(alias: :microbilt_token)
    attribute :Call_Marketing__c, ROM::Types::Strict::Bool.meta(alias: :call_marketing_disclosure)
    attribute :Text_Marketing__c, ROM::Types::Strict::Bool.meta(alias: :text_marketing_disclosure)
  end

  def by_id(id)
    with_options(
      base_path: '/services/data/v20.0/sobjects/Contact',
      path: id.to_s)
  end

  def for_user(users)
    by_id(users.one![:contact_id])
  end
end
