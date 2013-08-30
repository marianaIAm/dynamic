require 'spec_helper'

# Note - from Pivotal Tracker:
# Story: Trainer should be able to see a list of
# all of their clients when they log in.
#
#

feature "trainer sees clients after login", js: true  do
  context "successful" do
    scenario "logging in" do
      visit '/home/index'

      click_link 'login'

      expect(page).to have_content 'email'
      expect(page).to have_content 'password'
    end
  end
end
