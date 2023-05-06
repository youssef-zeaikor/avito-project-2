require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(nom: "prenom1 Nom1",
                                 email: "prenom1@example.com",
                                password: "pppppp")
 end

  test"nom doit etre present" do
    @user.nom = ""
    assert_not @user.valid?
  end
  test"email doit etre present" do
    @user.email = ""
     assert_not @user.valid?
  end
#length validation
test "nom ne doit pas etre trop long" do
  @user.nom = "a" * 51
  assert_not @user.valid?
end
test"email ne doit pas etre trop long" do
    @user.email = "a" * 244 + "@exemple.com"
     assert_not @user.valid?
  end
#here


test "email validation doit accepter les emails valides" do
  valid_addresses = %w[a@example.com AAA@example.COM]
  valid_addresses.each do |valid_address|
    @user.email = valid_address
    assert @user.valid?, "#{valid_address.inspect}"
  end
end
  
end
