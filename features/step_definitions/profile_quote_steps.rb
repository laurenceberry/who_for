Then (/^I should see the quote form$/) do 
  page.assert_text('Quote content')
end

Then (/^I should see the quote$/) do 
  page.assert_text('Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.')
end 
