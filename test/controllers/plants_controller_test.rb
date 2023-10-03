require "test_helper"

class PlantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plant = plants(:one)
  end

  test "should get index" do
    get plants_url
    assert_response :success
  end

  test "should get new" do
    get new_plant_url
    assert_response :success
  end

  test "should create plant" do
    assert_difference("Plant.count") do
      post plants_url, params: { plant: { last_watering: @plant.last_watering, name: @plant.name, plant_type: @plant.plant_type } }
    end

    assert_redirected_to plant_url(Plant.last)
  end

  test "should show plant" do
    get plant_url(@plant)
    assert_response :success
  end

  test "should get edit" do
    get edit_plant_url(@plant)
    assert_response :success
  end

  test "should update plant" do
    patch plant_url(@plant), params: { plant: { last_watering: @plant.last_watering, name: @plant.name, plant_type: @plant.plant_type } }
    assert_redirected_to plant_url(@plant)
  end

  test "should destroy plant" do
    assert_difference("Plant.count", -1) do
      delete plant_url(@plant)
    end

    assert_redirected_to plants_url
  end
end
