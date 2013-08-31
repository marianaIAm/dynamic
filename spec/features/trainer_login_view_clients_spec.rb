require 'spec_helper'

# Note - from Pivotal Tracker:
# Story: Trainer should be able to see a list of
# all of their clients when they log in.
#
#

feature "trainer sees clients after login", js: true  do
  context "successful" do
    scenario "logging in" do
      visit '/'

      click_link 'Login'

      expect(page).to have_content 'Email'
      expect(page).to have_content 'Password'

      fill_in 'Email', with: 'bella@doggy.com'
      fill_in 'Password', with: 'belladoggy'

      click_button 'Sign in'

      expect(current_path).to eql '/'
      expect(page).to have_content 'Bob Smith'
    end
  end
end
