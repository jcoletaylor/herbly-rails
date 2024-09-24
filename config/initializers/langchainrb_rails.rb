# frozen_string_literal: true

LangchainrbRails.configure do |config|
  config.vectorsearch = Langchain::Vectorsearch::Pgvector.new(
    llm: Langchain::LLM::OpenAI.new(api_key: Rails.application.credentials.dig(:openai, :api_key))
  )
end
