Given (/^I visit the homepage$/) do
  visit(root_path)
end

Then (/^I should see the homepage$/) do
  find('.profiles#index')
end
