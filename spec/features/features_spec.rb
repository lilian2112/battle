
feature 'Enter names' do
  scenario 'choosing heroes' do
    sign_in_and_play
    expect(page).to have_content "Peter"
    expect(page).to have_content "Stan"
  end
end

feature 'shows hit points' do
  scenario 'players start out with 100HP each' do
    visit('/play')
    expect(page).to have_content("100HP")
  end
end
