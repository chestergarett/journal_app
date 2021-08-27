require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  
  test "should go to /users index page" do
    get users_path

    assert_response :success
  end

  test "should go to /users new page" do
    get new_user_path

    assert_response :success
  end

  test "should redirect to /users path after user create" do
    post create_user_path params: {user: {
                                    username: "test1", 
                                    email: "test@email.com", 
                                    password_digest: "test"}}

    assert_response :redirect
  end
end
