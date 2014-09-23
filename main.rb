require 'echonest-ruby-api'

song = Echonest::Song.new('K1RQLGXWBMUAYZOAI')

params = { song_min_hotttnesss: 0.8, rank_type: "familiarity"}
puts song.search(params)