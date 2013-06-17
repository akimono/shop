CarrierWave.configure do |config|
	config.fog_credentials ={

		:provider => 'AWS',
		:aws_acess_key_id => ENV[AKIAI2AVYGJ3CUGRYP6Q],
		:aws_secret_access_key => ENV[GJANA2uuhUhOco0X3iKobH8JSaO3yLEb12LROS],
		:region => ENV['us-west-2']
	}

	config.cache_dir = "#{Rails.root}/tmp/uploads"
	config.fog_directory = ENV['akimono']
	config.s3_access_policy = :public_read
	config.fog_host = "#{ENV['https://s3-us-west-2.amazonaws.com/akimono/']}/#{ENV['akimono']}"
end
