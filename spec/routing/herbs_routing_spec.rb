# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HerbsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/herbs').to route_to('herbs#index')
    end

    it 'routes to #show' do
      expect(get: '/herbs/1').to route_to('herbs#show', id: '1')
    end
  end
end
