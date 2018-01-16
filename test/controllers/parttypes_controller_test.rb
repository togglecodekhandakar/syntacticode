require 'test_helper'

class ParttypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parttype = parttypes(:one)
  end

  test "should get index" do
    get parttypes_url
    assert_response :success
  end

  test "should get new" do
    get new_parttype_url
    assert_response :success
  end

  test "should create parttype" do
    assert_difference('Parttype.count') do
      post parttypes_url, params: { parttype: { parttype_id: @parttype.parttype_id, parttype_name: @parttype.parttype_name } }
    end

    assert_redirected_to parttype_url(Parttype.last)
  end

  test "should show parttype" do
    get parttype_url(@parttype)
    assert_response :success
  end

  test "should get edit" do
    get edit_parttype_url(@parttype)
    assert_response :success
  end

  test "should update parttype" do
    patch parttype_url(@parttype), params: { parttype: { parttype_id: @parttype.parttype_id, parttype_name: @parttype.parttype_name } }
    assert_redirected_to parttype_url(@parttype)
  end

  test "should destroy parttype" do
    assert_difference('Parttype.count', -1) do
      delete parttype_url(@parttype)
    end

    assert_redirected_to parttypes_url
  end
end
