class SerializableResult < JSONAPI::Serializable::Resource
  type 'results'
  attribute :distance
  attribute :path
  attribute :start_city
  attribute :end_city
end
