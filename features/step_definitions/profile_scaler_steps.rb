Then (/^I should see the scaler form$/) do 
  page.assert_text('Scale Name')
end

Then (/^I should see the scaler$/) do 
  page.assert_text('Happiness')
end 
