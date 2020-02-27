class SerializableWay < JSONAPI::Serializable::Resource
  type 'ways'
  attribute :distance
  attribute :created_at
  attribute :updated_at
  has_one :city_from
  has_one :city_to
end
