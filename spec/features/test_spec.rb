feature 'test' do
  scenario 'get a player name' do
    visit('/')
    expect(page).to have_field 'player_1'
  end

  scenario 'submits the form' do
    visit('/')
    fill_in('player_1', with: 'Pro Gamer')
    fill_in('player_2', with: 'Noob')
    click_button('Submit')
    expect(page).to have_content('Pro Gamer vs Noob')
  end
end

