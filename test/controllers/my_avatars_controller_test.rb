require 'test_helper'

class MyAvatarsControllerTest < ActionController::TestCase
  setup do
    @my_avatar = my_avatars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_avatars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_avatar" do
    assert_difference('MyAvatar.count') do
      post :create, my_avatar: { health_xp: @my_avatar.health_xp, intelligence: @my_avatar.intelligence, stamina_xp: @my_avatar.stamina_xp, strength_xp: @my_avatar.strength_xp, user_id: @my_avatar.user_id }
    end

    assert_redirected_to my_avatar_path(assigns(:my_avatar))
  end

  test "should show my_avatar" do
    get :show, id: @my_avatar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_avatar
    assert_response :success
  end

  test "should update my_avatar" do
    patch :update, id: @my_avatar, my_avatar: { health_xp: @my_avatar.health_xp, intelligence: @my_avatar.intelligence, stamina_xp: @my_avatar.stamina_xp, strength_xp: @my_avatar.strength_xp, user_id: @my_avatar.user_id }
    assert_redirected_to my_avatar_path(assigns(:my_avatar))
  end

  test "should destroy my_avatar" do
    assert_difference('MyAvatar.count', -1) do
      delete :destroy, id: @my_avatar
    end

    assert_redirected_to my_avatars_path
  end
end
