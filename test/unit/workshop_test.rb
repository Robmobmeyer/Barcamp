require 'test_helper'

class WorkshopTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should validate pressence of name' do
    workshop = Workshop.new
    workshop.valid?
    assert workshop.errors.has_key?(:name)
    assert_equal ["can't be blank"], workshop.errors.messages[:name]
  end
end
