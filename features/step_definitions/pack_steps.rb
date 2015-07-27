Given(/^There are packs$/) do
  @packs = FactoryGirl.create_list(:pack, 5)
end


Given(/^I choose to add a new persona$/) do
  page
end
Then(/^I should see 5 existing packs$/) do
  page.has_content?(@packs.first.name)
  page.has_content?(@packs.last.name)
end
