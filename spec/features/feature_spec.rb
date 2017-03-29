# Write a feature test that checks that the hompage says Testing infrastructure working!.
# feature 'Testing infrastructure' do # Like 'Describe'.
#   scenario 'Can run app and check page content' do # Like 'it'.
#     visit('/') # Specify URL.
#     expect(page).to have_content 'Testing infrastructure working!'
#     end
#   end

feature 'Player Sign-up' do
  scenario 'Player 1 can see the name they provide' do
        sign_in_and_play
    expect(page).to have_content 'Ed vs. Connie'
  end
end

feature 'Display Hit Points' do
  scenario 'Players can see each others hit points' do
        sign_in_and_play
    expect(page).to have_content 'Ed: 100HP'
    expect(page).to have_content 'Connie: 100HP'
  end
end

feature 'Attack player 2' do
  scenario 'Player 1 attacks player 2' do
    sign_in_and_play
    click_link 'BITE!'
    expect(page).to have_content "Ed has used BITE!"
  end
end
