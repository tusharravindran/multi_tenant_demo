account1 = Account.create!(name: "Acme Corp", subdomain: "acme")
account2 = Account.create!(name: "Beta LLC", subdomain: "beta")

account1.users.create!(name: "Alice", email: "alice@acme.com")
account2.users.create!(name: "Bob", email: "bob@beta.com")

account1.projects.create!(name: "Acme Project", description: "Acme's first project")
account2.projects.create!(name: "Beta Launch", description: "Beta's launch project")
