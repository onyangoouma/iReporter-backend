class IncidentSerializer < ActiveModel::Serializer
  attributes :id, :incident_type, :title, :description, :location, :date, :image_url, :status
  belongs_to :user
  belongs_to :admin
end
