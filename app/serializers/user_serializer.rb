class UserSerializer
  include JSONAPI::Serializer
  attributes :name, :username, :hometown
end
