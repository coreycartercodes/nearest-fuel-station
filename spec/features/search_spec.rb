require 'rails_helper'

describe "user can visit the welcome page" do
  scenario "and see a dropdown menu" do
    visit '/'
    
    click_button 'Find Nearest Station'
    expect(current_path).to eq("/search")
    expect(page).to have_content("Nearest Fuel Station")
    expect(page).to have_content("Hyatt Regency - Denver")
    expect(page).to have_content("650 15th St")
    expect(page).to have_content("ELEC")
    expect(page).to have_content("24 hours daily; pay lot")
# - the distance of the nearest station (should be 0.1 miles)
# - the travel time from Turing to that fuel station (should be 1 min)
# - The direction instructions to get to that fuel station
#   "Turn left onto Lawrence St Destination will be on the left"
  end
end
