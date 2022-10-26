class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email
  has_many :cases
    has_many :cases, through: :admin

end
