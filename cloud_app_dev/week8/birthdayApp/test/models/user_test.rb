require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "cannot create a user without a birthday" do
    user1 = User.new(first_name: "Tom" , last_name: "Jones" )
    assert_not user1.valid?
  end
  
  test "can create a user without a first name" do
        user1 = User.new(last_name: "Jones" , birthday: Date.new(2024,7,9))
        assert user1.valid?
  end
  
  test " cannot create a user without a last name" do
        user1 = User.new(first_name: "Peter" , birthday: Date.new(2024,7,9))
        assert_not user1.valid?
  end
  
  test "cannot create a user with a date of birth in the future" do
      user1 = User.new(last_name: "Jones" , first_name: "Jennifer",  birthday: Date.new(2025,7,9))
      assert_not user1.valid?
  end
  
   
  test " can create a user when first_name, last_name and birthday in the past are specified"  do
        user1 = User.new(last_name: "Jones" , first_name: "Jennifer",  birthday: Date.new(2024,7,9))
        assert user1.valid?
   end 
  
  test "cannot create a user with a date of birth not in the past 100 years" do
      user1 = User.new(last_name: "Dickens" , first_name: "Charles",  birthday: Date.new(1812,7,7))
      assert_not user1.valid?
   end	  
end
