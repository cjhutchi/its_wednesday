namespace :twitter do
  desc "Tuuuuuesdays goooooone with the wiiiiiiind"
  task tuesdays_gone: :environment do
    client = Twitter::REST::Client.new do |config|
      config.access_token        = Rails.application.credentials.twitter[:access_token]
      config.access_token_secret = Rails.application.credentials.twitter[:access_token_secret]
      config.consumer_key        = Rails.application.credentials.twitter[:consumer_key]
      config.consumer_secret     = Rails.application.credentials.twitter[:consumer_secret]
    end

    media = File.open('lib/assets/Its Wednesday.mp4')

    client.update_with_media('', media)
  end
end
