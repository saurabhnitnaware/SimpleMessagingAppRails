require 'rails_helper'

feature 'user visits homepage' do
	scenario ' successfully' do
		create_message('hello world')
		visit root_path
		
		expect(page).to have_css '.message'
	end
end