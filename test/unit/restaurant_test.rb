require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  context "A restaurant in a string" do
    setup do
      expectedyelp = File.open("test/fixtures/yelp.json").read
      Yelp::Client.any_instance.stubs(:outdoor_restaurant_search).returns(expectedyelp)
      Restaurant.outdoor_restaurant_search(40.733447874932146,-73.9998494580509,"New York")
      @restaurant = Restaurant.all
      binding.pry
    end

    should "use Yelp to fine outdoor restaurants around a location" do
      assert_equal "Vol de Nuit",  @restaurant.first.name
      assert_equal "New York",  @restaurant.first.city
      assert_equal "4.0",  @restaurant.first.yelp_rating
      assert_equal "148 W 4th St",  @restaurant.first.address
      assert_equal "http://s3-media4.ak.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png",  @restaurant.first.yelp_stars_url
      assert_equal "Lounges", @restaurant.first.category
    end



      # assert_equal "gobo-new-york", @restaurant.yelp_search(@restaurant.first.name,@restaurant.first.latitude, @restaurant.first.longitude, @restaurant.first.city)

    # assert_equal "gobo-new-york", @yelprestaurant.yelp_venue("gobo-new-york")
    # end



    # should "pull in information in foursquare" do
    #   assert_equal "Gobo - Food for the Five Senses",  @restaurant.first.name
    #   # assert_equal "4adf5654f964a520977921e3",  @restaurant.first.foursquare_identifier
      # assert_equal "401 Avenue of The Americas",  @restaurant.first.address
      # assert_equal 40.733447874932146, @restaurant.first.latitude
      # assert_equal -73.9998494580509, @restaurant.first.longitude
      # assert_equal "New York", @restaurant.first.city
      # assert_equal 8.95, @restaurant.first.foursquare_rating
      # assert_equal "https://irs3.4sqi.net/img/general/original/136370_qBdsSi_Okw9YOasL48ZhzjE0ugRuOUWZzvd22CPturQ.jpg", @restaurant.first.image_url
    # end
  # end
end

end
