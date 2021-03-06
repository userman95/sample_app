require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get signup_path
    assert_response :success
  end

  def setup
    @user = users(:michael)
    @other_user = users(:archer)
  end

  # test "should redirect edit when not logged in" do
  #   log_in_as(@other_user)
  #   get edit_user_path(@user)
  #   assert_not flash.empty?
  #   puts login_url
  #   assert_redirected_to login_url
  # end
  #
  # test "should redirect update when not logged in" do
  #   log_in_as(@other_user)
  #   patch user_path(@user), params: { user: { name: @user.name,
  #                                             email: @user.email } }
  #   assert_not flash.empty?
  #   assert_redirected_to login_url
  # end

end
