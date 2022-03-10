def sign_in_and_play
  visit('/')
  fill_in('player_1_name', with: 'Pro Gamer')
  fill_in('player_2_name', with: 'Noob')
  click_button('Submit')
end

def attack
  click_button('Attack')
  click_button('Go Back')
end