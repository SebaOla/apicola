Then /^the response should be OK$/ do
	page.driver.status_code.should == 200
end

When /^I post to "(.*?)" with:$/ do |url, content|
  if content.class.name == 'Cucumber::Ast::Table' then
  	page.driver.submit :post, url, content.hashes.first
  elsif content.class.name == 'Cucumber::Ast::DocString'
  	page.driver.submit :post, url, JSON.parse(content)
  else
  	page.driver.submit :post, url, {}
  end
end

When /^I visit "(.*?)"$/ do |url|
  visit url
end

When /^I put "(.*?)" with:$/ do |url, content|
  if content.class.name == 'Cucumber::Ast::Table' then
    url = url + Apiary.first.id.to_s
  	page.driver.submit :put, url, content.hashes.first
  elsif content.class.name == 'Cucumber::Ast::DocString'
  	page.driver.submit :put, url, JSON.parse(content)
  else
  	page.driver.submit :put, url, {}
  end
end

When /^I delete "(.*?)"$/ do |url|
  url = url + Apiary.first.id.to_s
  page.driver.submit :delete, url, {}
end

Then /^I should see "(.*?)"$/ do |url|
  url.should eq(current_path)
end