class CreateAccounts < ActiveRecord::Migration[8.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :subdomain

      t.timestamps
    end
    add_index :accounts, :subdomain, unique: true
  end
end
