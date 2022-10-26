class AdminSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :cases, through: :users
  has_many :users, through: :cases

end
