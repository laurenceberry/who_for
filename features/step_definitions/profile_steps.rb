Given(/^There are profiles$/) do
  @profiles = FactoryGirl.create_list(:profile, 5)
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
  @pack = 'test pack'
  within 'form.new_profile' do
    fill_in 'Name', with: @name
    fill_in 'Description', with: @desc
    fill_in 'Pack', with: @pack
    find("input[type='submit']").click
  end
  @profile = Profile.last
end

Then (/^I should see the persona$/) do
  visit(profile_path(@profile))
  page.has_content?(@name)
  page.has_content?(@desc)
  page.has_content?(@pack)
end

Then (/^I should no longer see the persona$/) do
  visit(profiles_path)
  page.has_no_text?(@profiles.first.name)
end
