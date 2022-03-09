feature 'test' do
  scenario 'get a player name' do
    visit('/')
    expect(page).to have_field 'player_1'
  end

  scenario 'submits the form' do
    sign_in_and_play
    expect(page).to have_content('Pro Gamer vs Noob')
  end

  scenario 'see player 2s hit points' do
    sign_in_and_play
    expect(page).to have_content('Noob has 50 health remaining')
  end
end