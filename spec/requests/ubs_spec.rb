require 'rails_helper'
require 'pry'

RSpec.describe 'UBS API', type: :request do

  let!(:ubs) { create_list(:ubs, 10) }
  let(:example_ubs) { ubs.first }
  let(:ubs_id) { ubs.first.id }

  describe 'GET /ubs' do
    before { get '/ubs' }

    it 'returns ubs' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /ubs/:id' do
    before { get "/ubs/#{ubs_id}" }

    context 'when the ubs exists' do
      it 'returns ubs basic info' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(ubs_id)
        expect(json['name']).to eq(example_ubs.name)
        expect(json['address']).to eq(example_ubs.address)
        expect(json['city']).to eq(example_ubs.city)
        expect(json['phone']).to eq(example_ubs.phone)
      end

      it 'returns ubs geolocation info' do
        expect(json['geocode']['lat']).to eq(example_ubs.geocode_lat)
        expect(json['geocode']['long']).to eq(example_ubs.geocode_long)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the ubs does not exist' do
      let(:ubs_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(json['message']).to match(/Couldn't find Ubs with 'id'=100/)
      end
    end
  end

end
