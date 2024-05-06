require "test_helper"

class KurunziShopControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kurunzi_shop_index_url
    assert_response :success
  end

  test "should get show" do
    get kurunzi_shop_show_url
    assert_response :success
  end
end
