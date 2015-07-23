Given(/^There are profiles$/) do
  @pack = FactoryGirl.create(:pack_with_profiles)
  @profiles = @pack.profiles
end

Then(/^I should see 5 existing personas$/) do
  page.has_content?(@profiles.first.name)
  page.has_content?(@profiles.last.name)
end

Then (/^I should be able to create a persona$/) do
  page.has_selector?(".new_profile")
end

Given (/^I fill in the profile fields$/) do
  @name = 'Luke Mitchell'
  @desc = 'hello'
  @age = 54
  within 'form.new_profile' do
    fill_in 'Name', with: @name
    fill_in 'Description', with: @desc
    fill_in 'Age', with: @age
    find("input[type='submit']").click
  end
  @profile = Profile.last
end

Given (/^I edit the profile fields$/) do
  @name = 'Luke Mitchell'
  @desc = 'hello'
  @age = 54
  within 'form.edit_profile' do
    fill_in 'Name', with: @name
    fill_in 'Description', with: @desc
    fill_in 'Age', with: @age
    find("input[type='submit']").click
  end
  @profile = Profile.last
end

Then (/^I should see the persona$/) do
  page.has_content?(@name)
  page.has_content?(@desc)
end

Then (/^I should see the generated name$/) do
  page.has_content?(Profile.last.name)
end

Then (/^I should no longer see the persona$/) do
  page.has_no_text?(@profiles.first.name)
end

Then (/^I should see the updated persona$/) do
  page.has_text?(@name)
end

Then (/^I should be able to edit a persona$/) do
  page.has_selector?('edit_profile')
end
