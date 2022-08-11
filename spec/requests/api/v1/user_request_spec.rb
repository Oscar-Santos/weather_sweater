
require 'rails_helper'

RSpec.describe 'Users Request' do
  it 'can successufully create a User' do
    data = {
      "email": "pedro@gmail.com",
      "password": "password",
      "password_confirmation": "password"
    }
    headers = { 'CONTENT_TYPE' => 'application/json', "Accept" => 'application/json' }

    post '/api/v1/users', headers: headers, params: JSON.generate(data)

    user = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
    expect(user[:data]).to have_key(:type)
    expect(user[:data]).to have_key(:id)
    expect(user[:data]).to have_key(:attributes)
    expect(user[:data][:attributes]).to have_key(:email)
    expect(user[:data][:attributes]).to have_key(:api_key)
    expect(user[:data][:attributes]).to_not have_key(:password)
    expect(user[:data][:attributes]).to_not have_key(:password_confirmation)
  end

  it 'returns 400 when passwords do not match' do

    data = {
      "email": "pedro@gmail.com",
      "password": "passwo",
      "password_confirmation": "password"
    }

    headers = { 'CONTENT_TYPE' => 'application/json', "Accept" => 'application/json' }
    post '/api/v1/users', headers: headers, params: JSON.generate(data)

    expect(response.status).to eq(400)
  end

  it 'returns 400 when request is missing attributes' do
    data = {
      "email": "pedro@gmail.com",
      "password_confirmation": "password"
    }
    headers = { 'CONTENT_TYPE' => 'application/json', "Accept" => 'application/json' }
    post '/api/v1/users', headers: headers, params: JSON.generate(data)

    expect(response.status).to eq(400)
  end

  it 'returns error message if email already exists' do
    user = User.create!(email: "whatever@example.com", password: "password", password_confirmation: "password")

   headers = { 'Content-Type': 'application/json' }
   params = {
     "email": "whatever@example.com",
     "password": "password",
     "password_confirmation": "password"
   }
   post '/api/v1/users', headers: headers, params: JSON.generate(params)

   invalid = JSON.parse(response.body, symbolize_names: true)

   expect(response).to have_http_status(400)
   expect(invalid[:error]).to eq('email already exists')
  end
end
