require 'test_helper'

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant = restaurants(:one)
  end

  test "should get index" do
    get restaurants_url
    assert_response :success
  end

  test "should get new" do
    get new_restaurant_url
    assert_response :success
  end

  test "should create restaurant" do
    assert_difference('Restaurant.count') do
      post restaurants_url, params: { restaurant: { category: @restaurant.category, city: @restaurant.city, latitude: @restaurant.latitude, longitude: @restaurant.longitude, meal_type: @restaurant.meal_type, name: @restaurant.name, picture_address: @restaurant.picture_address, pyszne_address: @restaurant.pyszne_address, street: @restaurant.street, website: @restaurant.website, zip_code: @restaurant.zip_code } }
    end

    assert_redirected_to restaurant_path(Restaurant.last)
  end

  test "should show restaurant" do
    get restaurant_url(@restaurant)
    assert_response :success
  end

  test "should get edit" do
    get edit_restaurant_url(@restaurant)
    assert_response :success
  end

  test "should update restaurant" do
    patch restaurant_url(@restaurant), params: { restaurant: { category: @restaurant.category, city: @restaurant.city, latitude: @restaurant.latitude, longitude: @restaurant.longitude, meal_type: @restaurant.meal_type, name: @restaurant.name, picture_address: @restaurant.picture_address, pyszne_address: @restaurant.pyszne_address, street: @restaurant.street, website: @restaurant.website, zip_code: @restaurant.zip_code } }
    assert_redirected_to restaurant_path(@restaurant)
  end

  test "should destroy restaurant" do
    assert_difference('Restaurant.count', -1) do
      delete restaurant_url(@restaurant)
    end

    assert_redirected_to restaurants_path
  end
end
