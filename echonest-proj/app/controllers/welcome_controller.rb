class WelcomeController < ApplicationController
  def index
  	song = Echonest::Song.new('K1RQLGXWBMUAYZOAI')

	params = { song_min_hotttnesss: 0.8, rank_type: "familiarity", format: "json"}
	@Songs = song.search(params)
  end
end
