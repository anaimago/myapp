require 'test_helper'

class UserTelephonesControllerTest < ActionController::TestCase
  setup do
    @user_telephone = user_telephones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_telephones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_telephone" do
    assert_difference('UserTelephone.count') do
      post :create, user_telephone: { phone_device: @user_telephone.phone_device, phone_number: @user_telephone.phone_number, phone_number_short: @user_telephone.phone_number_short, phone_type: @user_telephone.phone_type, state: @user_telephone.state, user_id: @user_telephone.user_id }
    end

    assert_redirected_to user_telephone_path(assigns(:user_telephone))
  end

  test "should show user_telephone" do
    get :show, id: @user_telephone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_telephone
    assert_response :success
  end

  test "should update user_telephone" do
    patch :update, id: @user_telephone, user_telephone: { phone_device: @user_telephone.phone_device, phone_number: @user_telephone.phone_number, phone_number_short: @user_telephone.phone_number_short, phone_type: @user_telephone.phone_type, state: @user_telephone.state, user_id: @user_telephone.user_id }
    assert_redirected_to user_telephone_path(assigns(:user_telephone))
  end

  test "should destroy user_telephone" do
    assert_difference('UserTelephone.count', -1) do
      delete :destroy, id: @user_telephone
    end

    assert_redirected_to user_telephones_path
  end
end
