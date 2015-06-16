Given (/^I visit the homepage$/) do
  visit(root_path)
end

Then (/^I should see the homepage$/) do
  find('.pages#index')
end

Given (/^I click the link "(.*?)"$/) do |link|
  click_link(link)
end

Given (/^I click on the persona$/) do
  first('.profile.view').click
end
