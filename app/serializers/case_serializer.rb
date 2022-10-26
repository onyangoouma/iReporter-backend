class CaseSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :location, :date, :image url
  belongs_to :user
  belongs_to :admin
end
