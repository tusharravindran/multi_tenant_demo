class User < ApplicationRecord
  belongs_to :account
  acts_as_tenant(:account)
end
