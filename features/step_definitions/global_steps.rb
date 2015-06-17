Given (/^I visit the homepage$/) do
  visit(root_path)
end

Given (/^I visit a pack$/) do
  first('a.pack').click
end

Then (/^I should see the homepage$/) do
  find('.pages#index')
end

Given (/^I click the link "(.*?)"$/) do |link|
  click_link(link)
end

Given (/^I click the first link "(.*?)"$/) do |link|
  first(:link, link).click
end

Given (/^I click on the persona$/) do
  first('.profile.view').click
end
