class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email
  has_many :incidents
    has_many :incidents, through: :admin

end
