# post spec.rb
require 'spec_helper'
describe Post do
before(:each) do
	@post = Post.new(valid_attributes)
end

it "should not be valid without a title" do
@post.title = ''
@post.should_not be_valid
end

it "should not be valid without a body" do
@post.body = ''
@post.should_not be_valid
end

it "should be valid" do
	@post.should be_valid
end

def valid_attributes
	{:title => 'test post', :body => 'description for test post'}
end
end