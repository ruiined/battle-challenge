feature 'test' do
  scenario 'get a player name' do
    visit('/')
    expect(page).to have_field 'player_1_name'
  end

  scenario 'submits the form' do
    sign_in_and_play
    expect(page).to have_content('Pro Gamer vs Noob')
  end

  scenario 'see player 2s hit points' do
    sign_in_and_play
    expect(page).to have_content('Noob has 50 health remaining')
  end

  scenario "shows whose turn it is" do
    sign_in_and_play
    expect(page).to have_content("It is Pro Gamer's turn")
  end

  scenario 'attack player 2 and get a confirmation' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Pro Gamer attacked Noob')
  end

	scenario 'attack on player 2 reduces their hp by 10' do
		sign_in_and_play
		click_button('Attack')
		expect(page).to have_content('Noob has 40 health remaining')
	end

  scenario "switches turns" do
    sign_in_and_play
    click_button('Attack')
    click_button('Go Back')
    expect(page).to have_content("It is Noob's turn")
  end
end