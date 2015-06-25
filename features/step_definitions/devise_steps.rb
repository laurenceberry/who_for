module DeviseSH

  def sign_in_as(user)
    # login_as is a warden test helper
    login_as(user, scope: :user)
  end

  def create_user
    FactoryGirl.create(:user)
  end

end
World DeviseSH

Given /^A user exists$/ do
  @user = create_user
end

Given /^I am logged in as a user$/ do
  sign_in_as create_user
end

Given /^I visit the new user page$/ do
  visit(new_user_registration_path)
end

Given /^I visit the edit user page$/ do
  visit(edit_user_registration_path(@user))
end

Then /^I should be able to create a user$/ do
  find('form.new_user')
end

Then /^I should be able to edit a user$/ do
  find('form.edit_user')
end

Given /^I fill in the user fields$/ do
  @email = 'luke@wearefuturegov.com'
  @password = 'foobarbaz'
  within 'form.new_user' do
    fill_in 'Email', with: @email
    fill_in 'Password', with: @password
    fill_in 'Password confirmation', with: @password
    find("input[type='submit']").click
  end
end

Given /^I edit the user fields$/ do
  @new_email = 'luke@wearefuturegov.com'
  @new_password = 'newpasswordyo'
  within 'form.edit_user' do
    fill_in 'Email', with: @new_email
    fill_in 'Password', with: @new_password
    fill_in 'Password confirmation', with: @new_password
    fill_in 'user_current_password', with: 'foobarbaz'
    find("input[type='submit']").click
  end
end

Then /^I should see the user$/ do
  page.assert_text(@email)
end

Then /^I should see the updated user$/ do
  page.assert_text(@new_email)
end
