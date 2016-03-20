feature 'Result page: winner decleration' do

  before(:each) do
    enter_game
    both_sign_in_and_enter_game
    visit '/p2_play'
    click_button('SCISSORS')
    visit '/p1_play'
    click_button('ROCK')
  end

  scenario '0.0. Displays player\'s choice' do
    expect(page).to have_content('You have chosen... ROCK!')
  end

  scenario '0.1. Displays player2\'s choice' do
    expect(page).to have_content('Clems has chosen... SCISSORS!')
  end

  scenario '0.2. Annouce winner' do
    expect(page).to have_content('You win!')
  end
end