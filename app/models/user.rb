class User < ApplicationRecord
  has_many :user_groups
  has_many :groups, through: :users_groups
  has_many :messages
end
