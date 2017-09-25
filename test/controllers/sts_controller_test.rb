require 'test_helper'

class StsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @st = sts(:one)
  end

  test "should get index" do
    get sts_url
    assert_response :success
  end

  test "should get new" do
    get new_st_url
    assert_response :success
  end

  test "should create st" do
    assert_difference('St.count') do
      post sts_url, params: { st: { number1: @st.number1, numder2: @st.numder2 } }
    end

    assert_redirected_to st_url(St.last)
  end

  test "should show st" do
    get st_url(@st)
    assert_response :success
  end

  test "should get edit" do
    get edit_st_url(@st)
    assert_response :success
  end

  test "should update st" do
    patch st_url(@st), params: { st: { number1: @st.number1, numder2: @st.numder2 } }
    assert_redirected_to st_url(@st)
  end

  test "should destroy st" do
    assert_difference('St.count', -1) do
      delete st_url(@st)
    end

    assert_redirected_to sts_url
  end
end
