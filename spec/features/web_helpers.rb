def sign_in_and_play
  visit('/')
  fill_in('player_1', with: 'Pro Gamer')
  fill_in('player_2', with: 'Noob')
  click_button('Submit')
end