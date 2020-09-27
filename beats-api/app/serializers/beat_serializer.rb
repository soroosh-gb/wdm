class BeatSerializer < ActiveModel::Serializer
  attributes :id, :name, :tempo, :steps, :user

  belongs_to :user 
end
