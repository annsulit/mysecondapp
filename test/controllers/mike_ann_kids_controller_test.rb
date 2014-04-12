require 'test_helper'

class MikeAnnKidsControllerTest < ActionController::TestCase
  setup do
    @mike_ann_kid = mike_ann_kids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mike_ann_kids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mike_ann_kid" do
    assert_difference('MikeAnnKid.count') do
      post :create, mike_ann_kid: { age: @mike_ann_kid.age, first_name: @mike_ann_kid.first_name, last_name: @mike_ann_kid.last_name }
    end

    assert_redirected_to mike_ann_kid_path(assigns(:mike_ann_kid))
  end

  test "should show mike_ann_kid" do
    get :show, id: @mike_ann_kid
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mike_ann_kid
    assert_response :success
  end

  test "should update mike_ann_kid" do
    patch :update, id: @mike_ann_kid, mike_ann_kid: { age: @mike_ann_kid.age, first_name: @mike_ann_kid.first_name, last_name: @mike_ann_kid.last_name }
    assert_redirected_to mike_ann_kid_path(assigns(:mike_ann_kid))
  end

  test "should destroy mike_ann_kid" do
    assert_difference('MikeAnnKid.count', -1) do
      delete :destroy, id: @mike_ann_kid
    end

    assert_redirected_to mike_ann_kids_path
  end
end
