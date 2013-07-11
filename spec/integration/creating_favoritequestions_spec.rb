require 'spec_helper'
feature 'Creating Favorite Question' do
scenario "can create a favorite question" do
visit '/'
click_link 'New Favorite Question'
fill_in 'Background', :with => 'I just read about this'
fill_in 'Questionword', :with => "Why"
fill_in 'Specificdunno', :with => "Is this a that?"
click_button 'Create Favoritequestion'
page.should have_content('Favorite Question has been created.')
end
end
