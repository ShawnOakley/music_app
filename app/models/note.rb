class Note < ActiveRecord::Base

  attr_accessible :comment, :track_id

  validates :comment, :track_id, presence: true



  belongs_to(
  :track,
  class_name: "Track",
  foreign_key: :track_id,
  primary_key: :id,
  )


end