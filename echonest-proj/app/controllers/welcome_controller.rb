class WelcomeController < ApplicationController
  Echowrap.configure do |config|
  	config.api_key =       'K1RQLGXWBMUAYZOAI'
  	config.consumer_key =  '2ec1d1afba154f4adc036cb494ef6cb3'
  	config.shared_secret = 'fBkzP7rBRL+LnTyw5y3zdQ'
  end
  
  def index

  	@Songs =  Echowrap.song_search(artist: 'Childish Gambino')

	# create a client object with your app credentials
	@client = Soundcloud.new(:client_id => 'ab607d302c6da74db4b68567374ba72c')

	if @Songs.empty?
		@search = false
	else
		@search = true
		@track = @client.get('/tracks', :q => @Songs[3].title, :limit => 10)
	end
  end
end
