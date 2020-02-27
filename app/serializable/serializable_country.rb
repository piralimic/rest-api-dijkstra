class SerializableCountry < JSONAPI::Serializable::Resource
  type 'countries'
  attribute :name
  attribute :created_at
  attribute :updated_at
  has_many :cities
  has_many :from_ways
end
