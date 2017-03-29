# Write a feature test that checks that the hompage says Testing infrastructure working!.
feature 'Testing infrastructure' do # Like 'Describe'.
  scenario 'Can run app and check page content' do # Like 'it'.
    visit('/') # Specify URL.
    expect(page).to have_content 'Testing infrastructure working!'
    end
  end
