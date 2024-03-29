require 'test_helper'

class StatusTest < ActiveSupport::TestCase
	test "that a testimonial requires content" do
		status = Status.new
		assert !status.save
		assert !status.errors[:content].empty?
	end

	test "check that testimonial is at least 2 letters long" do
		status = Status.new
		status.content = "H"
		assert !status.save
		assert !status.errors[:content].empty?
	end

	test "that a status has a user id" do
		status = Status.new
		status.content = "Hello"
		assert !status.save
		assert ! status.errors[:user_id].empty?
	end
end
