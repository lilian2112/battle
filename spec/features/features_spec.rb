
feature 'Enter names' do
  scenario 'choosing players' do
    sign_in_and_play
    expect(page).to have_content "Peter"
    expect(page).to have_content "Stan"
  end
end

feature 'shows hit points' do
  scenario 'players start out with 60HP each' do
    visit('/play')
    expect(page).to have_content("60")
  end
end

feature 'attack opponent' do
  scenario 'player 1 talks sh**t about player 2' do
    sign_in_and_play
    click_button("ATTACK!")
    visit('/attack')
    expect(page).to have_content"Stan what a strike!"
  end
end

# feature 'return to play page' do
#   scenario 'return to battle after attack' do
#     sign_in_and_play
#     click_button("ATTACK!")
#     click_button("Back to the battle")
#     expect(page).to have_content("50")
#   end
# end
#
# feature 'retaliate' do
#   scenario 'the previously attacked player, can now attack their enemy' do
#     sign_in_and_play
#     click_button("ATTACK!")
#     click_button("Back to the battle")
#     click_button("ATTACK!")
#     click_button("Back to the battle")
#     expect(page).to have_content("Peter 50")
#   end
# end
# end
