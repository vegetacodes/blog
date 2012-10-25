Given /^I have posts entitled (.+)$/ do |titles|
  titles.split(', ').each do |title|
	Post.create!(:title => title, :body => "test")
  end
end