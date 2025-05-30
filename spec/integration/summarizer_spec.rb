require 'swagger_helper'

RSpec.describe 'API::V1::Summarizer', type: :request do
  path '/api/v1/summarize' do
    post 'Summarize YouTube video' do
      tags 'Summarizer'
      consumes 'application/json'
      parameter name: :payload, in: :body, schema: {
        type: :object,
        properties: {
          youtube_url: { type: :string }
        },
        required: ['youtube_url']
      }

      response '200', 'summary returned' do
        let(:payload) { { youtube_url: 'https://www.youtube.com/watch?v=YOUR_VIDEO_ID' } }
        run_test!
      end
    end
  end
end
