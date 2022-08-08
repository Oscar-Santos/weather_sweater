require 'rails_helper'

RSpec.describe Restaurant do
  it 'returns restaurant details' do
    data = {:id=>"kQxM1xlaZfQmXpKaqMTNnw",
    :alias=>"wonderful-bistro-pueblo",
    :name=>"Wonderful Bistro",
    :image_url=>"https://s3-media1.fl.yelpcdn.com/bphoto/HqKiK_Ju61fC4nSFq_fgHg/o.jpg",
    :is_closed=>false,
    :url=>
     "https://www.yelp.com/biz/wonderful-bistro-pueblo?adjust_creative=Zi9YoufBf5l9NB1MfG7EWQ&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Zi9YoufBf5l9NB1MfG7EWQ",
    :review_count=>81,
    :categories=>[{:alias=>"chinese", :title=>"Chinese"}],
    :rating=>4.0,
    :coordinates=>{:latitude=>38.319366, :longitude=>-104.616623},
    :transactions=>["delivery"],
    :price=>"$$",
    :location=>
     {:address1=>"4602 N Elizabeth St",
      :address2=>"Ste 120",
      :address3=>"",
      :city=>"Pueblo",
      :zip_code=>"81008",
      :country=>"US",
      :state=>"CO",
      :display_address=>["4602 N Elizabeth St", "Ste 120", "Pueblo, CO 81008"]},
    :phone=>"+17195440233",
    :display_phone=>"(719) 544-0233",
    :distance=>6632.28027227077}

  pueblo_restaurant = Restaurant.new(data)
    expect(pueblo_restaurant).to be_a(Restaurant)


    expect(pueblo_restaurant.name).to eq("Wonderful Bistro")
    expect(pueblo_restaurant.address).to eq("4602 N Elizabeth St, Ste 120, Pueblo, CO 81008")

    expect(pueblo_restaurant).to_not eq('greek')
    expect(pueblo_restaurant).to_not eq('4022 main st denver, co 80202')
  end
end
