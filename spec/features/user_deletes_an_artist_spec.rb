require 'rails_helper'

RSpec.feature "User deletes an artist" do 
  scenario "they see the page for the individual artist" do 
    artist = Artist.create(name: "Snoop Lion", image_path: "http://www.trbimg.com/img-514a3eec/turbine/la-et-ms-five-reggae-jams-that-blow-away-snoop-001/600/600x433")
    
    visit artist_path(artist)
    click_on "Delete"

    expect(page).to_not have_content artist.name
    expect(page).to_not have_css("img[src=\"#{artist.image_path}\"]")
  end
end