require 'rails_helper'

RSpec.feature "User edits a playlist" do 
  scenario "they see the page for the individual artist" do 
    playlist1 = create_list(:playlist, 1)

    visit playlists_path
  end 
end 