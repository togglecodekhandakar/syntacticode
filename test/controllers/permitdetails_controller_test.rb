require 'test_helper'

class PermitdetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @permitdetail = permitdetails(:one)
  end

  test "should get index" do
    get permitdetails_url
    assert_response :success
  end

  test "should get new" do
    get new_permitdetail_url
    assert_response :success
  end

  test "should create permitdetail" do
    assert_difference('Permitdetail.count') do
      post permitdetails_url, params: { permitdetail: { commonquestion_text: @permitdetail.commonquestion_text, permitdetail_id: @permitdetail.permitdetail_id, question_text: @permitdetail.question_text, strreply: @permitdetail.strreply } }
    end

    assert_redirected_to permitdetail_url(Permitdetail.last)
  end

  test "should show permitdetail" do
    get permitdetail_url(@permitdetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_permitdetail_url(@permitdetail)
    assert_response :success
  end

  test "should update permitdetail" do
    patch permitdetail_url(@permitdetail), params: { permitdetail: { commonquestion_text: @permitdetail.commonquestion_text, permitdetail_id: @permitdetail.permitdetail_id, question_text: @permitdetail.question_text, strreply: @permitdetail.strreply } }
    assert_redirected_to permitdetail_url(@permitdetail)
  end

  test "should destroy permitdetail" do
    assert_difference('Permitdetail.count', -1) do
      delete permitdetail_url(@permitdetail)
    end

    assert_redirected_to permitdetails_url
  end
end
