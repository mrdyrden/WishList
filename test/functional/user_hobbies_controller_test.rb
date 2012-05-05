require 'test_helper'

class UserHobbiesControllerTest < ActionController::TestCase
  setup do
    @user_hobby = user_hobbies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_hobbies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_hobby" do
    assert_difference('UserHobby.count') do
      post :create, :user_hobby => { :hobby_id => @user_hobby.hobby_id, :user_id => @user_hobby.user_id }
    end

    assert_redirected_to user_hobby_path(assigns(:user_hobby))
  end

  test "should show user_hobby" do
    get :show, :id => @user_hobby
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @user_hobby
    assert_response :success
  end

  test "should update user_hobby" do
    put :update, :id => @user_hobby, :user_hobby => { :hobby_id => @user_hobby.hobby_id, :user_id => @user_hobby.user_id }
    assert_redirected_to user_hobby_path(assigns(:user_hobby))
  end

  test "should destroy user_hobby" do
    assert_difference('UserHobby.count', -1) do
      delete :destroy, :id => @user_hobby
    end

    assert_redirected_to user_hobbies_path
  end
end
