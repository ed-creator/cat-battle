# Write a feature test that checks that the hompage says Testing infrastructure working!.
# feature 'Testing infrastructure' do # Like 'Describe'.
#   scenario 'Can run app and check page content' do # Like 'it'.
#     visit('/') # Specify URL.
#     expect(page).to have_content 'Testing infrastructure working!'
#     end
#   end

feature 'Player Sign-up' do
  scenario 'Player 1 can see the name they provide' do
    visit('/')
    fill_in :player_1_name, with: 'Ed'
    fill_in :player_2_name, with: 'Connie'
    click_button 'Submit'
    expect(page).to have_content 'Ed vs. Connie'
  end
end

feature 'Display Hit Points' do
  scenario 'Players can see each others hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Ed'
    fill_in :player_2_name, with: 'Connie'
    click_button 'Submit'
    expect(page).to have_content 'Ed: 100HP'
    expect(page).to have_content 'Connie: 100HP'
  end
end
