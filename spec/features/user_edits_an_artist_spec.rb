require 'rails_helper'

RSpec.feature "User edits an existing artist" do 
  scenario "they see the page for the individual artist" do 
      artist = Artist.create(name: "Snoop Dogg", image_path: "http://www.trbimg.com/img-514a3eec/turbine/la-et-ms-five-reggae-jams-that-blow-away-snoop-001/600/600x433")
      updated_name = "Snoop Lion"

    visit artist_path(artist)
    click_on "Edit Artist"
    fill_in "artist_name", with: updated_name
    click_on "Update Artist"
    
    expect(page).to have_content updated_name
    expect(page).to_not have_content artist.name
    expect(page).to have_css("img[src=\"#{artist.image_path}\"]")
  end 
end 
