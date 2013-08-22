Given /^the following articles exist:$/ do |table|
  table.hashes.each do |attributes|
    Article.create(attributes)
  end

  
end
