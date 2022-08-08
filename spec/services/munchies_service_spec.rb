require 'rails_helper'

RSpec.describe MunchiesService do
  it 'returns restaurant details', :vcr do
    restaurant = MunchiesService.get_destination_details('denver,co','chinese','pueblo,co')

    expect(restaurant).to be_a(Hash)

    expect(restaurant[:businesses].first).to have_key(:id)

    expect(restaurant[:businesses].first).to have_key(:alias)

    expect(restaurant[:businesses].first).to have_key(:name)

    expect(restaurant[:businesses].first).to have_key(:image_url)

    expect(restaurant[:businesses].first).to have_key(:is_closed)

    expect(restaurant[:businesses].first).to have_key(:url)

    expect(restaurant[:businesses].first).to have_key(:review_count)

    expect(restaurant[:businesses].first).to have_key(:categories)

    expect(restaurant[:businesses].first).to have_key(:rating)

    expect(restaurant[:businesses].first).to have_key(:coordinates)

    expect(restaurant[:businesses].first).to have_key(:transactions)

    expect(restaurant[:businesses].first).to have_key(:price)

    expect(restaurant[:businesses].first).to have_key(:location)
  end
end
