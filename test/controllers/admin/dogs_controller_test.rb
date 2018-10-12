require 'test_helper'

class Admin::DogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_dog = admin_dogs(:one)
  end

  test "should get index" do
    get admin_dogs_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_dog_url
    assert_response :success
  end

  test "should create admin_dog" do
    assert_difference('Admin::Dog.count') do
      post admin_dogs_url, params: { admin_dog: {  } }
    end

    assert_redirected_to admin_dog_url(Admin::Dog.last)
  end

  test "should show admin_dog" do
    get admin_dog_url(@admin_dog)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_dog_url(@admin_dog)
    assert_response :success
  end

  test "should update admin_dog" do
    patch admin_dog_url(@admin_dog), params: { admin_dog: {  } }
    assert_redirected_to admin_dog_url(@admin_dog)
  end

  test "should destroy admin_dog" do
    assert_difference('Admin::Dog.count', -1) do
      delete admin_dog_url(@admin_dog)
    end

    assert_redirected_to admin_dogs_url
  end
end
