class SerializableCity < JSONAPI::Serializable::Resource
  type 'cities'
  attribute :name
  attribute :created_at
  attribute :updated_at
  has_one :country
  has_many :from_ways
  has_many :to_ways
end
