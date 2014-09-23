class WelcomeController < ApplicationController
  def index
  	song = Echonest::Song.new('K1RQLGXWBMUAYZOAI')

	params = { song_min_hotttnesss: 0.3, format: "json"}
	@Songs = song.search(params)

	# create a client object with your app credentials
	@client = Soundcloud.new(:client_id => 'ab607d302c6da74db4b68567374ba72c')

	# find all sounds of buskers licensed under 'creative commons share alike'
	@track = @client.get('/tracks', :q => @Songs[0][:title], :limit => 1)[0]
	# @Tracks = client.get('/oembed', track)
  end
end
