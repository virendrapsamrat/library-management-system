require 'test_helper'

class AbcdesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @abcde = abcdes(:one)
  end

  test "should get index" do
    get abcdes_url
    assert_response :success
  end

  test "should get new" do
    get new_abcde_url
    assert_response :success
  end

  test "should create abcde" do
    assert_difference('Abcde.count') do
      post abcdes_url, params: { abcde: { email: @abcde.email, login: @abcde.login, name: @abcde.name } }
    end

    assert_redirected_to abcde_url(Abcde.last)
  end

  test "should show abcde" do
    get abcde_url(@abcde)
    assert_response :success
  end

  test "should get edit" do
    get edit_abcde_url(@abcde)
    assert_response :success
  end

  test "should update abcde" do
    patch abcde_url(@abcde), params: { abcde: { email: @abcde.email, login: @abcde.login, name: @abcde.name } }
    assert_redirected_to abcde_url(@abcde)
  end

  test "should destroy abcde" do
    assert_difference('Abcde.count', -1) do
      delete abcde_url(@abcde)
    end

    assert_redirected_to abcdes_url
  end
end
