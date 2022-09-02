require 'rails_helper'

RSpec.describe 'Recipes', type: :request do
  describe 'GET /index' do
    it 'Recipes index: returns http status: redirection (302)' do
      get '/recipes'
      expect(response).to have_http_status(302)
    end
  end
  describe 'GET /show' do
    it 'Recipes show: returns http status: redirection (302)' do
      get '/recipes/1'
      expect(response).to have_http_status(302)
    end
  end
end
