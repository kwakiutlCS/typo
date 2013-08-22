Given /^the following categories exist:$/ do |table|
  table.hashes.each do |a|
    Category.create(a)
  end
end
