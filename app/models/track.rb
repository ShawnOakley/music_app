class Track < ActiveRecord::Base

  attr_accessible :title, :album_id, :lyrics, :regular_track_status

  validates :title, :album_id, :lyrics, presence: true

  belongs_to(
  :album,
  class_name: "Album",
  foreign_key: :album_id,
  primary_key: :id
  )

  has_many(
  :comments,
  class_name: "Note",
  foreign_key: :track_id,
  primary_key: :id,
  dependent: :destroy
  )

end