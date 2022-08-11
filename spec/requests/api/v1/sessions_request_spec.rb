require 'rails_helper'
RSpec.describe 'Session Request' do
  it 'allows user to login and start a session' do
    user = User.create(email: "pedro@gmail.com", password: "password", password_confirmation: "password")

    data_login = {
      "email": user.email,
      "password": user.password,
    }

    headers = { 'CONTENT_TYPE' => 'application/json', "Accept" => 'application/json' }
    post '/api/v1/sessions', headers: headers, params: JSON.generate(data_login)

    user = JSON.parse(response.body, symbolize_names: true)
    expect(response).to be_successful
    expect(response.status).to eq(200)
    expect(user[:data]).to have_key(:type)
    expect(user[:data]).to have_key(:id)
    expect(user[:data]).to have_key(:attributes)
    expect(user[:data][:attributes]).to have_key(:email)
    expect(user[:data][:attributes]).to have_key(:api_key)
    expect(user[:data][:attributes]).to_not have_key(:password)
    expect(user[:data][:attributes]).to_not have_key(:password_confirmation)
  end

  it 'returns invalid credentials when password does not match' do

    user = User.create(email: "pedro@gmail.com", password: "password", password_confirmation: "password")

    data_login = {
      "email": user.email,
      "password": "pass",
    }

    headers = { 'CONTENT_TYPE' => 'application/json', "Accept" => 'application/json' }
    post '/api/v1/sessions', headers: headers, params: JSON.generate(data_login)
    user = JSON.parse(response.body, symbolize_names: true)
    expect(response.status).to eq(200)
    expect(user).to have_key(:error)
    expect(user[:data]).to eq(nil)
  end

  it 'returns invalid credentials when email does not match' do

    user = User.create(email: "pedro@gmail.com", password: "password", password_confirmation: "password")

    data_login = {
      "email": "pedroarturo@gmail.com",
      "password": "password",
    }
    headers = { 'CONTENT_TYPE' => 'application/json', "Accept" => 'application/json' }
    post '/api/v1/sessions', headers: headers, params: JSON.generate(data_login)
    user = JSON.parse(response.body, symbolize_names: true)
    expect(response.status).to eq(200)
    expect(user).to have_key(:error)
    expect(user[:data]).to eq(nil)
  end

end
