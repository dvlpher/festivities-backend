class UserSerializer
  include JSONAPI::Serializer
  attributes :name, :username
  has_many :trips, serializer: TripSerializer
  belongs_to :hometown, serializer: HometownSerializer
  attribute :hometown do |user|
    {
      city: user.hometown.city,
      state: user.hometown.state,
      country: user.hometown.country
    }
  end
end
 