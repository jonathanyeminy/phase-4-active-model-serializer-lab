class AuthorSerializer < ActiveModel::Serializer
  attributes :name, :profile

  has_one :profile, include: [:username, :email, :bio, :avatar_url]
  has_many :posts
end
