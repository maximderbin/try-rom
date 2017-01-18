CreateUserTransaction = Dry.Transaction(container: Container) do
  step :process
  step :validate
  step :persist
end
