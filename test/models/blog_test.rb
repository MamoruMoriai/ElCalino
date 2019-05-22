require 'test_helper'

class BlogTest < ActiveSupport::TestCase
    test "blog" do
        blog = FactoryGirl.create(:blog)
        assert_equal "news1", blog.title
        assert_equal "content1", blog.content
        assert_equal Date.today, blog.time
    end
    
    test "presence" do
        blog = Blog.new
        assert blog.invalid?
        assert blog.errors.include?(:title)
        assert blog.errors.include?(:content)
        assert blog.errors.include?(:time)
    end
end