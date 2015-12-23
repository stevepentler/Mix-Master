require 'rails_helper'

RSpec.feature "User views all artists" do
  scenario "they see the names of each artist" do
    artists = %w(Ja-Rule DMX TLC).map do |artist_name|
      Artist.create(name: artist_name, image_path: "https://s3.amazonaws.com/rapgenius/51ev5hrkbel-_ss400_.jpg")
    end

    visit artists_path

    artists.each do |artist|
      expect(page).to have_link artist.name, href: artist_path(artist)
    end
  end
end
