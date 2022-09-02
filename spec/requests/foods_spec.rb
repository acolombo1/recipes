require 'rails_helper'

RSpec.describe 'Foods', type: :request do
  describe 'GET /index' do
    it 'Foods index: returns http status: redirection (302)' do
      get '/foods'
      expect(response).to have_http_status(302)
    end
  end
end
