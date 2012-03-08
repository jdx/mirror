When /^I submit the check out form$/ do
  fill_in 'checkout[what_i_got_done]', with: 'this is what i got done'
  fill_in 'checkout[what_i_didnt_get_done]', with: 'this is what i didnt get done'
  fill_in 'checkout[what_i_still_need_to_do]', with: 'this is what i still need to do'
  click_button 'Check out'
end

Then /^I should have checked out$/ do
  pending
end
