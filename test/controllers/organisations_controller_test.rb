require 'test_helper'

class OrganisationsControllerTest < ActionController::TestCase
  setup do
    @organisation = organisations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organisations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organisation" do
    assert_difference('Organisation.count') do
      post :create, organisation: { description: @organisation.description, domain_type_id: @organisation.domain_type_id, name: @organisation.name, shortname: @organisation.shortname, sub_domain_type_id: @organisation.sub_domain_type_id }
    end

    assert_redirected_to organisation_path(assigns(:organisation))
  end

  test "should show organisation" do
    get :show, id: @organisation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organisation
    assert_response :success
  end

  test "should update organisation" do
    patch :update, id: @organisation, organisation: { description: @organisation.description, domain_type_id: @organisation.domain_type_id, name: @organisation.name, shortname: @organisation.shortname, sub_domain_type_id: @organisation.sub_domain_type_id }
    assert_redirected_to organisation_path(assigns(:organisation))
  end

  test "should destroy organisation" do
    assert_difference('Organisation.count', -1) do
      delete :destroy, id: @organisation
    end

    assert_redirected_to organisations_path
  end
end
