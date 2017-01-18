UserValidator = Dry::Validation.Schema do
  required(:first_name).filled
  required(:last_name).filled
  required(:email).filled(format?: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i)
  required(:password).filled
end
