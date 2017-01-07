ROM::SQL.migration do
  change do
    create_table :users do
      primary_key :id
      column :contact_id, Integer, null: false, unique: true
    end
  end
end
