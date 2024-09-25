# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Herbs' do
  def load_herbs
    @herb_names = %w[GanCao RenShen DangShen GuiZhi ShengDiHuang MaiMenDong EJiao HuoMaRen ShengJiang DaZao ZhiFuZi]
    loader = Loader::MainLoader.new
    @herb_names.each do |herb_name|
      loader.load_one_herb(herb_name)
    end
  end

  describe 'GET /herbs' do
    it 'is able to get herbs with a valid response' do
      load_herbs
      get herbs_url(limit: 100), as: :json
      expect(response).to have_http_status(:success)
      expect(response.content_type).to match(a_string_including('application/json'))
      json_response = response.parsed_body.deep_symbolize_keys
      response_herb_names = json_response[:data].pluck(:name)
      expect(response_herb_names).to include(*@herb_names)
    end
  end

  describe 'GET /herbs/:id' do
    it 'is able to get a single herb with a valid response' do
      load_herbs
      herb = Herb.first
      get herb_url(herb), as: :json
      expect(response).to have_http_status(:success)
      expect(response.content_type).to match(a_string_including('application/json'))
      json_response = response.parsed_body.deep_symbolize_keys
      response_herb_name = json_response[:name]
      expect(@herb_names).to include(response_herb_name)
    end
  end
end
