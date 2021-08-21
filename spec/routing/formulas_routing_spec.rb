# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FormulasController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/formulas').to route_to('formulas#index')
    end

    it 'routes to #show' do
      expect(get: '/formulas/1').to route_to('formulas#show', id: '1')
    end
  end
end
