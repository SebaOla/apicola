Given /^the following apiaries exist:$/ do |table|
  table.hashes.each do |attributes|
    Apiary.create!(attributes)
  end
end

Then /^the last apiary should match:$/ do |content|
  expected = content.hashes.first
  actual = Apiary.last

  actual.name.should eq expected[:name]
  actual.adress.should eq expected[:adress]
  actual.coordinates.should eq expected[:coordinates]
end

Then /^I should see first and last apiary match with:$/ do |content|

  expected = content.hashes.first
  actual = Apiary.first

  actual.name.should eq expected[:name]
  actual.adress.should eq expected[:adress]
  actual.coordinates.should eq expected[:coordinates]
  
  expected = content.hashes.last
  actual = Apiary.last

  actual.name.should eq expected[:name]
  actual.adress.should eq expected[:adress]
  actual.coordinates.should eq expected[:coordinates]
end

Then /^the apiary "(.*?)" should not exist$/ do |name|
  Apiary.find_by_name(name).should be_nil
end

When /^I edit an apiary$/ do
  url = "/apiaries/" + Apiary.first.id.to_s + "/edit"
  visit url
end

Then /^I should see the apiary edit page$/ do
  url = "/apiaries/" + Apiary.first.id.to_s + "/edit"
  url.should eq(current_path)
end
