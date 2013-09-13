# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Band.create([{ name: 'Band_1' }, { name: 'Band_2' }, { name: 'Band_3' }])

Album.create([ { title: 'Band_2_album', band_id: 2 }, { title: 'Band_3_album', band_id: 3 }])

Track.create(
  title: 'Track_1',
  album_id: 1,
  lyrics: "These are the lyrics to Track_1_Album_1_Band_1")

Track.create(
  title: 'Track_2',
  album_id: 1,
  lyrics: "These are the lyrics to Track_2_Album_1_Band_1")

Track.create(
  title: 'Track_1',
  album_id: 2,
  lyrics: "These are the lyrics to Track_1_Album_2_Band_2")

Track.create(
  title: 'Track_1',
  album_id: 3,
  lyrics: "These are the lyrics to Track_1_Album_3_Band_3")