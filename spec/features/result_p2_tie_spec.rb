feature 'Result page: draw game' do

  before(:each) do
    enter_game
    both_sign_in_and_enter_game
    visit '/p2_play'
    click_button('ROCK')
    visit '/p1_play'
    click_button('ROCK')
  end

  scenario '0.0. Displays player1\'s choice' do
    expect(page).to have_content('You have chosen... ROCK!')
  end

  scenario '0.1. Displays player2\'s choice' do
    expect(page).to have_content('Clems has chosen... ROCK!')
  end

  scenario '0.2. Annouce draw when p1 and p2 choose same move' do
    expect(page).to have_content('You and Clems draw!')
  end
end