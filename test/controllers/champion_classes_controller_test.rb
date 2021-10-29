require "test_helper"

class ChampionClassesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get champion_classes_index_url
    assert_response :success
  end

  test "should get show" do
    get champion_classes_show_url
    assert_response :success
  end
end
