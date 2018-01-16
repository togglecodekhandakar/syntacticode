require 'test_helper'

class CommonquestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @commonquestion = commonquestions(:one)
  end

  test "should get index" do
    get commonquestions_url
    assert_response :success
  end

  test "should get new" do
    get new_commonquestion_url
    assert_response :success
  end

  test "should create commonquestion" do
    assert_difference('Commonquestion.count') do
      post commonquestions_url, params: { commonquestion: { answer_option_number: @commonquestion.answer_option_number, commonquestion_id: @commonquestion.commonquestion_id, options: @commonquestion.options, question_text: @commonquestion.question_text } }
    end

    assert_redirected_to commonquestion_url(Commonquestion.last)
  end

  test "should show commonquestion" do
    get commonquestion_url(@commonquestion)
    assert_response :success
  end

  test "should get edit" do
    get edit_commonquestion_url(@commonquestion)
    assert_response :success
  end

  test "should update commonquestion" do
    patch commonquestion_url(@commonquestion), params: { commonquestion: { answer_option_number: @commonquestion.answer_option_number, commonquestion_id: @commonquestion.commonquestion_id, options: @commonquestion.options, question_text: @commonquestion.question_text } }
    assert_redirected_to commonquestion_url(@commonquestion)
  end

  test "should destroy commonquestion" do
    assert_difference('Commonquestion.count', -1) do
      delete commonquestion_url(@commonquestion)
    end

    assert_redirected_to commonquestions_url
  end
end
