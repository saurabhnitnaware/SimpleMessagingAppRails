module Features

def create_message(body)
  user = FactoryGirl.create(:user)
  user2 = FactoryGirl.create(:user)
  login_as(user,:scope=>:user)
  visit root_path
      #create_message('hello world')

      #expect(page.current_path).to eq root_path
      #expect(page).to have_content 'Message Sent!'
  click_on 'New'
  fill_in 'Message', :with=> 'body goes here'
  check('user'+ user.id.to_s)
  check(''user'+ user2.id.to_s')
  click_on 'submit'

  expect(page).to_have_content 'Message Sent'
  end
end