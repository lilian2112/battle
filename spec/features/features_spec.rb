
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

feature 'attack opponent' do
  scenario 'player 1 talks sh**t about player 2' do
    sign_in_and_play
    click_button("Talk smack")
    visit('/attack')
    expect(page).to have_content"Stan got burned"
  end

feature 'return to play page' do
  scenario 'return to battle after attack' do
    sign_in_and_play
    click_button("Talk smack")
    click_button("Back to the battle")
    expect(page).to have_content("90HP")
  end
end
end
