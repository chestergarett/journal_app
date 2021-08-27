require "test_helper"

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(email: "default@email.com", username: "dEfault_user", password_digest: "default_password")
  end

  test "username is required" do
    user = User.new
    user.email = "test@email.com"
    password_digest = "test_pw"

    assert_not user.save, "saved the user without username"
  end

  test "username is unique" do
    @user.username = "dEfault_user"
    @user.save
    user2 = User.new(email: "default2@email.com", username: "default_user", password_digest: "default_password")

    assert_not user2.save, "saved the user with not unique username"
  end

  test "username is below minimum length" do
    @user.username = "de"
    @user.save

    assert_not @user.save, "saved the user below minimum length"
  end

  test "email is required" do
    user = User.new
    user.username = "test_username"
    password_digest = "test_pw"

    assert_not user.save, "saved the user without email"
  end

  test "email is unique" do
    @user.email = "dEfault2@email.com"
    @user.save
    user2 = User.new(email: "default2@email.com", username: "default2_user", password_digest: "default_password")

    assert_not user2.save, "saved the user with not unique email"
  end

  test "email is not the required format" do
    @user.email = "de"
    @user.save

    assert_not @user.save, "saved the user with incorrect email format"
  end

  test "password is required" do
    user = User.new
    user.username = "test_username"
    user.email = "test@email.com"

    assert_not user.save, "saved the user without password"
  end

  test "user should be associated to tweets" do
    assert @user.tweets.size
  end
end