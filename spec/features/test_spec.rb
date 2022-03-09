feature 'test' do
  scenario 'simple test' do
    visit('/')
    expect(page).to have_content 'Hello Battle!'
  end

  scenario 'get a player name' do
    visit('/name_form')
    expect(page).to have_field 'name'
    fill_in('name', with: 'Pro Gamer')
  end
end