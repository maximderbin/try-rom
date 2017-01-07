class Contact < ROM::Mapper
  reject_keys true

  attribute :id, from: :Id
  attribute :is_active, from: :IsDeleted { |v| !v }
  attribute :first_name, from: :FirstName
  attribute :middle_name, from: :ints__Middle_Name__c
  attribute :last_name, from: :LastName
  attribute :email, from: :Email
  attribute :dob, from: :Birthdate { |v| Date.parse(v) }
  attribute :age, from: :Age__c { |v| v.to_i }
  attribute :ssn, from: :genesis__SSN__c
  attribute :phone_number_home, from: :HomePhone
  attribute :phone_number_mobile, from: :MobilePhone
  attribute :address_street, from: :MailingStreet
  attribute :address_city, from: :MailingCity
  attribute :address_state, from: :MailingState
  attribute :address_postal_code, from: :MailingPostalCode
  attribute :address_country, from: :MailingCountry
  attribute :created_timestamp, from: :CreatedDate { |v| DateTime.parse(v) }
  attribute :modified_timestamp, from: :LastModifiedDate { |v| DateTime.parse(v) }
  attribute :system_modified_timestamp, from: :SystemModstamp { |v| DateTime.parse(v) }
  attribute :microbilt_token, from: :Microbilt_Reference_Token__c
  attribute :call_marketing_disclosure, from: :Call_Marketing__c
  attribute :text_marketing_disclosure, from: :Text_Marketing__c
end
