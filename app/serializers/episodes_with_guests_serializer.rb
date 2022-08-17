class EpisodesWithGuestsSerializer < ActiveModel::Serializer
  attributes :id, :date, :number
  has_many :guests
end
