require 'rails_helper'

RSpec.describe 'UBS API', type: :request do

  let!(:ubs) { create_list(:ubs, 10) }
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
end
