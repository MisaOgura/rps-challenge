feature 'User entry' do
  scenario 'Index page displays welcome message' do
    visit '/'
    expect(page).to have_content('Rock-Paper-Scissors!!!')
  end
end
