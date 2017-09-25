require 'test_helper'

class SiteMControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get site_m_index_url
    assert_response :success
  end

  test "should get workpage" do
    get site_m_workpage_url
    assert_response :success
  end

end
