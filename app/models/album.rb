class Album < ActiveRecord::Base

  attr_accessible :title, :band_id, :recording_conditions

  validates :title, :band_id, presence: true

  has_many(
  :recordings,
  class_name: "Track",
  foreign_key: :album_id,
  primary_key: :id,
  dependent: :destroy
  )

  belongs_to(
  :band,
  class_name: "Band",
  foreign_key: :band_id,
  primary_key: :id,
  )


end