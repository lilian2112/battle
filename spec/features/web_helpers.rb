def sign_in_and_play
  visit('/')
  fill_in :name_1, with: "Peter"
  fill_in :name_2, with: "Stan"
  click_button 'touch me, I know you want to'
end
